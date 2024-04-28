Background:
There were basically two people working for this project,
but one of them was away and couldn't participate in the project, 
so all the work was done by one and unfortunately 
I didn't have that much time to do it either. 
I am not a Frontend or Backend developer, 
but rather a bias towards DevOps and C/C++ development.
We are both beginners in this field, so we didn't manage 
to implement everything the way I wanted. Nevertheless, 
I will tell you step by step what I planned to do and what technology stack to use.


Dockerized WordPress Development Environment

This Docker Compose configuration sets up a local development environment for WordPress using Docker containers. It includes WordPress, MariaDB, phpMyAdmin, and Nginx.
Prerequisites

    Docker
    Docker Compose

Setup

    Clone this repository: git clone https://github.com/GigachadVladyslav/Web_Shop.git

Navigate to the project directory:


Usage

    Start the services: docker-compose up -d

Access WordPress at http://localhost:8000

Access phpMyAdmin at http://localhost:8080 (username: root, password: as defined in .env)

Customize your WordPress installation as needed.

Stop the services when done:

    docker-compose down

Services

    WordPress:
        Image: wordpress:latest
        Access: http://localhost:8000

    MariaDB (Database):
        Image: mariadb:latest
        Persistent Data: db_data volume
        Access Credentials: as defined in .env

    phpMyAdmin:
        Image: phpmyadmin/phpmyadmin
        Access: http://localhost:8080
        Username: root
        Password: as defined in .env

    Nginx:
        Image: nginx:stable-alpine
        Configuration: ./nginx/default.conf
        Port Mapping: 80 (HTTP), 443 (HTTPS)

Customization

    Nginx Configuration:
        Modify ./nginx/default.conf to customize Nginx server configurations.

Networks

    wpsite:
        Bridge network for communication between containers.

Volumes

    db_data:
        Volume for MariaDB persistent data.

Notes

    For HTTPS support, you can integrate with Let's Encrypt using Certbot (commented out in docker-compose.yml). Adjust the Nginx configuration accordingly.

Contributors

    https://github.com/GigachadVladyslav
    https://github.com/Harasim-Markian


This project is licensed under the MIT License.
Acknowledgments

    https://wordpress.org/
    https://www.docker.com/
    https://mariadb.org/
    https://www.phpmyadmin.net/
    https://www.nginx.com/


Front did not have time to write because there are no specialists in our team.   
I also had a test for github actions in folder, github\workflows can see Readme.md.
I also raised AWS EC2 and wanted to put our replication on it, but I managed to raise it, but I did not have time to configure and migrate there.

But still, if I had the time and the guys to do it, including Back and Front, I wouldn't use wordpress, because to me it's outdated, but I would write the backend from scratch on NodeJs or Django or even .net.
backend from scratch on NodeJs or Django or even on .net. I would also use pgAdmin, because it is more pleasant and convenient.
