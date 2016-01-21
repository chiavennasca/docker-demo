#!/bin/bash
function do_dir() {
  local __dir=$1

  pushd .
  cd $1
  . scripts/cleanup.sh
  popd
}

do_dir "dev"
do_dir "prod"
do_dir "mongodb"
do_dir "aerospike"
do_dir "redis"

export PS1="\h:\W$ "
