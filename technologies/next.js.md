# Next.js

## Deploying Applications to Ubuntu

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

### Resources
* [https://tech.willandskill.se/nextjs-with-pm2-nginx-and-yarn-on-ubuntu-1804/](https://tech.willandskill.se/nextjs-with-pm2-nginx-and-yarn-on-ubuntu-1804/)
* [https://www.nginx.com/blog/nginx-nodejs-websockets-socketio/](https://www.nginx.com/blog/nginx-nodejs-websockets-socketio/)
* [https://www.digitalocean.com/community/questions/serving-nextjs-along-with-python-api-on-nginx](https://www.digitalocean.com/community/questions/serving-nextjs-along-with-python-api-on-nginx)
* [https://gist.github.com/Kocisov/2a9567eb51b83dfef48efce02ef3ab06](https://gist.github.com/Kocisov/2a9567eb51b83dfef48efce02ef3ab06)
