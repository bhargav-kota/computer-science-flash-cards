#!/bin/bash

if [ ! -f /src/db/cards.db ]; then
	cp cards-empty.db /src/db/cards.db
	cp docker_flash_cards.db /src/db/docker_flash_cards.db
fi

export CARDS_SETTINGS=/src/config.txt
gunicorn --bind  0.0.0.0:8000 flash_cards:app