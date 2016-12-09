#!/bin/bash
ROOT=`pwd`
curl --digest --user admin:admin -X POST -Hcontent-type:application/json -d"{\"server-name\":\"test-delete-perf\",\"group-name\":\"Default\",\"server-type\":\"http\",\"content-database\":\"Documents\",\"port\":9191,\"root\":\"$ROOT\",\"authentication\":\"application-level\",\"default-user\":\"admin\"}"  http://localhost:8002/manage/v2/servers
