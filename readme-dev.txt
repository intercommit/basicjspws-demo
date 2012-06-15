README Basic JSP Webservice Demo project

This project contains a demo-program for the Basic JSP Webservice.
To get it running, 
copy conf/basicjspws-demo-logback.xml to TOMCAT_HOME/conf 
and copy basicjspws-demo.war to TOMCAT_HOME/webapps. 
Start Tomcat and go to:
http://localhost:8080/basicjspws-demo/

The ideas and usage of Basic JSP WS are discussed in doc/manual.html

### Compiling

This project depends on the Basic JSP Webservice (com.descartes:basicjspws) project which delivers a jar-file 
that should be available in your Maven repository.
See the readme-dev.txt of that project about how to make this required jar-file available on your system.

### Import in Eclipse

Before importing this project into Eclipse,
open a command prompt, go to this project's directory and run:
mvn eclipse:clean eclipse:eclipse -DdownloadSources -Dwtpversion=2.0

Now import this project in Eclipse as a normal project via "General> Existing project".

In Eclipse, right-click the project > Properties> Project Facets.
"Java" should be checked and set at version 1.6
"Dynamic Web module" should be checked and set at version 2.5
On the tab "Runtimes", mark "Apache Tomcat v6.0".
If this runtime does not exist, create it using the "New" button.
Click OK to save changes and exit the Project Properties screen.

Before running this project on the Eclipse's internal "Apache Tomcat v6.0",
open the runtime configuration for "Apache Tomcat v6.0" (Run> Runtime configuration),
select "Tomcat on localhost" on the left, click the "arguments" tab on the right
and add to the "VM arguments" the following:
-Dlogback.configurationFile=programmatic -Dbasicjspws-demo.home=<project-dir>
Replace <project-dir> with the directory of the demo project in Eclipse
(e.g. C:\eclipse\workspace\basicjspws-demo).
The first parameter (logback.configurationFile) will tell the demo-project to configure logging
programmatically (write everything to the console). The second parameter will set
the home-directory for the demo-project. Configuration files are then loaded from 
the "conf" directory relative to the home-directory.

### Updating project dependencies

After changing the dependencies in the pom.xml,
open a command prompt, go to this project's directory and run:
mvn eclipse:clean eclipse:eclipse -DdownloadSources -Dwtpversion=2.0
mvn clean package
Press F5 (refresh) in Eclipse for this project.
Note: removed dependencies might still show up in Eclipse under "Referenced Libraries".
If so, remove them by hand (Properties> Java Build Path, tab Libraries).

To update the Tomcat server*, right-click the server and select "Clean".
* To show the server, select Window> Show View> Other, Server> Servers. 
A "Servers" window should appear with Tomcat in it.

### Building project

Open a command prompt, go to this project's directory and run:
mvn clean package
copy /y target\basicjspws-demo-1.0.0.war .\basicjspws-demo.war

You can deploy the new basicjspws-demo.war in Tomcat.
