#! /bin/bash

docker run -e CONFLUENCE_USERNAME=$CONFLUENCE_USERNAME \
 -e CONFLUENCE_API_KEY=$CONFLUENCE_API_KEY \
  thinkwrap/md2conf \
  -v ${PWD}/test1:/test1
  /test1/test1_sub1.md TST3TEAM -a 'TOC Page'