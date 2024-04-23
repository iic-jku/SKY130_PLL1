from uart2spi import *
from udp2spi import *
import time
import os
import pandas as pd
import matplotlib.pyplot as plt

nr_channels = 16
nr_samples = 10
results_path = "./results"

#read data from udp
int1 = udp2spi("140.78.161.39", 57345, "140.78.161.81")
data_set = int1.record_samples_channels(nr_channels, nr_samples)
int1.close()
if (data_set != -1):
    #write raw data to file
    act_date_time = time.strftime("%Y%m%d-%H%M%S")
    if not os.path.exists(results_path):
        os.mkdir(results_path)
    file_name_raw = results_path+ "/" + str(nr_channels) + "_CH_" + act_date_time + "_raw.txt"
    file = open(file_name_raw, "w")
    for i in range(len(data_set)):
        file.write(data_set[i] + "\n")
    file.close()
    print("Recorded raw samples saved in file " + file_name_raw);
    
    #split data to 2-dim array
    data_set_splitted = [["XXXX" for i in range(16)] for j in range(len(data_set))]
    for i in range(len(data_set)) :
        for j in range(nr_channels) :
            channel_index = int(data_set[i][j*6:(j*6+2)], 16)-32
            if (channel_index >= 0 and channel_index < 16) :
                data_set_splitted[i][channel_index] = int(data_set[i][(j*6+2):(j*6+6)], 16)

    #write data to csv
    file_name = results_path+ "/" + str(nr_channels) + "_CH_" + act_date_time + ".csv"
    data_frame = pd.DataFrame(data_set_splitted)
    data_frame.to_csv(file_name, index=False, header=True, sep=';')
    print("Recorded samples per channel saved in CSV file " + file_name)
