import pandas as pd
import csv
import os
from glob import glob

# Change the current working directory
os.chdir('codeMetrics')

# Get all immediate subdirectory
subd = [s.rstrip("/") for s in glob("*/")]

for s in subd:
    # Change the current working directory
    os.chdir(s)

    # Crea set a partire da prima colonna di class.csv
    df = pd.read_csv('class.csv')
    set1 = df['class'].unique()
    set1 = set(set1)
    # Crea set a partire da prima colonna di classOld.csv
    df = pd.read_csv('classOld.csv')
    set2 = df['class'].unique()
    set2 = set(set2)

    # Voglio elementi presenti in class.csv ma non in classOld.csv
    diff = set1.difference(set2)
    with open("diff.csv","w") as f:
        wr = csv.writer(f,delimiter="\n")
        wr.writerow(diff)

    # Change the current working directory
    os.chdir('..')