import serial
import time
import socket
import select

#added function for Timeout!
def udp_read_timout(udp_socket,timeout=5):
    #do not block while reading
    udp_socket.setblocking(0)
    ready = select.select([udp_socket],[],[],timeout)
    response = "timeout reached"
    #response = "6f0a513700000fe023282328"
    if ready[0]:
        response = udp_socket.recvfrom(1024)[0].hex()
    #return to basic blocking mode
    udp_socket.setblocking(1)
    return response


class udp2spi:
    """IIC udp2SPI interface for FPGAs """
    #140.78.161.39
    def __init__(self, ownip, port, slaveip):
        self.socket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
        self.slaveip = slaveip
        self.port = port
        self.ownip = ownip
        self.socket.bind((ownip, port))
        self.pin1 = 0
        self.pin2 = 0

        print("UDP server up and listening")

    def write_merge(self,data: bytes, readMode: int):

        # build word
        if readMode == 1:
            startbyte = bytes('T','utf-8')
        else:
            startbyte = bytes('S','utf-8')
        writebytes = bytes(startbyte + data)
        print("Bytes to write determined as: 0x" + writebytes.hex())
        
        #write command
        print("Write Files to UDP")
        self.socket.sendto(writebytes,(self.slaveip,self.port))
        print("Wait for response...")

        #1 sec timeout
        response = udp_read_timout(self.socket,1)
    
        #read out
        print("Response is: 0x" + response)
        return response

        
    # MODE1
    # Structure to send:
    # ['S'] + [ 1Byte Addr ] + [ 2Byte Data ]
    # SPI WRITE
    # addr = 1Byte Addres
    # data = 2Byte Data
    def write(self,addr: bytes,data: bytes):

        # build word
        startbyte = bytes('S','utf-8')
        writebytes = bytes(startbyte)
        writebytes = bytes(writebytes + addr)
        writebytes = bytes(writebytes + data)
        print("Bytes to write determined as: 0x" + writebytes.hex())
        
        #write command
        print("Write Files to UDP")
        self.socket.sendto(writebytes,(self.slaveip,self.port))
        print("Wait for response...")

        #1 sec timeout
        response = udp_read_timout(self.socket,1)
    
        #read out
        print("Response is: 0x" + response)
        return response
    
    # MODE1
    # Structure to send:
    # ['S'] + [ 1Byte Addr ] + [ 2Byte Data ]
    # SPI WRITE
    # addr = 1Byte Addres
    # data = 2Byte Data
    def writesilent(self,addr: bytes,data: bytes):
        # build word
        startbyte  = bytes('S','utf-8')
        writebytes = bytes(startbyte + addr + data)       
        #write command        
        self.socket.sendto(writebytes,(self.slaveip,self.port))
        response = udp_read_timout(self.socket,1)        
        #read out
        return response
            
        

    # MODE2
    # Structure to reset/init:
    # ['I'] 
    # SPI WRITE
    # return:
    # ['I']
    def init(self):
        # build word
        writebytes = bytes('I','utf-8')
        print("Bytes to write determined as: 0x" + writebytes.hex())

        #write command
        print("Write Files to UDP")
        self.socket.sendto(writebytes,(self.slaveip,self.port))
        print("Wait for response...")
        response = udp_read_timout(self.socket,1)        
        #read out
        
        if response==bytes('I','utf-8').hex():
            print("Response is OK: 0x" + response)
        else:
            print("!!INIT FAILED!! Response was: 0x" + response)
            return 0        
        return response

    def set_pin(self, pin=1, value=0):
        if (value==1 or value == 0):
            if pin==1:
                self.pin1 = value
            elif pin==2:
                self.pin2 = value
            else:
                return "Someting is wrong"
        else:
            return "Someting is wrong"
            
        # generate mask
        mask = self.pin1*1+self.pin2*2
        
        # build word
        writebytes = bytes('W','utf-8') + mask.to_bytes(1,'big')
        print("Bytes to write determined as: 0x" + writebytes.hex())

        #write command
        print("Write Files to UDP")
        self.socket.sendto(writebytes,(self.slaveip,self.port))
        print("Wait for response...")
        response = udp_read_timout(self.socket,1)   
        #read out
        
        if response==bytes('I','utf-8'):
            print("Response is OK: 0x" + response)
        else:
            print("Response was: 0x" + response)
            return 0        
        return response

    #closes the socket
    def close(self):
        return self.socket.close()
	
