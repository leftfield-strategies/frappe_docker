#!/bin/bash

# Replace environment variables in configuration files
export FRAPPE_SITE_NAME_HEADER=${FRAPPE_SITE_NAME_HEADER:-$host}
export BACKEND=${BACKEND:-backend:8000}
export SOCKETIO=${SOCKETIO:-websocket:9000}
export UPSTREAM_REAL_IP_ADDRESS=${UPSTREAM_REAL_IP_ADDRESS:-127.0.0.1}
export UPSTREAM_REAL_IP_HEADER=${UPSTREAM_REAL_IP_HEADER:-X-Forwarded-For}
export UPSTREAM_REAL_IP_RECURSIVE=${UPSTREAM_REAL_IP_RECURSIVE:-off}
export PROXY_READ_TIMEOUT=${PROXY_READ_TIMEOUT:-120}
export CLIENT_MAX_BODY_SIZE=${CLIENT_MAX_BODY_SIZE:-50m}

# Process template
envsubst '${BACKEND} ${SOCKETIO} ${FRAPPE_SITE_NAME_HEADER} ${PROXY_READ_TIMEOUT} ${CLIENT_MAX_BODY_SIZE}' \
    < /templates/nginx/frappe.conf.template > /etc/nginx/conf.d/default.conf

# Execute CMD
exec "$@"
