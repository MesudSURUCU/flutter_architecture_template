#!/bin/bash

cd module/gen

dart run build_runner build --delete-conflicting-outputs

cd ../..

echo "***** module/gen files success generated. *****"