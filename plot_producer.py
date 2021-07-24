import sys
from util.plots import plot_losses
import pandas as pd

if __name__ == '__main__':
	train_file = sys.argv[1]
	val_file = sys.argv[2]
	lr = float(sys.argv[3])
	epochs = int(sys.argv[4])
	train_data = pd.read_csv(train_file)['L1'].tolist()
	val_data = pd.read_csv(val_file)['L1'].tolist()

	plot_losses(train_data, val_data, lr, epochs)