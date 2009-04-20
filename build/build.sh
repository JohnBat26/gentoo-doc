#! /bin/sh

if [ "$JAVA_HOME" == "" ] ; then
  echo "    Error: The JAVA_HOME environment variable is not set."
  echo "    It must point at your JDK or JRE distribution, e.g.:"
  echo "      JAVA_HOME=/usr/java/j2sdk"
  exit 1
fi


cp=../tools/lib/ant-launcher.jar
class=org.apache.tools.ant.launch.Launcher
xml_params="-Djavax.xml.parsers.DocumentBuilderFactory=org.apache.xerces.jaxp.DocumentBuilderFactoryImpl -Djavax.xml.parsers.SAXParserFactory=org.apache.xerces.jaxp.SAXParserFactoryImpl -Dorg.apache.xerces.xni.parser.XMLParserConfiguration=org.apache.xerces.parsers.XIncludeParserConfiguration"


"$JAVA_HOME/bin/java" -showversion -Xmx1024m $xml_params -classpath $cp -Dant.home=../tools/lib/ $class $*
