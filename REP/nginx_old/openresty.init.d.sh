#!/bin/sh
#
# chkconfig: 2345 55 25
# Description: Nginx init.d script, put in /etc/init.d, chmod +x /etc/init.d/nginx
#              For Debian, run: update-rc.d -f nginx defaults
#              For CentOS, run: chkconfig --add nginx
#
### BEGIN INIT INFO
# Provides:          nginx
# Required-Start:    $all
# Required-Stop:     $all
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: nginx init.d script
# Description:       OpenResty (aka. ngx_openresty) is a full-fledged web application server by bundling the standard Nginx core, lots of 3rd-party Nginx modules, as well as most of their external dependencies.
### END INIT INFO
#cd /home/gurudath/Desktop/WORKSPACE/uni_ngx_rails
#bash ./nginx/openresty.init.d.sh start


DESC="Nginx Daemon"
NAME=nginx
APP_ROOT=/home/gurudath/Desktop/Project/unicorn-and-nginx
NGX_ROOT=$APP_ROOT/$NAME
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
PREFIX=/usr/local/openresty/nginx
DAEMON=$PREFIX/sbin/nginx
CONF=$NGX_ROOT/conf/$NAME.conf
PID=$NGX_ROOT/logs/$NAME.pid
SCRIPT=$NGX_ROOT/openresty.init.d.sh

if [ ! -x "$DAEMON" ] || [ ! -f "$CONF" ]; then
    echo -e "\033[33m $DAEMON has no permission to run. \033[0m"
    echo -e "\033[33m Or $CONF doesn't exist. \033[0m"
    sleep 1
    exit 1
fi

do_start() {
    if [ -f $PID ]; then
        echo -e "\033[33m $PID already exists. \033[0m"
        echo -e "\033[33m $DESC is already running or crashed. \033[0m"
        echo -e "\033[32m $DESC Reopening $CONF ... \033[0m"
        $DAEMON -p $NGX_ROOT -s reopen -c $CONF
        sleep 1
        echo -e "\033[36m $DESC reopened. \033[0m"
    else
        echo -e "\033[32m $DESC Starting $CONF ... \033[0m"
        $DAEMON -p $NGX_ROOT -c $CONF
        sleep 1
        echo -e "\033[36m $DESC started. \033[0m"
    fi
}

do_stop() {
    if [ ! -f $PID ]; then
        echo -e "\033[33m $PID doesn't exist. \033[0m"
        echo -e "\033[33m $DESC isn't running. \033[0m"
    else
        echo -e "\033[32m $DESC Stopping $CONF ... \033[0m"
        $DAEMON -p $NGX_ROOT -s stop -c $CONF
        sleep 1
        echo -e "\033[36m $DESC stopped. \033[0m"
    fi
}

do_reload() {
    if [ ! -f $PID ]; then
        echo -e "\033[33m $PID doesn't exist. \033[0m"
        echo -e "\033[33m $DESC isn't running. \033[0m"
        echo -e "\033[32m $DESC Starting $CONF ... \033[0m"
        $DAEMON -p $NGX_ROOT -c $CONF
        sleep 1
        echo -e "\033[36m $DESC started. \033[0m"
    else
        echo -e "\033[32m $DESC Reloading $CONF ... \033[0m"
        $DAEMON -p $NGX_ROOT -s reload -c $CONF
        sleep 1
        echo -e "\033[36m $DESC reloaded. \033[0m"
    fi
}

do_quit() {
    if [ ! -f $PID ]; then
        echo -e "\033[33m $PID doesn't exist. \033[0m"
        echo -e "\033[33m $DESC isn't running. \033[0m"
    else
        echo -e "\033[32m $DESC Quitting $CONF ... \033[0m"
        $DAEMON -p $NGX_ROOT -s quit -c $CONF
        sleep 1
        echo -e "\033[36m $DESC quitted. \033[0m"
    fi
}

do_test() {
    echo -e "\033[32m $DESC Testing $CONF ... \033[0m"
    $DAEMON -p $NGX_ROOT -t -c $CONF
}

do_info() {
    $DAEMON -V
}

case "$1" in
 start)
 do_start
 ;;
 stop)
 do_stop
 ;;
 reload)
 do_reload
 ;;
 restart)
 do_stop
 do_start
 ;;
 quit)
 do_quit
 ;;
 test)
 do_test
 ;;
 info)
 do_info
 ;;
 *)
 echo "Usage: $SCRIPT {start|stop|reload|restart|quit|test|info}"
 exit 2
 ;;
esac

exit 0
