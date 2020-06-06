import json
import requests

def get_list_user_repo():
    request = requests.get('https://api.github.com/users/eksat/repos')
    json = request.json()
    list_repo = []
    for i in range(0,len(json)):
	    list_repo.append(json[i]['name'])
    return list_repo
