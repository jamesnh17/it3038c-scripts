import json
import requests

r = requests.get('http://api.openweathermap.org/data/2.5/weather?zip=45140,us&appid=b1e457f5a8e87c7acf5f404c2772636b')

data=r.json()

print(data['weather'][0]['description'])
