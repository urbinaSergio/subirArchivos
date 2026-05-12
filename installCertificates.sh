#!/usr/bin/env bash

echo -e "\n>>> Download certificates"
(set -x; sudo wget -r -np -nd -N https://artifactory.apps.bancolombia.com/artifactory/wsl/certificates/ -P /usr/local/share/ca-certificates/ -R *.html*)

echo -e "\n>>> Install certificates"
(set -x; sudo update-ca-certificates)

echo -e "\n>>> List certificates"
(set -x; sudo ls -la /usr/local/share/ca-certificates/)