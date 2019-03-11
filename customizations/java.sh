sudo apt install -y openjdk-11 openjdk-8
if [[ -z "${JAVA_HOME}" ]]; then
    sudo su
    echo "JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64\"" >> /etc/environment
    exit
    source /etc/environment
fi
