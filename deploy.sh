#!/bin/bash
#
# Copyright 2017 IBM Corp. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the “License”);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an “AS IS” BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function install() {

  echo "Creating an action"
  wsk action create handler handler.js

  echo "Create a trigger that executes 6 times every 20 seconds"
  wsk trigger create every-20-seconds \
    --feed  /whisk.system/alarms/alarm \
    --param cron '*/20 * * * * *' \
    --param maxTriggers 6

  echo "Create a rule that maps the trigger to the action"
  wsk rule create \
    invoke-periodically \
    every-20-seconds \
    handler
}

function uninstall() {
  wsk rule disable invoke-periodically
  wsk rule delete invoke-periodically
  wsk trigger delete every-20-seconds
  wsk action delete handler
}

case "$1" in
"--install" )
install
;;
"--uninstall" )
uninstall
;;
* )
usage
;;
esac
