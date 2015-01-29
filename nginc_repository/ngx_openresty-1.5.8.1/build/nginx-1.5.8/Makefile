
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile
	$(MAKE) -f objs/Makefile manpage

install:
	$(MAKE) -f objs/Makefile install

upgrade:
	/home/gurudath/RubymineProjects/unicorn-and-nginx/nginc_repository/nginx/sbin/nginx -t

	kill -USR2 `cat /home/gurudath/RubymineProjects/unicorn-and-nginx/nginc_repository/nginx/logs/nginx.pid`
	sleep 1
	test -f /home/gurudath/RubymineProjects/unicorn-and-nginx/nginc_repository/nginx/logs/nginx.pid.oldbin

	kill -QUIT `cat /home/gurudath/RubymineProjects/unicorn-and-nginx/nginc_repository/nginx/logs/nginx.pid.oldbin`
