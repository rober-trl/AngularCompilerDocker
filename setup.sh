#!/bin/bash

docker build -t angular-compiler-docker .
echo "[+] Docker \"angular-compiler-docker\" image built"
if [ $1 ]
then 
  docker run -it -v "$(pwd)"/$1:/proyecto  -p 4200:4200 --rm angular-compiler-docker:latest /bin/bash
else 
 echo "[-] Specify a directory name to map your proyects in your PC"
 echo "[!] To run docker image use docker run -it -v \"(pwd)\"/<nameOfYourDir>:/containerDir -p <hostPort>:4200 --rm angular-compiler-docker:latest /bin/bash"
 exit 1
fi

