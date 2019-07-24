#!/bin/bash

export PROJECT_DOMAIN=pitstopshuttletracking
export SHUTTLE_1_LABEL=ikea-etobicoke-kipling
export SHUTTLE_2_LABEL=ikea-etobicoke-downtown
./build.sh
./deploy.sh
