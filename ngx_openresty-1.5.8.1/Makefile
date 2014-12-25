.PHONY: all install clean

all:
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/LuaJIT-2.1-20140109 && $(MAKE) TARGET_STRIP=@: CCDEBUG=-g PREFIX=/usr/local/openresty/luajit
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-cjson-1.0.3 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/luajit-root/usr/local/openresty/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty/lualib CC=gcc
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-redis-parser-0.10 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/luajit-root/usr/local/openresty/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty/lualib CC=gcc
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-rds-parser-0.05 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/luajit-root/usr/local/openresty/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty/lualib CC=gcc
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/nginx-1.5.8 && $(MAKE)

install: all
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/LuaJIT-2.1-20140109 && $(MAKE) install TARGET_STRIP=@: CCDEBUG=-g PREFIX=/usr/local/openresty/luajit DESTDIR=$(DESTDIR)
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-cjson-1.0.3 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/luajit-root/usr/local/openresty/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty/lualib CC=gcc
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-redis-parser-0.10 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/luajit-root/usr/local/openresty/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty/lualib CC=gcc
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-rds-parser-0.05 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/luajit-root/usr/local/openresty/luajit/include/luajit-2.1 LUA_LIB_DIR=/usr/local/openresty/lualib CC=gcc
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-dns-0.11 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-memcached-0.13 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-redis-0.18 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-mysql-0.14 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-string-0.08 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-upload-0.09 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-websocket-0.02 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-lock-0.02 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/lua-resty-core-0.0.3 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/usr/local/openresty/lualib INSTALL=/home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/install
	cd /home/gurudath/Desktop/Project/unicorn-and-nginx/ngx_openresty-1.5.8.1/build/nginx-1.5.8 && $(MAKE) install DESTDIR=$(DESTDIR)

clean:
	rm -rf build
