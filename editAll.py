# Import the os module
import os

# Import the glob module
from glob import glob

# Change the current working directory
os.chdir('codeMetrics')

# Get all immediate subdirectory
subd = [s.rstrip("/") for s in glob("*/")]

for s in subd:
    # Change the current working directory
    os.chdir(s)

    # reading the CSV file
    text0 = open("classOld.csv", "r")
    text1 = open("class.csv", "r")
    text2 = open("method.csv", "r")
    
    #join() method combines all contents of 
    # class.csv and formed as a string
    text0 = ''.join([i for i in text0])
    text1 = ''.join([i for i in text1])
    text2 = ''.join([i for i in text2])
    
    # search and replace the contents
    text0 = text0.replace("/home/antonio/Documents/GitHub/UniPD-IdS-HW2/./project/", "")
    text1 = text1.replace("/home/antonio/Documents/GitHub/UniPD-IdS-HW2/./project/", "")
    text2 = text2.replace("/home/antonio/Documents/GitHub/UniPD-IdS-HW2/./project/", "")
    
    # output.csv is the output file opened in write mode
    x0 = open("classOld.csv","w")
    x1 = open("class.csv","w")
    x2 = open("method.csv","w")

    # all the replaced text is written in the output.csv file
    x0.writelines(text0)
    x0.close()
    x1.writelines(text1)
    x1.close()
    x2.writelines(text2)
    x2.close()

    # Change the current working directory
    os.chdir('..')