## This script is to predict the next word based on user input

predictedWord <- function (Source, Text) {

    if (Text!=""){
        
        ## Text <- cleanText(Text);
        
        ## Get the n-gram tokens
        k <- unlist(strsplit(Text, " "));
        n <-length(k);
        if(n > 1) a <- k[n-1];
        b <- if(n > 0) k[n];

        if (Source=="news") {
            rs <- news[news$V1==a & news$V2==b, ]$V3;
            if (length(rs) == 0){
                rs <- news[news$V1=="UNK" & news$V2==b, ]$V3;
            }
            if (length(rs) == 0){
                rs <- news[news$V1=="UNK" & news$V2=="UNK", ]$V3;
            }
            as.character(rs);
        }
        
     

    } else Text;
}