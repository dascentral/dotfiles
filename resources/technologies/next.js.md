# Next.js

## Deploying Applications to Ubuntu

Information below came from a well written and simple article by the folks at Will & Skill Developers: [Setup a Next.js project with PM2, Nginx and Yarn on Ubuntu 18.04](https://tech.willandskill.se/nextjs-with-pm2-nginx-and-yarn-on-ubuntu-1804/).

### Process Management


Recommend use of PM2 - [https://pm2.keymetrics.io/](https://pm2.keymetrics.io/)

```bash
npm install pm2 -g
```

Configure PM2 to run at startup. See the [Startup Hook](https://pm2.io/doc/en/runtime/guide/startup-hook/) docs for details.

```bash
pm2 startup
```

Ensure all commands related to startup run as `root`. Pay special attention to the note regarding use of NVM to manage Node.js versions. The startup command will need to be run each time the version of Node.js changes.

Start your application as a PM2 process by running the following within the root folder of the application.

```bash
pm2 start npm --name "app-name" -- start
```

The following command is used to save the active list of processes such that they will be restarted upon reboot.

```bash
pm2 save
```

### Nginx Config

```bash
##
### Development
##
server {
    server_name site.com;
    
    location / {
        # reverse proxy for next server
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
        
        # we need to remove this 404 handling
        # because next's _next folder and own handling
        # try_files $uri $uri/ =404;
    }

    location /_next/ {
        alias /usr/share/nginx/html/path/to/app/.next/;
        expires 30d;
        access_log on;
    }

    access_log /var/log/nginx/site.com-access.log combined;
    error_log  /var/log/nginx/site.com-error.log error;

    location = /favicon.ico { access_log off; log_not_found off; }
    location = /robots.txt  { access_log off; log_not_found off; }

    location ~ /\.git {
        deny all;
    }

    location ~ /\.ht {
        deny all;
    }
}
```

## Resources

* [https://tech.willandskill.se/nextjs-with-pm2-nginx-and-yarn-on-ubuntu-1804/](https://tech.willandskill.se/nextjs-with-pm2-nginx-and-yarn-on-ubuntu-1804/)
* [https://www.nginx.com/blog/nginx-nodejs-websockets-socketio/](https://www.nginx.com/blog/nginx-nodejs-websockets-socketio/)
* [https://www.digitalocean.com/community/questions/serving-nextjs-along-with-python-api-on-nginx](https://www.digitalocean.com/community/questions/serving-nextjs-along-with-python-api-on-nginx)
* [https://gist.github.com/Kocisov/2a9567eb51b83dfef48efce02ef3ab06](https://gist.github.com/Kocisov/2a9567eb51b83dfef48efce02ef3ab06)
