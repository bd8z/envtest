import matplotlib.pyplot as plt
import numpy as np
import sys

if __name__ == '__main__':
    uuidStr = sys.argv[1]
    plt.figure(figsize=(6,6))

    for i in range(5):
        plt.plot([1,2,3],[np.random.rand(),np.random.rand(),np.random.rand()])


    filename = uuidStr +".png"
    plt.savefig(filename)

    print(filename)