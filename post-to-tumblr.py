#!/usr/bin/python

# https://api.tumblr.com/console/calls/user/info

# A Python Tumblr API v2 Client - https://github.com/tumblr/pytumblr

import pytumblr

client = pytumblr.TumblrRestClient(
    '<consumer_key>',
    '<consumer_secret>',
    '<oauth_token>',
    '<oauth_secret>',
)

# Create a link post
client.create_link('codingjester', \
                   title="I like to search things, you should too.", \
                   url="https://duckduckgo.com", \
                   description="Search is pretty cool when a duck does it.")
