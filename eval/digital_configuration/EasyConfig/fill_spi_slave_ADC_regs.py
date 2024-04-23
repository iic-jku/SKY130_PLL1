from uart2spi import *
from udp2spi import *


#read data from udp
int1 = udp2spi("140.78.161.39", 57345, "140.78.161.81")

for i in range(16) :
    address_bytes = int(i).to_bytes(1, byteorder='big', signed=False)
    data_bytes = int(i).to_bytes(2, byteorder='big', signed=False)
    int1.write(address_bytes, data_bytes)

int1.close()
