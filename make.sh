#!/bin/bash

	if [ "$1" = 'debug' ] && [ -e ./src/lol_chat.c ]; then
		mkdir -p ./build
		cd ./build
		cc -O0 \
			-ggdb3  \
			-shared \
			-D_DEBUG \
			-fPIC -I/usr/lib/x86_64-linux-gnu/glib-2.0/include \
			-I/usr/include/glib-2.0 \
			-I/usr/include/libpurple \
			-I/usr/include/pidgin \
			-I/usr/include/pango-1.0 \
			-I/usr/include/cairo \
			-I/usr/include/gdk-pixbuf-2.0 \
			-I/usr/include/atk-1.0 \
			-I/usr/lib/x86_64-linux-gnu/gtk-2.0/include \
			-I/usr/include/gtk-2.0 \
			../src/lol_chat.c -o lol_chat.so
	fi
	if [ "$1" = 'install' ] && [ -e ./build/lol_chat.so ]; then
		cd ./build
		mkdir -p ~/.purple/plugins/
		mv lol_chat.so ~/.purple/plugins/
	fi
	if [ ! $1 ] && [ -e ./src/lol_chat.c ]; then
		mkdir -p ./build
		cd ./build
		cc -O2 \
				-shared \
				-fPIC -I/usr/lib/x86_64-linux-gnu/glib-2.0/include \
				-I/usr/include/glib-2.0 \
				-I/usr/include/libpurple \
				-I/usr/include/pidgin \
				-I/usr/include/pango-1.0 \
				-I/usr/include/cairo \
				-I/usr/include/gdk-pixbuf-2.0 \
				-I/usr/include/atk-1.0 \
				-I/usr/lib/x86_64-linux-gnu/gtk-2.0/include \
				-I/usr/include/gtk-2.0 \
				../src/lol_chat.c -o lol_chat.so
	fi
	if [ "$1" = 'uninstall' ]; then
		rm -vf ~/.purple/plugins/lol_chat.so
	fi
	if [ "$1" = 'clean' ]; then
		rm -Rvf ./build
	fi
