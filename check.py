import requests

from bs4 import BeautifulSoup

r=requests.get("https://www.bell.ca/Mobility/Cell_phone_plans/Unlimited-plans")

r.status_code
print(r)