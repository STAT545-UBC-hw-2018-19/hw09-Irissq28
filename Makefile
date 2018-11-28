all: report.html letter_freq.html make_dir

clean:
	rm -r data images output
	
make_dir:
	mkdir data
	mkdir images
	mkdir output
	mv words.txt histogram.tsv letter_freq.tsv data
	mv histogram.png letter_freq.png images
	mv report.md report.html letter_freq.md letter_freq.html output


report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: R/histogram.r words.txt
	Rscript $<

letter_freq.tsv: R/letter_freq.R words.txt
	Rscript $<
	
letter_freq.png: letter_freq.tsv
	Rscript -e 'library(ggplot2); ggplot(read.delim("$<"), aes(x = letters, y = x)) + geom_bar(stat = "identity", fill = "blue") + theme_bw() + labs(x= "letters", y = "frequency", title = "The frequecy of each letter"); ggsave("$@")'
	rm Rplots.pdf
	
letter_freq.html: letter_freq.Rmd letter_freq.tsv letter_freq.png
	Rscript -e 'rmarkdown::render("$<")'
	
words.txt: 
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'

	
# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
