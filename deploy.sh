#!/bin/bash

run() {
    echo "create .firebaserc"
    cp .firebaserc.default .firebaserc
    sed -i -e "s/PROJECT_DOMAIN/$PROJECT_DOMAIN/g" .firebaserc
    rm ./.firebaserc-e
    cat ./.firebaserc
    hugo && firebase deploy
}

cleanup() {
    rm ./.firebaserc
}
if [[ -z "$PROJECT_DOMAIN" ]]; then
    echo "must set PROJECT_DOMAIN"
    exit 1
fi

run
cleanup
