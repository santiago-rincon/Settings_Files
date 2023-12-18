#!/bin/bash

ip=$(/usr/bin/hostname -I | awk '{print $1}')
if [ "$(nmcli | grep "conectado to" | wc -l)" = "0" ]; then
  echo "%{F#7dcfff}󰌙 %{F#ffffff}Desconectado%{u-}";
elif [ "$(nmcli | grep "conectado to Conexión" | wc -l)" = "1" ]; then
  echo "%{F#7dcfff}󰈀 %{F#ffffff}"$ip"%{u-}";
else
  echo "%{F#7dcfff} %{F#ffffff}"$ip"%{u-}";
fi
