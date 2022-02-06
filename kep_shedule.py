import wget
import fitz
import os
import time

while True:

    os.remove("shedule.pdf")
    os.remove("shedule.txt")

    #print('Downloading files...') 
    url = 'http://pl130.ru/doc/19/2k.pdf'
    wget.download(url, 'shedule.pdf')
    
    #print('Converting files...') 
    doc = fitz.open('shedule.pdf')
    page = doc.load_page(4)
    text = page.getText()
    doc.close()
    
    #print(text)

    f = open('shedule.txt','w')
    f.write(text)
    f.close()
    #print('OK!') 

    time.sleep(10800)