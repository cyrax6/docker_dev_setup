#!/bin/bash

PORT=8090
gunicorn --bind :$PORT --workers 1 --threads 8 hello:app
