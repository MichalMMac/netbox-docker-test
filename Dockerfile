FROM netboxcommunity/netbox:latest

COPY ./plugin_requirements.txt /
RUN apk add --no-cache xmlsec
RUN /opt/netbox/venv/bin/pip install  --no-warn-script-location -r /plugin_requirements.txt

# CommentX
