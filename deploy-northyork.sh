#!/bin/bash

export PROJECT_DOMAIN=pitstopshuttletrackingny
export SHUTTLE_1_LABEL=ikea-northyork-leslie
export SHUTTLE_2_LABEL=ikea-northyork-mccowan
./build.sh
./deploy.sh
