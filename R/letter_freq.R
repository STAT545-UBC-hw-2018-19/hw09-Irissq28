words <- readLines("words.txt")
# count the total number of each letter
# using letters R built-in vector
letter_num <- sapply(letters, function(l){
	l <- sum((l==unlist(strsplit(words,""))))
})
# calculating the frequency of each letter
# letter_freq <- table(letter_num) / length(letter_num)
write.table(letter_num, "letter_freq.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)



