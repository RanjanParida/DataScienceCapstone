## This script is to predict the next word based on user input

predictedWord <- function (Source, Text) {

    if (Text!=""){
        
        ## Text <- cleanText(Text);
        
        ## Get the n-gram tokens
        k <- unlist(strsplit(Text, " "));
        n <-length(k);
        b <- k[n-1:n];
        cat(length(b));
        cat(b[1]);
## DETERMINE THE SOURCE AND LOAD REFERENCE DATA
        if (Source=="news") {
            rs <- news[news$V1==b[1] & news$V2==b[2], ]$V3;
            cat(rs[1]);
            if (length(rs) == 0){
                rs <- news[news$V1=="UNK" & news$V2==b[2], ]$V3;
                cat(rs[1]);
            }
            if (length(rs) == 0){
                rs <- news[news$V1=="UNK" & news$V2=="UNK", ]$V3;
                cat(rs[1]);
            }
            
            as.character(rs[1]);
        }
        
     

    } else Text;
}