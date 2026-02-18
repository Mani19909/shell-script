#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script, course: $COURSE"

echo "process id of current shell script: $$"

./other-script.sh

echo "After calling other script, Course: $COURSE"
