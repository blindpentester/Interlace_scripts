#!/bin/bash

if ! [ -x "$(command -v gospider)" ]
then
  echo "Installing gospider..."
  cd /opt
  git clone https://github.com/jaeles-project/gospider
  cd gospider
  go build
  ln -sf /opt/gospider/gospider /usr/bin/gospider
else
  echo "gospider installed already, moving on..."
fi
