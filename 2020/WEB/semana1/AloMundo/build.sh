# !/bin/bash

mkdir -p dist/WEB-INF/classes

echo '<?xml version="1.0" encoding="UTF-8"?>
<web-app>
<servlet>
    <servlet-name>AloMundo</servlet-name>
    <servlet-class>br.ufscar.dc.dsw.AloMundoServlet</servlet-class>
</servlet>
<servlet-mapping>
    <servlet-name>AloMundo</servlet-name>
    <url-pattern>/TestarAloMundo</url-pattern>
</servlet-mapping>
<session-config>
    <session-timeout>
        30
    </session-timeout>
</session-config>
</web-app>' > dist/WEB-INF/web.xml

find -name *.java |
while read filename
do
  javac -cp "$HOME/apache-tomcat-9.0.39/lib/servlet-api.jar" "$filename" -d dist/WEB-INF/classes
  filenameWithoutExtension="${filename%.*}"
  jar -cvf "$filenameWithoutExtension.war" -C dist .
  mv  "$filenameWithoutExtension.war" "$PWD"
done