#!/bin/bash

if [[ -z "$SHUTTLE_1_LABEL" ]]; then
    echo "missing env variable: SHUTTLE_1_LABEL"
    exit 1
fi

if [[ -z "$SHUTTLE_2_LABEL" ]]; then
    echo "missing env variable: SHUTTLE_2_LABEL"
    exit 1
fi

echo "replace labels"

cp ./themes/tale/data/routes.default.yaml ./themes/tale/data/routes.yaml

sed -i -e "s/SHUTTLE_1_LABEL/$SHUTTLE_1_LABEL/g" ./themes/tale/data/routes.yaml
sed -i -e "s/SHUTTLE_2_LABEL/$SHUTTLE_2_LABEL/g" ./themes/tale/data/routes.yaml

rm -f ./themes/tale/data/routes.yaml-e
