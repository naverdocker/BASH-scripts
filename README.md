simple BASH scripts & linux commands

- to automate simple tasks for convenience
- simple bash program
- documents related to linux command line and shell

----

directory "archived-scripts" contains scripts that are deprecated/obsolete

----
----
README instrunction for tomcat.zip

Pre-requaites   - ubuntu / debian operating system
1. unzip 'tomcat.zip' in the path "/root" -- >> cd /root -- >> unzip tomcat.zip
2. if tomcat.zip is unzipped in a different directory, then move the unzipped contents to "/root" -- >> mv ./tomcat /root/

contents of tomcat.zip
1. src code     - index.html
2. app script   - tomcat.sh
3. readme       - readme.txt

functioning
1. index.html   - holds the content that is deployed in the apache-tomcat server hosting path (/opt/apache-tomcat/webapps/ROOT/index.html).
2. tomcat.sh    - executing this file will automatically install apache-tomcat in the system and deploy default index.html file in the deployment path.

updating web
step 1: edit the index.html file --> vi index.html --> edit --> save
step 2: run tomcat.sh --> /root/tomcat/tomcat.sh
step 3: check the browser with IP add --> <public i address>:8080"
