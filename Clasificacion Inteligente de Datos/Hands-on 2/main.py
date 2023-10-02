import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# R&D Spend -> Independiente
# Profit -> Dependiente

# lectura de datos
train = pd.read_csv('./50_Startups.csv')
test = pd.read_csv('./50_Startups.csv')
# print(train.head(3))
# print(train.columns)
# print(train[['Profit', 'R&D Spend']].head())

# parámetros de la recta
w = 125
b = 200000

# puntos de la recta
x = np.linspace(train['Profit'].min(), train['Profit'].max(), 100)
y = w * x + b

# gráfica de la recta
train.plot.scatter(x = 'Profit', y = 'R&D Spend')
plt.plot(x, y, '-r')
plt.ylim(train['R&D Spend'].min() * 1.1, train['R&D Spend'].max() * 1.1)
# plt.grid()
plt.show()
