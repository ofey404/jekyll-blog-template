serve:
	(sleep 1; firefox --new-tab http://127.0.0.1:4000/) &
	jekyll serve

sync:
	rsync -avu --delete --exclude ".git" "_site/" "../ofey404.github.io" 

commit:
	cd ../ofey404.github.io 
	git add -A
	git commit -m "$(cm)"
	git push

.PHONY: serve sync commit
