#!/usr/bin/env bash

echo -e "Random output with some colors \e[31mRED\e[0m \e[32mGREEN\e[0m"
echo -e "newlines"
echo -e "  indentations"
echo -e "and some weird Japanese characters. ありがとうございます"
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
