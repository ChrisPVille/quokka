#!/bin/sh
cl65 -t none -C quokka.ld monitor.S
xxd -c 1 -ps monitor > monitor.hex
xxd -g 1 monitor
