#!/bin/bash

service mysql start

bundle exec rake db:create

bundle exec rake db:migrate

bin/rails server