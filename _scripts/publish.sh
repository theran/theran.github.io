#!/bin/sh

hg book -f -r ${1:-tip} ${2:-master}
hg push