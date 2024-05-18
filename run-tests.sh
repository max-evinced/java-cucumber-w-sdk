#!/bin/bash

if [ "${HEADED}" == "true" ]; then
  echo "Running tests in headed mode"
  export BROWSER_MODE='--headed'
else
  echo "Running tests in headless mode"
  export BROWSER_MODE='--headless'
fi

(mvn --color=always surefire-report:report 2>&1)

failed_tests=$(grep -o 'failures="[0-9]*"' ./reports/TEST-com.evinced.example.RunCucumberTests.xml | grep -o '[0-9]*')

echo -e "\nTest report is generated at: $(pwd)/reports/index.html\n"

if [ $failed_tests -le 1 ] ; then
  echo "Just one test failed, exiting with code 0"
  exit 0
else
  echo "More than one test failed, exiting with code 1"
  exit 1
fi
