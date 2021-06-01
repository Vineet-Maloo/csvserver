


to run the container in the background - $ docker run -itd infracloudio/csvserver:latest

found that the container is not running

then executed this command to findout the logs to check what went wrong
docker logs 443a8aa6dc5c

found that the input file is missing

written the shell script to generate the input file gencsv.sh

Now ran the container again in the bacground and found that the input file should be present at /csvserver directory

so i have created another image using the current image as the base image and copied the inputfile to the csvserver as per the docker file

and then build the image and ran in the background, it was running without any error

for the next step, i have executed 'docker ps' command and found that the application was running on port 9300 in the container port
so have i have stoped the existing container using docker stop <containerid> command
and have rerun the docker image to run the container in the specific port 
command used is --docker run -p 9393:9300 -itd infracloudio/csvserver:v3

now was able to see the data on the frontend

for setting up the environment variable i have used the below command
docker run -p 9393:9300 -itd -e "CSVSERVER_BORDER=Orange" infracloudio/csvserver:v3

