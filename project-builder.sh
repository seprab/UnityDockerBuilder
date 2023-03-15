#!/bin/bash
# Build an android empty project
/root/Unity/Hub/Editor/2021.3.20f1/Editor/Unity \
  -createProject /MyProjects/AndroidTest \
  -nographics \
  -batchmode \
  -logfile - \
  -buildTarget Android \
  -quit