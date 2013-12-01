.PHONY: thumbs jekyll

img/thumb/%.jpg: img/full/%.jpg
	convert -resize 320x99999\> $< $@

img/thumb/%.png: img/full/%.png
	convert -resize 320x99999\> $< $@

img/thumb/%.gif: img/full/%.gif
	convert -resize 320x99999\> $< $@

img/thumb/%.psd:
	@true


all: thumbs jekyll



thumbs: $(patsubst img/full/%,img/thumb/%,$(wildcard img/full/*))

jekyll:
	@jekyll

exif_summaries:
	@git status | egrep "full.*jpg$$" | cut -d'/' -f3 | while read IMG ; do /bin/echo -e "{% insert_image $${IMG} %}\nCaption: $$(./exif_summary.sh img/full/$${IMG})\n" ; done

add_photos:
	git status | egrep -o '_posts.*' | head -1 | while read POST ; do egrep 'DS8|DSCF' "$$POST" | awk '{ print $$3 }' | while read PHOTO ; do git add "img/full/$$PHOTO" ; git add "img/thumb/$$PHOTO" ; done ; done

