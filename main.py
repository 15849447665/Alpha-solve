from scipy.optimize import fsolve
import numpy as np
import math
import pandas as pd


def equation_to_solve(alpha, x, y, H, X, Y, d):
    return (H * (x**2 + ((x * Y * np.cos(alpha)) / X)**2 - y * ((x * Y * np.cos(alpha)) / X) * np.tan(alpha))) / \
           (np.sqrt(x**2 + ((x * Y * np.cos(alpha)) / X)**2) * (((x * Y * np.cos(alpha)) / X) * np.tan(alpha) + y)) - d

df = pd.read_excel('', sheet_name='')
df['Result'] = np.nan

for index, row in df.iterrows():
    x = row[6]
    y = row[7]
    X = row[8]
    Y = row[9]
    d = row[27]
    H = row[3]  
    initial_guess = 1.0

    result = fsolve(equation_to_solve, initial_guess, args=(x, y, H, X, Y, d))
    degree_value = math.degrees(result)
    df.at[index, 'Result'] = math.degrees(result[0])
# print("方程的数值解为:", result)
# print("方程的数值解为:", degree_value)
df.to_excel('', index=True, sheet_name='')