entropy_all <- function(d) {
  y <- colnames(d)[ncol(d)]
  res_entropy <- entropy(d)
  
  results <- list()
  e <- numeric(length(res_entropy))
  
  for (x in names(res_entropy)) {
    f <- table(d[[y]])
    H <- res_entropy[[x]]
    w <- table(d[[x]]) / nrow(d)
    xx <- sum(w * H, na.rm = TRUE)
    r <- -sum((f / nrow(d)) * log2(f / nrow(d)), na.rm = TRUE)
    e[which(names(res_entropy) == x)] <- r - xx
    results[[x]] <- list(weighted_entropy = xx, overall_entropy=r, info_gain = e[which(names(res_entropy) == x)])
  }
  max_e <- e[1]
  for (i in e) {
    max_e <- ifelse(i > max_e, i, max_e)
  }
  
  max_info_gain <- paste('Max info gain:', max_e)
  res <- list(results, max_info_gain)
  
  return(res)
}

df <- read.csv("ClassificationSimpleLab.csv")
ent_res <- entropy_all(df)
ent_res

gini_all <- function(df) {
  y <- colnames(df)[ncol(df)]
  res_gini <- gini(df)
  
  results <- list()
  e <- numeric(length(res_gini))
  
  for (x in names(res_gini)) {
    f <- table(df[[y]])
    G <- res_gini[[x]]
    w <- table(df[[x]]) / nrow(df)
    xx <- sum(w * G, na.rm = TRUE)
    r <- 1 - sum((f / nrow(df))^2)
    e[which(names(res_gini) == x)] <- r - xx
    results[[x]] <- list(gini_index = xx, overall_gini=r, info_gain = e[which(names(res_gini) == x)])
  }
  max_e <- e[1]
  for (i in e) {
    max_e <- ifelse(i > max_e, i, max_e)
  }
  
  max_info_gain <- paste('Max info gain:', max_e)
  res <- list(results, max_info_gain)
  
  return(res)
}
df <- read.csv("ClassificationSimpleLab.csv")
gini_res <- gini_all(df)
gini_res
