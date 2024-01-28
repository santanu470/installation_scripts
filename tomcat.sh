# apache tomcat installation
How to change the port number of Tomcat?
----------------------------------------
go to conf folder
go to server.xml
change the port or add the port

apche tomcat folder structure?
--------------------------------
Bin-it contain the cmd to start or stop the server
conf-it contain configuration files
lib-it contain libraries (jarfiles)
logs -it contains server log files
temp - temp files will be created here
webapps - this is deployment folder

NOTE: we will keep war files in webapps folder for deployment

configure tomcat in linux machine
------------------------------------
1-create ec2 instace
2-install java-1.8.0-openjdk
3-go to apche tomcat (version -9) copy the link of zip file(wget link address)
4-extract the file(tar -xvf apche-tomcat-9)
5-cd bin
6-./startup.sh
7-go to ec2 take the public IP
8-add security group customtcp 8080
9-go to nw tab publicIP:8080
10-to acces this web browser we need to edit host manger
file loction- cd /webapp/manager/META-INF/context.xml
11-vi context.xml
12-go to valve tag (allow=".*"")
13- add tomcat users in tomcat/conf/tomcat-users.xml
   cd conf
   vi tomcat-users.xml
14-<role rolename="manager-gui"/>
   <user username="tomcat" password="tomcat" roles="mnger-gui"/>
   <role rollname="admin-gui"/>
   <user username="admin" password="admin" roles="manager-gui,admin-gui"/>
15-stop the server and restart
