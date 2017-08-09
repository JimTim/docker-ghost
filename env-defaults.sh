#!/bin/bash

set -e
cp config.production.example.json config.production.json
sed -i "s#<URL>#\"${URL}\"#" config.production.json
sed -i "s#<MAIL__FROM>#\"${MAIL__FROM}\"#" config.production.json
sed -i "s#<MAIL__OPTIONS__HOST>#\"${MAIL__OPTIONS__HOST}\"#" config.production.json
sed -i "s#<USEMINFILES>#${USEMINFILES}#" config.production.json