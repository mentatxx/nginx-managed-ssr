# nginx-managed-ssr

Configure your website in runtime with environment variables. Also supports React/Angular path rewrite to /index.html

## How to use:

1. Make runtime variables available to your JS code

Just include this snippet in your `index.html`

```
<!--# include file="environment.js" -->
```

Now you can access your environemnt variables via `window.environment.<VARIABLE_NAME>`

2. Directly output variable values to `.html` files

```
<!--# echo <VARBLE_NAME> -->
```

## How to write Dockerfile

```
FROM mentatxx/nginx-managed-ssr
COPY build /usr/share/nginx/html
```

where `build` is your built site folder (change to appropriate)
