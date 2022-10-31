import requests, re
from bs4 import BeautifulSoup

# Lab simply scrapes for my 'Lab8' link from my own github page

URL = "https://github.com/jamesnh17/it3038c-scripts/tree/main/python"
page = requests.get(URL)

soup = BeautifulSoup(page.content, "html.parser")

results = soup.find(title="Lab8.py")

#print(results.prettify())

tags = soup.find_all("a", {"href":re.compile('(Lab8.py)')})
for a in tags:
    print(a.get('href'))