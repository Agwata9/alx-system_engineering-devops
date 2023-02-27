#!/usr/bin/python3
""" Exporting csv files"""
import json
import requests
import sys

def number_of_subscribers(subreddit):
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {"User-Agent": "myBot/0.0.1"}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        return response.json()["data"]["subscribers"]
    else:
        return 0

