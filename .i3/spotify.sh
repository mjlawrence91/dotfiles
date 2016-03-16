#!/bin/bash
metadata=$(dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:"org.mpris.MediaPlayer2.Player" string:'Metadata')

title=$(echo -e "$metadata" \
| grep -Ev "^method" \
| grep -Eo '("(.*)")|(\b[0-9][a-zA-Z0-9.]*\b)' \
| sed -E '2~2 a|' \
| tr -d '\n' \
| sed -E 's/\|/\n/g' \
| sed -E 's/(xesam:)|(mpris:)//' \
| sed -E 's/^"//'  \
| sed -E 's/"$//'  \
| sed -E 's/"+/|/' \
| sed -E 's/ +/ /g' \
| grep "title|" \
| cut -d '|' -f 2- )

artist=$(echo -e "$metadata" \
| grep -Ev "^method" \
| grep -Eo '("(.*)")|(\b[0-9][a-zA-Z0-9.]*\b)' \
| sed -E '2~2 a|' \
| tr -d '\n' \
| sed -E 's/\|/\n/g' \
| sed -E 's/(xesam:)|(mpris:)//' \
| sed -E 's/^"//'  \
| sed -E 's/"$//'  \
| sed -E 's/"+/|/' \
| sed -E 's/ +/ /g' \
| grep "artist|" \
| cut -d '|' -f 2- )

album=$(echo -e "$metadata" \
| grep -Ev "^method" \
| grep -Eo '("(.*)")|(\b[0-9][a-zA-Z0-9.]*\b)' \
| sed -E '2~2 a|' \
| tr -d '\n' \
| sed -E 's/\|/\n/g' \
| sed -E 's/(xesam:)|(mpris:)//' \
| sed -E 's/^"//'  \
| sed -E 's/"$//'  \
| sed -E 's/"+/|/' \
| sed -E 's/ +/ /g' \
| grep "album|" \
| cut -d '|' -f 2- )

echo -e "$title - $artist ($album)"
