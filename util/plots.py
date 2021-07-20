import matplotlib.pyplot as plt


def plot_losses(g_list, l1_list, batch_size, learning_rate):
	epochs = range(1, len(g_list)+1)
	# plotting the line 1 points
	plt.plot(epochs, g_list, label="G Loss")
	# plotting the line 2 points
	plt.plot(epochs, l1_list, label="L1 Loss")
	plt.xlabel('Epochs')
	# Set the y axis label of the current axis.
	plt.ylabel('Losses')
	# Set a title of the current axes.
	plt.title(f'Plots of losses per epoch [LR={str(learning_rate)} | Batch size={str(batch_size)}]')
	# show a legend on the plot
	plt.legend()
	# Display a figure.
	plt.savefig(f"../losses_lr_{str(learning_rate)}")
	plt.close()
