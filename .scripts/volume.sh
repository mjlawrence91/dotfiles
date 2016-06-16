#!/usr/bin/env bash
echo " $(amixer sget Master | grep Left: | cut -d " " -f7)"
