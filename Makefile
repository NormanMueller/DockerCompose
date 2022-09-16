.PHONY: all build
SHELL=/usr/bin/env bash

local-app:
	@docker-compose -f docker-compose-app.yml up 
	
TEST_EVENT_EVENTSCOMPLETER := '$(shell cat test.json)'

local-test:
	@echo "Sending sample events to local lambda container ..."
	curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d ${TEST_EVENT_EVENTSCOMPLETER}