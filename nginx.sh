#!/bin/bash

useradd -s /sbin/nologin nginx
#yum install gcc pcre* zlib* gd* libpng* libxml* 
yum install nginx gd openssl openssl-devel curl curl-devel
