#!/usr/bin/expect -f
#!/bin/bash
# Este es nuestro primer progrma

spawn ssh sanjed@192.168.1.17

expect "password:"

sleep 1

send "*\r"

interact

cd prueba
edad="prueba"
if [ $edad = ${PWD##*/} ]
then
        echo "ok"
else
        echo "error"
fi
