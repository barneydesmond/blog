.PHONY: thumbs jekyll

_img_thumb/%.jpg: _img_full/%.jpg
	convert -resize 480x99999\> $< $@

_img_thumb/%.png: _img_full/%.png
	convert -resize 480x99999\> $< $@

_img_thumb/%.gif: _img_full/%.gif
	convert -resize 480x99999\> $< $@


all: thumbs jekyll



thumbs: $(patsubst _img_full/%,_img_thumb/%,$(wildcard _img_full/*.gif) $(wildcard _img_full/*.png) $(wildcard _img_full/*.jpg))

jekyll:
	@jekyll build
	ln -s /home/furinkan/git/blog/_img_thumb /home/furinkan/public_html/j.furinkan.meidokon.net/img/thumb
	ln -s /home/furinkan/git/blog/_img_full  /home/furinkan/public_html/j.furinkan.meidokon.net/img/full

exif_summaries:
	@git status | egrep "full.*jpg$$" | cut -d'/' -f3 | while read IMG ; do /bin/echo -e "{% insert_image $${IMG} %}\nCaption: $$(./exif_summary.sh img/full/$${IMG})\n" ; done

add_photos:
	git status | egrep -o '_posts.*' | head -1 | while read POST ; do egrep 'DS8|DSCF' "$$POST" | awk '{ print $$3 }' | while read PHOTO ; do git add "img/full/$$PHOTO" ; git add "img/thumb/$$PHOTO" ; done ; done
	# fgrep '{% insert_image' _posts/2013-08-13-yagen-valley-and-chasing-the-kappa.markdown | awk '{ print $3 }' | while read PHOTO ; do echo git add "img/full/$PHOTO" ; echo git add "img/thumb/$PHOTO" ; done



exif_summaries_%: _img_full/%-*-*.jpg
	@#ls -1 $^ | while read IMG ; do basename "$${IMG}" ; done
	@#ls -1 $^ | while read IMG ; do /bin/echo -e "{% insert_image $${IMG} %}\nCaption: $$(./exif_summary.sh img/full/$${IMG})\n" ; done
	@ls -1 $^ | while read IMG ; do /bin/echo -e "{% insert_image $$(basename $${IMG}) %}\nCaption: \n" ; done
	@#git status | egrep "full.*jpg$$" | cut -d'/' -f3 | while read IMG ; do /bin/echo -e "{% insert_image $${IMG} %}\nCaption: $$(./exif_summary.sh img/full/$${IMG})\n" ; done
