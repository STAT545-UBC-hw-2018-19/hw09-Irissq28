---
title: "The frequecy of each letter"
author: "Irissq28"
data: "2018-11-26"
output:
  html_document:
    keep_md: yes
---

Load the data.


```r
letterfre_data <- read.delim("letter_freq.tsv")
```


Displaying the frequency of each letter by a scatterplot.


```r
suppressPackageStartupMessages(library(ggplot2))
suppressPackageStartupMessages(library(tidyverse))
letterfre_data <- data.frame(letterfre_data)
letterfre_data %>%
	ggplot(aes(x = letters, y =x, color = letters)) +
	geom_point(show.legend = FALSE) +
	theme_bw() +
	labs(x= "letters", y = "frequency", 
			 title = "Scatterplot of letters frequency") +
	theme(plot.title = element_text(size = 12,hjust = 0.5))
```

![](letter_freq_files/figure-html/unnamed-chunk-1-1.png)<!-- -->

Here I calculated the frequency of each letter in word.txt, and plot it into histogram.

![*Fig. 2* The frequency of each letter](letter_freq.png)
