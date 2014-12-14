## This script is to predict the next word based on user input

predictedWord <- function (Source, Text) {

    if (length(Text)!=0){
        
        Text <- cleanText(Text);
        
        if (length(Text) != 0){
            
            ## Get the tokens
            k <- unlist(strsplit(Text, " "));
            n <-length(k);
            a <- if(n > 1) k[n-1] else "UNK";
            b <- if(n > 0) k[n] else "UNK";
            
            ## If Source is News 
    
            if (Source=="news") {
                rs <- news[news$V1==a & news$V2==b, ]$V3;
                
                if (length(rs) == 0){
                    rs <- news[news$V1=="UNK" & news$V2==b, ]$V3;
                }
                
                if (length(rs) == 0){
                    rs <- news[news$V1=="UNK" & news$V2=="UNK", ]$V3;
                }
            }
            
            ## If Source is Twitter 
            
            if (Source=="twitter") {
                rs <- twitter[twitter$V1==a & twitter$V2==b, ]$V3;
                
                if (length(rs) == 0){
                    rs <- twitter[twitter$V1=="UNK" & twitter$V2==b, ]$V3;
                }
                
                if (length(rs) == 0){
                    rs <- twitter[twitter$V1=="UNK" & twitter$V2=="UNK", ]$V3;
                }
            }
            
            
            ## If Source is Blogs 
            
            if (Source=="blogs") {
                rs <- blogs[blogs$V1==a & blogs$V2==b, ]$V3;
                
                if (length(rs) == 0){
                    rs <- blogs[blogs$V1=="UNK" & blogs$V2==b, ]$V3;
                }
                
                if (length(rs) == 0){
                    rs <- blogs[blogs$V1=="UNK" & blogs$V2=="UNK", ]$V3;
                }
            }
            
            as.character(rs);
            
            } else Text;
        
        } else Text;
}