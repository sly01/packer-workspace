#!/bin/bash

main () {
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1> Hello World !</h1>" | sudo tee -a /var/www/html/index.html
}

main