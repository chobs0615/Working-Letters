#!/bin/sh

/bin/grep -irn --color=auto "$1" `find -name "*.[ch]" -o -name "*.cpp"`
