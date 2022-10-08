PWD=$(shell pwd)
OUTPUT=out

LATEST_YEAR=$(shell date +%Y)
LATEST_ARCHIVES=calendar-archives
LATEST_CALENDAR=chinese-public-holidays

latest:
	mkdir -p $(PWD)/$(OUTPUT)
	cp $(PWD)/$(LATEST_ARCHIVES)/$(LATEST_CALENDAR)-$(LATEST_YEAR).ics $(PWD)/$(OUTPUT)/latest.ics

clean:
	rm -rf $(PWD)/$(OUTPUT)