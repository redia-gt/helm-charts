#!/bin/bash

set -eou pipefail

helm upgrade --install redia-website . --namespace redia \
    --set redia.env.emailHost="${EMAIL_HOST}" \
    --set redia.env.emailPass="${EMAIL_PASS}" \
    --set redia.env.emailPort="${EMAIL_PORT}" \
    --set redia.env.emailUser="${EMAIL_USER}"
