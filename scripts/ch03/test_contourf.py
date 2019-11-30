import numpy as np
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap


colors = ('red', 'blue', 'lightgreen', 'gray', 'cyan')
cmap = ListedColormap(colors[:2])

x_coords = np.arange(0, 2, 1)
y_coords = np.arange(0, 2, 1)
x_coords, y_coords = np.meshgrid(x_coords, y_coords)
print(x_coords + y_coords)
z = (x_coords + y_coords > 1).astype(int)
print(z)

plt.contourf(x_coords, y_coords, z, alpha=0.3, cmap=cmap)
plt.show()


