preview:
	DATE=$$(git log -1 --format=%cd --date=format:"%-d %B %Y"); \
	pandoc essay.md \
	--standalone \
	--template=assets/template/template.html \
	--citeproc \
	--csl=https://www.zotero.org/styles/apa \
	--toc \
	--metadata last_updated="$$DATE" \
	--output=preview.html