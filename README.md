# Devops

docker pull sonarqube

sudo docker build -t sonarqube-upd .

docker run -p 8000:9000 -v <path to repo>/project:/project sonarqube-upd

-> localhost:8000

login with admin:admin

create Java project with Maven

sudo docker exec -u root:root -it <container id> /bin/bash

cd /project/

mvn sonar:sonar -Dsonar.projectKey=java -Dsonar.host.url=http://localhost:9000 -Dsonar.login=<token>
