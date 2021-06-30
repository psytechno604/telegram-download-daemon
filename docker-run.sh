#!/bin/sh

docker run --env-file .env.vps -v /usr/tgplay/tdd:/session -v /usr/tgplay/dest:/dest -v /usr/tgplay/temp:/temp -ti tdd bash
