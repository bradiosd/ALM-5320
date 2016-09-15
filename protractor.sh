#!/bin/bash

# Set environment vars from .env
source .env

# Run protractor
gulp protractor-run --capabilities.browserName=firefox --baseUrl=http://${APP_DOMAIN} --seleniumAddress=http://localhost:4444/wd/hub --specs="tests/angular/**/*.js"
