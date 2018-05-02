#!/bin/bash

rm -f tags .tags cscope.* .cscope.*

find . -name "*.[c|h]" -o -name "*.cpp" > .cscope.files
ctags -f .tags -R -L .cscope.files;
cscope -Rbkq -i .cscope.files -f .cscope.out;

#ctags -R -f .tags;
#cscope -Rbkq -f .cscope.out;
