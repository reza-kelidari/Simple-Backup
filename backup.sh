#!/bin/bash

# Base Checks

## Checking arguments
if [ $# -lt 1 ] || [ $# -gt 2 ]
then
        echo 0x001, Argument error, \-h for help
        exit 1
fi