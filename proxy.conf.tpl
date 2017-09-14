server {
    location / {
        auth_request /auth/check;
        error_page 401 = /auth/login;

        proxy_pass ${BACKEND_URL};
    }

    location /auth/ {
        proxy_pass ${AUTH_SERVER_URL};
        proxy_pass_request_body off;
        proxy_set_header Content-Length "";
        proxy_set_header X-Original-URL ${PROXY_URL_BASE}$request_uri;
    }
}