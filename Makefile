.PHONY: thumbs jekyll

img/thumb/%.jpg: img/full/%.jpg
	convert -resize 320x99999\> $< $@


all: thumbs jekyll



thumbs: $(patsubst img/full/%,img/thumb/%,$(wildcard img/full/*))

jekyll:
	@jekyll

