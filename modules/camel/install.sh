#!/usr/bin/env bash

jbang trust add https://github.com/apache
# Need to be able to specify the version in another iteration
jbang app install camel@apache/camel

# Hacky way to have camel on cli in the container.
# The jbang app install is supposed to add it but it is adding the PATH which is not saved throigh the container.
cd /usr/local/bin
ln /usr/local/jbang/bin/camel camel
