import os
import matplotlib.pyplot as plt
import pandas as pd

filename = "1_CH_20230216-132720"
plot_channel_nr = range(0, 4, 1)
results_path = "./results"

df = pd.read_csv(results_path + "/" + filename + ".csv", sep=';', header=0)

for i in range(int(len(plot_channel_nr)/2)) :
    plt.figure(i+1)
    for j in range(2) :
        plt.subplot(2,1,j+1)
        plt.plot(df.iloc[:, plot_channel_nr[i*2+j]].values)
        plt.ylabel("Channel " + str(i*2+j+1))
        
plt.show()
