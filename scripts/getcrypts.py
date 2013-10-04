from bs4 import BeautifulSoup
import requests
import re


url = "http://en.wikipedia.org/wiki/List_of_cryptids"
soup  = BeautifulSoup(requests.get(url).text)
table = soup.find("table")
for row in table.find_all("tr"):
    animal = row.find("td")
    if animal:
        animal = animal.find("a")
        if animal:
            print "http://en.wikipedia.org" + animal['href']

