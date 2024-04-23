# ----------------------------------------------------------------------------------
# -- Company: IIC
# -- Engineer: Patrick Fath
# -- Date: 19.01.2023
# -- Module Name: EasyConfig
# -- Project Name: SPI_Interface
# -- Revision: V1.0
# -- Description: TO_SENSO1
# ---------------------------------------------------------------------------------
# -- TODO: -Introduce Nr of Addr. Bits + Nr. of Register maybe could be set over GUI?
# --       -Position of ReadBit maybe could be set over GUI?
from tkinter import *
import tkinter
import numpy as np
import pandas as pd
from tkinter import ttk
import tk as tk
# from easyconfig_new import *
from udp2spi import *
from typing import TypeVar, Generic
import os
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import (FigureCanvasTkAgg, NavigationToolbar2Tk)

nr_addr_bits = 6 # Nr. of Addr. Bits
read_flag_pos = 1 << (nr_addr_bits - 1) # Read Flag on MSB of Addr.
nr_all_registers = 1 << (nr_addr_bits - 1) # Nr. of all possible registers
nr_store_registers = 6
nr_bits = 16 # Nr. of bits --> word length
results_path = "./results"

def main():
    print("--------------------------------------------------------------------------------------------")
    global root
    global store_register
    global store_register_en
    # Generate the register
    data = load_data()
    store_register = gen_register(data)
    store_register_en = gen_register_en(data)
    # Generate GUI
    root = Tk()
    root.title("EasyConfig")
    root.geometry('760x600')
    gui_factory(store_register, store_register_en)
    root.mainloop()
    
# Generate the register entries
def gen_register(data):
    store_register = np.hsplit(data[:,0], nr_store_registers)
    return store_register

# Generate the register enable entries
def gen_register_en(data):
    store_register_en = np.hsplit(data[:,1], nr_store_registers)
    return store_register_en

def gui_factory(store_register, store_register_en):
    gen_tabs()
    gen_checkboxes()
    gen_dropdown()
    gen_widgets()
    gen_settings()



def gen_tabs():
    global tab1
    global tab1_1
    global tab2
    global tab3
    global tab4
    tab_control = ttk.Notebook(root)
    tab1 = ttk.Frame(tab_control)
    tab1_1 = ttk.Frame(tab_control)
    tab2 = ttk.Frame(tab_control)
    tab3 = ttk.Frame(tab_control)
    tab4 = ttk.Frame(tab_control)
    tab_control.add(tab1, text='Checkboxes')
    tab_control.add(tab2, text='Dropdown')
    tab_control.add(tab3, text='Widgets')
    tab_control.add(tab4, text='Settings')
    tab_control.pack(expand=1, fill="both")





def gen_checkboxes():
    gen_boxes(store_register, store_register_en)
    global read_flag
    read_flag = IntVar()
    read_flag.set(0)
    ttk.Checkbutton(tab1, text="Read Only", variable=read_flag).place(x=490, y=525)
    Button(tab1, text="Print All Regs", command=print_all_regs).place(x=400, y=525)
    Button(tab1, text="Read Regs", command=read_regs).place(x=330, y=525)
    Button(tab1, text="Update Regs", command=update_regs).place(x=240, y=525)
    Button(tab1, text="Reset SPI", command=reset_spi).place(x=170, y=525)
    Button(tab1, text="Reset UDP", command=reset_udp).place(x=100, y=525)
    Button(tab1, text="Connect UDP", command=lambda: (connect_udp(ownip.get(), int(port.get()), slaveip.get()))).place(x=10, y=525)
    # Set and get for the register
    Button(tab1, text="Save", command=save_stats).place(x=580, y=525)
    Button(tab1, text="Recall", command=recall_stats).place(x=620, y=525)
    Button(tab1, text="Uncheck All", command=reset).place(x=670, y=525)
    Label(tab1, text="TX:").place(x=10, y=469)
    Label(tab1, text="RX:").place(x=10, y=489)

def gen_boxes(store_register, store_register_en):  # Generate the checkboxes
    global reg
    global cb
    cb = ttk.LabelFrame(tab1, height=440, width=740, text='Register', labelanchor=N, relief='groove')
    cb.place(x=10, y=15)
    reg = [[] * nr_bits for i in range(nr_store_registers)]
    for j in range(nr_store_registers):
        for i, checkboxname in enumerate(store_register[j].tolist()):
            reg[j].append(IntVar())
            box0 = ttk.Checkbutton(cb, text=checkboxname, variable=reg[j][i])
            reg[j][i].set(store_register_en[j][i])
            box0.place(x=-100 +120 * (j+1), y=5 + i * 25)
    return reg
    

def gen_dropdown():
    Label(tab2, text="Register 0").place(x=50, y=25)
    reg0 = ttk.Combobox(tab2, state="readonly",values=["0V","0.25V", "0.5V", "0.75V", "1V", "1.25V", "1.5V", "1.75V", "2V"])
    reg0.place(x= 50, y= 50)
    Label(tab2, text="Register 1").place(x=250, y=25)
    reg1 = ttk.Combobox(tab2, state="readonly",values=["0V","0.25V", "0.5V", "0.75V", "1V", "1.25V", "1.5V", "1.75V", "2V"])
    reg1.place(x=250, y=50)
    Label(tab2, text="Register 2").place(x=450, y=25)
    reg2 = ttk.Combobox(tab2, state="readonly",values=["0V", "0.25V", "0.5V", "0.75V", "1V", "1.25V", "1.5V", "1.75V", "2V"])
    reg2.place(x=450, y=50)
    Label(tab2, text="Register 3").place(x=650, y=25)
    reg3 = ttk.Combobox(tab2, state="readonly",values=["0V", "0.25V", "0.5V", "0.75V", "1V", "1.25V", "1.5V", "1.75V", "2V"])
    reg3.place(x=650, y=50)
    Label(tab2, text="Register 4").place(x=50, y=175)
    reg4 = ttk.Combobox(tab2, state="readonly",values=["0V", "0.25V", "0.5V", "0.75V", "1V", "1.25V", "1.5V", "1.75V", "2V"])
    reg4.place(x=50, y=200)
    Label(tab2, text="Register 5").place(x=250, y=175)
    reg5 = ttk.Combobox(tab2, state="readonly",values=["0V", "0.25V", "0.5V", "0.75V", "1V", "1.25V", "1.5V", "1.75V", "2V"])
    reg5.place(x=250, y=200)
    Label(tab2, text="Register 6").place(x=450, y=175)
    reg6 = ttk.Combobox(tab2, state="readonly",values=["0V", "0.25V", "0.5V", "0.75V", "1V", "1.25V", "1.5V", "1.75V", "2V"])
    reg6.place(x=450, y=200)
    Label(tab2, text="Register 7").place(x=650, y=175)
    reg7 = ttk.Combobox(tab2, state="readonly",values=["0V", "0.25V", "0.5V", "0.75V", "1V", "1.25V", "1.5V", "1.75V", "2V"])
    reg7.place(x=650, y=200)

def gen_widgets():
    # Widget sweep
    swp = ttk.LabelFrame(tab3, height=200, width=300, text='Sweep', relief='sunken')
    swp.place(x=20, y=15)
    Label(swp, text="Automatic sweep through all registers", borderwidth=2, relief="groove").place(x=10, y=10)
    Label(swp, text="Current register:").place(x=30, y=50)
    Label(swp, text="Current variable:").place(x=30, y=80)
    Label(swp, text="Delay:").place(x=30, y=110)
    Button(swp, text="Sweep", command=sweep).place(x=220, y=140)

    # Widget step-by-step
    sbs = ttk.LabelFrame(tab3, height=200, width=300, text='Step-by-Step', relief='sunken')
    sbs.place(x=330, y=15)
    Label(sbs, text="Step-by-Step through the registers", borderwidth=2, relief="groove").place(x=10, y=10)
    Label(sbs, text="Current register:").place(x=30, y=50)
    Label(sbs, text="Current variable:").place(x=30, y=80)
    Button(sbs, text="Step", command=step).place(x=235, y=140)


def gen_settings():
    global ownip, port, slaveip, com
    udp = ttk.LabelFrame(tab4, height=250, width=250, text='UDP', relief='sunken')
    udp.place(x=20, y=15)
    Label(udp, text="Own IP:").place(x=50, y=10)
    ownip = Entry(udp)
    ownip.insert (0, "140.78.161.39")
    ownip.place(x=50, y=30)
    Label(udp, text="PORT:").place(x=50, y=55)
    port = Entry(udp)
    port.insert (0, "57345")
    port.place(x=50, y=80)
    Label(udp, text="Slave IP:").place(x=50, y=105)
    slaveip = Entry(udp)
    slaveip.insert (0, "140.78.161.81")
    slaveip.place(x=50, y=130)





# logic
def update_regs():
    print('------------------------------------------------------------')
    print('-----------------------UPDATE REGISTERS---------------------')
    reg_to_str = get_stats()
    for n in range(nr_store_registers):
        Label(tab1, text="0x" + str_to_byte(reg_to_str[n]).hex()).place(x=50 + n * 120, y=468)
    try:
        recv_data = int1.write_merge(str_to_byte_array(reg_to_str), read_flag.get())
        for n in range(nr_store_registers):
            Label(tab1, text="0x"+recv_data[4*n:(4*n+4)]).place(x=50 + n * 120, y=488)
    except:
        for n in range(nr_store_registers):
            Label(tab1, text="NA").place(x=50 + n * 120, y=488)

def read_regs():
    print('------------------------------------------------------------')
    print('------------------------READ REGISTERS----------------------')
    reg_to_str = get_stats()
    for n in range(nr_store_registers):
        try:
            Label(tab1, text="0x" + str_to_byte(reg_to_str[n]).hex()).place(x=10 + (n+1) * 120, y=468)
            recv_data = int1.write(int_to_addr(n+read_flag_pos), str_to_byte(reg_to_str[n]))
            Label(tab1, text="0x" + recv_data).place(x=10 + (n+1) * 120, y=488)
        except:
            recv_data = "0"
            Label(tab1, text="NA").place(x=10 + (n+1) * 120, y=488)
        recv_data_bin = "{0:016b}".format(int(recv_data, 16)) #change to actual nr_bits!
        for k in range(nr_bits):
            reg[n][k].set(recv_data_bin[k])

def print_all_regs():
    print('------------------------------------------------------------')
    print('----------------READ AND PRINT ALL REGISTERS----------------')
    for n in range(nr_all_registers):
        try:
            print("Register " + str(n) +  " has: 0x" + int1.writesilent(int_to_addr(n+read_flag_pos), int('0b0', 2).to_bytes(2, byteorder='big', signed=False)))
        except:
            print("NA")

def update_plot():
    print('------------------------------------------------------------')
    print('------------------------UPDATE PLOT-------------------------')
    # the figure that will contain the plot
    fig = Figure(figsize = (10.5, 5), dpi = 100)
  
    # adding the subplot
    plot1 = fig.add_subplot(111)
  
    # plotting the graph
    plot1.plot([row[int(nr_channel_plot_entry.get())] for row in data_set_splitted])
  
    # creating the Tkinter canvas
    # containing the Matplotlib figure
    canvas = FigureCanvasTkAgg(fig,
                               master = str_box_plot)  
    canvas.draw()
  
    # placing the canvas on the Tkinter window
    canvas.get_tk_widget().pack()
  
    # creating the Matplotlib toolbar
    toolbar = NavigationToolbar2Tk(canvas,
                                   str_box_plot)
    toolbar.update()
  
    # placing the toolbar on the Tkinter window
    canvas.get_tk_widget().pack()
    plt.ion()
    canvas.flush_events()
    plot_res_label1["text"] = "Result: OK!"
    plot_res_label2["text"] = "Update: " + time.strftime("%H:%M:%S")

# OWNIP = '140.78.161.55', PORT = 57345, SLAVEIP = '140.78.161.81'
def connect_udp(ownip, port, slaveip):
    global int1
    int1 = udp2spi(ownip, port, slaveip)
    print(time.strftime('%H:%M:%S') + ": Connected to UDP")



def reset():
    for i in range(nr_store_registers):
        for j in range(nr_bits):
            reg[i][j].set(False)

def reset_udp():
    global int1
    int1.close()
    connect_udp(ownip.get(), int(port.get()), slaveip.get())

def reset_spi():
    int1.init()


# Do not use (Not finished yet)
def sweep():
    for i in range(nr_store_registers):
        for j in range(nr_bits):
            reg[i][j].set(True)
            time.sleep(3)
            update()
            reg[i][j].set(False)
            time.sleep(5)
            update()


# Do not use (Not finished yet)
def step():
    i = 1
    j = 1
    reg[i][j].set(True)
    update()
    i += 1
    j += 1


def get_stats():
    stats = [''] * nr_store_registers
    for n in range(nr_store_registers):
        tmp: str = ''
        for k in range(nr_bits):
            tmp += str(reg[n][k].get())
        stats[n] = tmp
    return stats


def save_stats():
    stats = np.array(reg)
    tmp = np.empty_like(stats)
    for i in range(nr_store_registers):
        for j in range(nr_bits):
            tmp[i][j] = stats[i][j].get()

    pd.DataFrame(tmp).to_csv('actConfig.csv', index=False, sep=';',
                             header=False)  # Change to current path of stats.csv


def recall_stats():
    stats = pd.read_csv('actConfig.csv', dtype=int, delimiter=';',
                        header=None)  # Change to current path of stats.csv
    stats_arr = np.array(stats.values)
    for i in range(nr_store_registers):
        for j in range(nr_bits):
            tmp = stats_arr[i][j]
            if tmp == 1:
                reg[i][j].set(True)
            else:
                reg[i][j].set(False)


# Load data from extern CSV (Names of the used registers)
def load_data():
    extern_data = pd.read_csv('regAllOff.csv', delimiter=';',
                              usecols=['Name', 'Enabled'],
                              skiprows=[1, 18, 35, 52, 69, 86, 103, 120, 137, 154, 171])  # Change to current Path of regTest.csv
    data = extern_data.to_numpy()
    return data


# Store data to CSV (Not used)
def save_data(data):
    pd.DataFrame(data).to_csv('actConfig.csv', index=False)


def str_to_byte(s: str):
    s = '0b' + s
    return int(s, 2).to_bytes(2, byteorder='big', signed=False)

def str_to_byte_array(s_array):
    b_array = bytes([0] * 0);
    for n in range(nr_store_registers):
        s_array_first = s_array[n][0:len(s_array[n])//2]
        s_array_second = s_array[n][len(s_array[n])//2 :]
        s = '0b' + s_array_first
        b_array += int(s, 2).to_bytes(1, byteorder='big', signed=False)
        s = '0b' + s_array_second
        b_array += int(s, 2).to_bytes(1, byteorder='big', signed=False)

    return b_array


def int_to_addr(x: int):
    return x.to_bytes(1, byteorder='big')


if __name__ == "__main__":
    main()
