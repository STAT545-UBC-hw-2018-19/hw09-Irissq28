all: histogram.tsv

clean:
	rm -f words.txt histogram.tsv

histogram.tsv: histogram.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'