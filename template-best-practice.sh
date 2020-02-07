#!/usr/bin/env bash  
# make the script more portable

set -o errexit                                # Stop script if any error happen
set -o pipefail                               # expressions like error here | true will always succeed!
set -o nounset                                # detect uninitialised variables (Include also EnvVars, so be care to use it)
[[ "${DEBUG}" == 'true' ]] && set -o xtrace   # prints every expresion use for debug

# for variables use ${variable}

# for constants readonly something='immutable value'  --> cannot be unset

# [] --> is supported by all POSIX
# [[]]  --> is less portable but you shouldn't scape parenthesis

# function_name ()
# _function_name () --> for name convention
# local operator to make variable only in the function
# assign variables name e.g. local myvar=${$1}


#include external script is with --> source FILENAME