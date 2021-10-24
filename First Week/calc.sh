#!/bin/bash

echo "Insert first value"
read a
echo "Insert second value"
read b
echo "Insert symbol of the arithmatical operation"
read c

echo "$(( $a $c $b ))"
