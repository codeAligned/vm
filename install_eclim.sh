#! /usr/bin/env bash

set -euo pipefail

main() {
    readonly ECLIM_VERSION="2.6.0"
    wget "https://github.com/ervandew/eclim/releases/download/${ECLIM_VERSION}/eclim_${ECLIM_VERSION}.jar"
    java -Dvim.files=/home/vagrant/.vim \
         -Declipse.home=/home/vagrant/eclipse \
         -jar "eclim_${ECLIM_VERSION}.jar" install
}

main
