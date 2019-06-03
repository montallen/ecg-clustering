vcg_cluster <- function(qrs,k)
{
  
  #Input
  #qrs: list of magnitule leads
  ####dist_method: method for computind the dissimilatiry. It can be one of: "DTWARP", "FRECHET"...
  #k: number of clusters desired
  
  #Output
  #cut: vector containing the index of the cluster each QRS belonges to
  
  
  
  #----Generation of the proximity matrix----#----
  
  #Initialize a proximity matrix
  nrFiles <- length(qrs)
  D <- matrix(0, nrFiles, nrFiles) 
  
  for(row in 1:nrFiles) {
    print(row)
    for(col in 1:row) {
      D[row,col] <- diss.DTWARP(qrs[[row]],qrs[[col]], "Manhattan")
    }
  }
  
  #Convert the distance matrix in the dist class (for hclust)
  dist <- as.dist(D)
  
  
  #----Hierarchical clustering----#----
  
  clust <- hclust(dist, method = "ward.D")
  
  
  
  
  #Plot dentrogram
  # plot(clust)
  # 
  # 
  # #Cut tree to the desired level  k (number of clusters)
  # 
  # cut = cutree(clust, k)
  # 
  
  
  return(clust)            
}