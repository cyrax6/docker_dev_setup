#!/bin/bash

PROJECT_NAME="nyan-car"

gcloud config set project $PROJECT_NAME

gcloud config set compute/zone us-central1-a

gcloud config set compute/region us-central1

