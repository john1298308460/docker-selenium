#!/usr/bin/env bash
#
# IMPORTANT: Change this file only in directory Standalone!

#chrome
echo "chrome" > /opt/selenium/browser_name

if [ ! -z "$SE_OPTS" ]; then
  echo "Appending Selenium options: ${SE_OPTS}"
fi

/opt/bin/generate_config

echo "Selenium Grid Standalone configuration: "
cat /opt/selenium/config.toml
echo "Starting Selenium Grid Standalone..."
nohup java ${JAVA_OPTS} -jar /opt/selenium/selenium-server.jar standalone \
  --bind-host ${SE_BIND_HOST} \
  --config /opt/selenium/config.toml \
  --server.port=6900 &
  ${SE_OPTS}

sleep 5


#edge
echo "MicrosoftEdge" > /opt/selenium/browser_name

if [ ! -z "$SE_OPTS" ]; then
  echo "Appending Selenium options: ${SE_OPTS}"
fi

/opt/bin/generate_config

echo "Selenium Grid Standalone configuration: "
cat /opt/selenium/config.toml
echo "Starting Selenium Grid Standalone..."
nohup java ${JAVA_OPTS} -jar /opt/selenium/selenium-server.jar standalone \
  --bind-host ${SE_BIND_HOST} \
  --config /opt/selenium/config.toml \
  --server.port=6901 &
  ${SE_OPTS}

sleep 5


#firefox
echo "firefox" > /opt/selenium/browser_name

if [ ! -z "$SE_OPTS" ]; then
  echo "Appending Selenium options: ${SE_OPTS}"
fi

/opt/bin/generate_config

echo "Selenium Grid Standalone configuration: "
cat /opt/selenium/config.toml
echo "Starting Selenium Grid Standalone..."
nohup java ${JAVA_OPTS} -jar /opt/selenium/selenium-server.jar standalone \
  --bind-host ${SE_BIND_HOST} \
  --config /opt/selenium/config.toml \
  --server.port=6902 &
  ${SE_OPTS}
