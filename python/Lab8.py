import requests
from bs4 import BeautifulSoup

URL = ""
page = requests.get(URL)

soup = BeautifulSoup(page.content, "html.parser")