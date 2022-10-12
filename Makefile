PWD=$(shell pwd)
OUTPUT=out

LATEST_YEAR=$(shell date +%Y)
LATEST_ARCHIVES=calendar-archives
LATEST_CALENDAR=chinese-public-holidays

latest: $(LATEST_ARCHIVES)/$(LATEST_CALENDAR)-$(LATEST_YEAR).ics
	mkdir -p $(PWD)/$(OUTPUT)
	cp $(LATEST_ARCHIVES)/$(LATEST_CALENDAR)-$(LATEST_YEAR).ics $(OUTPUT)/latest.ics

clean: $(OUTPUT)
	rm -rf $(PWD)/$(OUTPUT)