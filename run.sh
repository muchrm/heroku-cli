#!/bin/bash
(echo "$HEROKU_TOKEN" | base64 -d) > ~/.netrc

/usr/local/bin/heroku