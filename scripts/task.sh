#!/bin/bash

while getopts ":s:f:c:" opt; do
  case $opt in
    s)
      SUPP=$OPTARG
      ;;
    f)
      FUNC=$OPTARG
      ;;
    c)
      CONS=$OPTARG
      ;;
    esac
done

java -jar ../spring-cloud-function-task/target/spring-cloud-function-task-1.0.0.BUILD-SNAPSHOT.jar\
 --lambda.supplier=$SUPP --lambda.function=$FUNC --lambda.consumer=$CONS
