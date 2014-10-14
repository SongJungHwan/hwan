#!/usr/bin/env bash

if
  [[ -s "/home/junghwan/.rvm/gems/ruby-2.0.0-p576/environment" ]]
then
  source "/home/junghwan/.rvm/gems/ruby-2.0.0-p576/environment"
  exec ruby summarize.rb "$@"
else
  echo "ERROR: Missing RVM environment file: '/home/junghwan/.rvm/gems/ruby-2.0.0-p576/environment'" >&2
  exit 1
fi
