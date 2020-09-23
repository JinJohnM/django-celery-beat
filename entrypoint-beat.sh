#!/usr/bin/env bash

# while IFS='' read -r line || [[ -n "$line" ]]; do line=$(echo $line | sed -e "s/=/='/"); echo export ${line}\' >> $HOME/.env; done < <(env)

cd $APPLICATION_ROOT\mysite
celery -A mysite beat -l info --scheduler django_celery_beat.schedulers:DatabaseScheduler