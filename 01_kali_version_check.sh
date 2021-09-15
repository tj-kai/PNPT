#!/bin/bash

echo "Your Kali version is as follows :- "
grep -i version /etc/os-release

echo " "
echo "Your Kernel Version is as follows (With Release Date) :- "
uname -v

echo " "
echo "Your Kernel Release is as follows :- "
uname -r
