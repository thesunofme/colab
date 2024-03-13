name: Docker Image CI
on:
  schedule:
    - cron:  '50 */6 * * *'
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Build the Docker image
      run: wget https://raw.githubusercontent.com/thesunofme/colab/main/Dockerfile; docker build -t colab/docker .
