import requests

url = "http://localhost:8080/remote.php/dav/files/admin"
auth = ("admin", "admin")

response = requests.get(url, auth=auth)

print("Status Code:", response.status_code)
print("Response:", response.text)
