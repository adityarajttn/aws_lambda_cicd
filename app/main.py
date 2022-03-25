import json
import requests

def lambda_handler(event, context):
    r = requests.get("https://www.python.org/")
    if r.status_code == 200:
        return {
            'statusCode': 200,
            'body': json.dumps('Get request was successfull!')
        }

    return {
            'statusCode': 200,
            'body': json.dumps('Get request was not successfull!!')
    }