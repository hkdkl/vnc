#!/usr/bin/expect -f
spawn vncpasswd
expect  "*word:*"
send "demo2021\n"
expect  "*Verify:*"
send "demo2021\n"
expect eof
