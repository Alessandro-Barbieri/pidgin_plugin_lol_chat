pidgin_plunin_lol_chat
======================

Pidgin plugin for League of Legends Chat. This plugin help you read user-information more comfortable.


HOW TO INSTALL


DEBIAN JESSIE
clang  -shared -fPIC -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/glib-2.0 -I/usr/include/libpurple -I/usr/include/pidgin -I/usr/include/pango-1.0 -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/atk-1.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/gtk-2.0 lol_chat_1.01b.c -o lol_chat.so
sudo mv lol_chat.so /usr/lib/pidgin/
