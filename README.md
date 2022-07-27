# inception
This project aims to broaden my knowledge of system administration by using Docker. I virtualized several Docker images, creating them in my personal virtual machine. 

Change image name to the exact same name of the service its running:
docker tag srcs_nginx nginx
docker tag srcs_wordpress wordpress
docker tag srcs_mariadb mariadb
docker rmi srcs_{mariadb,nginx,wordpress}

