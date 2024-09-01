gini <- function(df) {
  y <- colnames(df)[ncol(df)]
  res <- list()
  df[,1]<-NULL
  for (x in colnames(df)[-ncol(df)]) {
    t <- table(df[[x]], df[[y]])
    G <- numeric(nrow(t))
    
    for (i in 1:nrow(t)) {
      prop <- t[i, ] / sum(t[i, ])
      g <- 1 - sum(prop^2)
      G[i] <- g
    }
    
    res[[x]] <- G
  }
  
  return(res)
}

df <- read.csv("ClassificationSimpleLab.csv")
gini_res <- gini(df)
gini_res
