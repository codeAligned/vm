#! /usr/bin/env bash

set -euo pipefail

main() {
    readonly JAVA_VERSION=131
    readonly JAVA_B=11
    readonly JAVA_HASH="d54c1d3a095b4ff2b6607d096fa80163"

    # JDK (http://stackoverflow.com/a/10959815/3187068)
    wget \
        --progress=dot:giga \
        --no-check-certificate \
        --no-cookies \
        --header "Cookie: oraclelicense=accept-securebackup-cookie" \
        "http://download.oracle.com/otn-pub/java/jdk/8u${JAVA_VERSION}-b${JAVA_B}/${JAVA_HASH}/jdk-8u${JAVA_VERSION}-linux-x64.tar.gz"
    tar -xzf jdk-8u${JAVA_VERSION}-linux-x64.tar.gz
    echo 'export JAVA_HOME="$HOME/jdk1.8.0_'${JAVA_VERSION}'"' >> ~/.bashrc
    echo 'export PATH="$JAVA_HOME/bin:$PATH"'                  >> ~/.bashrc

    # Maven
    wget \
        --progress=dot:giga \
        'http://www-us.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.zip'
    unzip apache-maven-3.5.0-bin.zip
    echo 'export MAVEN_HOME="$HOME/apache-maven-3.5.0"' >> ~/.bashrc
    echo 'export PATH="$MAVEN_HOME/bin:$PATH"'          >> ~/.bashrc

    # Eclipse
    readonly ECLIPSE_TAR="eclipse-java-neon-3-linux-gtk-x86_64.tar.gz"
    wget \
        --progress=dot:giga \
        "http://mirror.csclub.uwaterloo.ca/eclipse/technology/epp/downloads/release/neon/3/${ECLIPSE_TAR}"
    tar -xzf "${ECLIPSE_TAR}"
    echo 'export ECLIPSE_HOME="$HOME/eclipse"' >> ~/.bashrc
    echo 'export PATH="$ECLIPSE_HOME:$PATH"' >> ~/.bashrc

    # IntelliJ
    readonly INTELLIJ_TAR="ideaIC-2017.2.2.tar.gz"
    wget \
        --progress=dot:giga \
        "https://download-cf.jetbrains.com/idea/${INTELLIJ_TAR}"
    tar -xzf "${INTELLIJ_TAR}"
    echo 'export INTELLIJ_HOME="$HOME/idea-IC-172.3757.52"' >> ~/.bashrc
    echo 'export PATH="$INTELLIJ_HOME/bin:$PATH"' >> ~/.bashrc
}

main
