all:
	rm -rf catchbot
	git clone https://github.com/grihabor/catch-hook-telegram-bot catchbot
	docker-compose up --build
