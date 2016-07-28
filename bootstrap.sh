#!/usr/bin/env bash

VAGRANT_USER="vagrant"
CODE_PATH="/vagrant/sourcecode"

apt-get upgrade
apt-get update
apt-get install flex bison build-essential csh openjdk-6-jdk libxaw7-dev
mkdir $CODE_PATH
chown $VAGRANT_USER $CODE_PATH
cd $CODE_PATH
wget http://spark-university.s3.amazonaws.com/stanford-compilers/vm/student-dist.tar.gz
tar -xf student-dist.tar.gz
rm student-dist.tar.gz
echo 'PATH=/vagrant/sourcecode/cs143/cool/bin:$PATH' >> /home/vagrant/.bash_profile 
