DATE_YMD = $(shell date +%Y-%m-%d- )

%:
	cp TEMPLATE.markdown "$(DATE_YMD)$(shell echo "$@" | tr 'A-Z ' 'a-z-' | tr -cd 'A-Za-z0-9-').markdown"
	sed -r -i "s/POST_TITLE/$(shell echo "$@")/" "$(DATE_YMD)$(shell echo "$@" | tr 'A-Z ' 'a-z-' | tr -cd 'A-Za-z0-9-').markdown"

