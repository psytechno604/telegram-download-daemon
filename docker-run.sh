#!/bin/sh

docker run --env-file .env -v /home/sergey/Code/tgplay/tdd:/session -v /home/sergey/Code/tgplay/dest:/dest -v /home/sergey/Code/tgplay/temp:/temp --memory 256m tdd
