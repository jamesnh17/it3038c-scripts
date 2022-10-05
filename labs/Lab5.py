import datetime

birthday = input("What is your birthday, please format your answer like: January 1 1900 ")
bdayFormat = datetime.datetime.strptime(birthday, '%B %d %Y')
now = datetime.datetime.today()

difference = (now - bdayFormat).total_seconds()

print("You are ", difference, " seconds old!")