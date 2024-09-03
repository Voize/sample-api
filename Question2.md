# How to Pull the image

You can pull the docker image by running the command `

    docker pull ghcr.io/voize/sampleai:latest

You can run the image using the following command
    
    docker run --name app1 -p 3003:3000 -d ghcr.io/voize/sampleai:latest


# How to Run the work flow 

1. Go to the repo https://github.com/Voize/sample-api
2. Go to  Actions
3. Select the workflow "Test Build and Push Image CI"
4. Select the drop down "Run workflow"


# Successfully run workflow can be seen at 
https://github.com/Voize/sample-api/actions/workflows/test-push-image.yml
