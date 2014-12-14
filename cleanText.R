## This function is to clean the user entered Text with same filters as was
## applied to the training dataset

cleanText <- function(txt) {
    
    txt <- iconv(str_trim(txt), "UTF-8", "ASCII", sub="");    
    txt <- gsub("[[:punct:]]"," ", txt);
    txt <- gsub("\\d+", "", txt);
    txt <- tolower(txt[txt != ""]);
    
}