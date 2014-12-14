## This script is to load the Global Dataset

news <- read.table("data/final.news.txt");
news <- transform(news, 
                  V1 = as.character(V1), 
                  V2 = as.character(V2),
                  V3 = as.character(V3));