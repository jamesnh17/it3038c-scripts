import requests, re

data = "Hello. My email is huffnj@mail.uc.edu. I can't stress this enough but Please, do NOT write me!"

p = re.compile('[A-Za-z0-9_%.-]+@[A-z0-9_%.-]+\.[A-z0-9]{2,}')

print(p.search(data).group())
