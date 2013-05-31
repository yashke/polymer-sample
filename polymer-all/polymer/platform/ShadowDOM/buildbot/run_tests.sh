#!/bin/bash

# need to add x11 binaries to the PATH if on mac
if [ "`uname`" == "Linux" ]; then
  xvfb="xvfb-run"
fi
$xvfb grunt test-buildbot
rc=$?
echo "@@@STEP_CURSOR test@@@"
if [ "x$rc" != "x0" ]; then
  echo "@@@STEP_FAILURE@@@"
fi
