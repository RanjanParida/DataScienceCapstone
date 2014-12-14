## This script is to load the Global Dataset
blogs <- read.table("data/final.blogs.txt");
blogs <- transform(blogs, 
                  V1 = as.character(V1), 
                  V2 = as.character(V2),
                  V3 = as.character(V3));

twitter <- read.table("data/final.twitter.txt");
twitter <- transform(twitter, 
                   V1 = as.character(V1), 
                   V2 = as.character(V2),
                   V3 = as.character(V3));


news <- read.table("data/final.news.txt");
news <- transform(news, 
                  V1 = as.character(V1), 
                  V2 = as.character(V2),
                  V3 = as.character(V3));