#!/bin/bash

exec swipl -g  "load_files([trabalho,tests])" \
 -t run_tests
