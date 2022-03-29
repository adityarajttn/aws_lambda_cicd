# AWS Lambda CICD

This repositoy contains the Python code for AWS Lambda layers. 

## File Structure

- `myapp` folder contains `app.py` file having Python cofe and Dockerfile to build the docker image.
- `common` folder contains `requirements.txt` file which contains name of Python libraries.
- `.github` folder contains GitHub Action workflow file which will build the docker image and push the image to ECR.
