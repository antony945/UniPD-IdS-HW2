import pandas as pd
import os
from glob import glob

# Change the current working directory
os.chdir("codeMetrics")

# Get all immediate subdirectory
subd = [s.rstrip("/") for s in glob("*/")]

for s in subd:
    os.chdir(s)

    newDf = pd.read_csv("class.csv")
    oldDf = pd.read_csv("classOld.csv")

    newDf = newDf[["class", "type"]]
    oldDf = oldDf[["class" , "type"]]

    set1 = set(newDf["class"])
    set2 = set(oldDf["class"])

    missingElem = set1.difference(set2)

	#Inserisce in diff solo gli elementi mancanti
    diff = newDf.loc[newDf["class"].isin(missingElem), ["class", "type"]]
    diff = diff.sort_values(by=["type","class"])

    diff.to_csv("diff.csv", columns=["class", "type"], index=False)

    # Change the current working directory
    os.chdir("..")