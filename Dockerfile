FROM maven:3-alpine
WORKDIR /appmavenjenkins
ADD . /appmavenjenkins
EXPOSE 3000
CMD bash jenkins/scripts/deliver.sh
