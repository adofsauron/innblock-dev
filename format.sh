#!/bin/bash

cd src

clang-format  -style=file -i ./*.cpp
clang-format  -style=file -i ./*.h

cd -
