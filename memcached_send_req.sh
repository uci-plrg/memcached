#!/bin/bash
for i in `seq 1 "$1"` ; do
	echo "get moo"
	echo "get foo"
	echo "get bar"
	echo "set foo 0 0 6"
	echo "fooval"
	echo "add bar 0 0 6"
	echo "barval"
	echo "add foo 0 0 5"
	echo "foov2"
	echo "replace bar 0 0 6"
	echo "barva2"
	echo "add moo 0 0 6"
	echo "mooval"
	echo "get moo"
	echo "get foo"
	echo "get bar"
	#echo "get g$((1))"
done
echo "shutdown"
sleep 1

