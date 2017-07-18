FROM alpine:3.6
EXPOSE 7000

RUN apk update
RUN apk add bash
RUN apk add sqlite

RUN mkdir /home/chef
ADD . /home/chef

RUN sqlite3 /home/chef/setup/customcookdb.db < /home/chef/setup/recipe.sql
RUN sqlite3 /home/chef/setup/customcookdb.db < /home/chef/setup/ingredients.sql
RUN sqlite3 /home/chef/setup/customcookdb.db < /home/chef/setup/tags.sql
