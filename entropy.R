entropy <- function(df) {
  y <- colnames(df)[ncol(df)]
  res <- list()
  df[,1]<-NULL
  for (x in colnames(df)[-ncol(df)]) {
    t <- table(df[[x]], df[[y]])
    H <- numeric(nrow(t))
    
    for (i in 1:nrow(t)) {
      prop <- t[i, ] / sum(t[i, ])
      prop <- prop[prop > 0]
      h <- -sum(prop * log2(prop))
      H[i] <- ifelse(is.na(h), 0, h)
    }
    
    res[[x]] <- H
  }
  
  return(res)
}
df <- read.csv("ClassificationSimpleLab.csv")
ent_res <- entropy(df)
ent_res


