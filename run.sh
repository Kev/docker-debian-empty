# Put any commands to run on startup in here

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
tail -F /var/log/nginx/error.log
