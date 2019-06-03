library("TSclust")
library("dtw")
library("proxy")
library("tictoc")

#----Get some data----#----

#Patient 1
medianVCG_1 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/1_medianVCG.csv", 
                        header = FALSE)
markers_1 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/1_markers.csv", 
                      header = FALSE)

qrs_1 <- medianVCG_1[markers_1[3,]:markers_1[4,],]


#Patient 2
medianVCG_2 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/2_medianVCG.csv", 
                        header = FALSE)
markers_2 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/2_markers.csv", 
                      header = FALSE)

qrs_2 <- medianVCG_2[markers_2[3,]:markers_2[4,],]


#Patient 3
medianVCG_3 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/3_medianVCG.csv", 
                        header = FALSE)
markers_3 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/3_markers.csv", 
                      header = FALSE)

qrs_3 <- medianVCG_3[markers_3[3,]:markers_3[4,],]




#Patient4
medianVCG_4 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/4_medianVCG.csv", 
                        header = FALSE)
markers_4 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/4_markers.csv", 
                      header = FALSE)

qrs_4 <- medianVCG_4[markers_4[3,]:markers_4[4,],]


#Patient 5
medianVCG_5 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/5_medianVCG.csv", 
                        header = FALSE)
markers_5 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/5_markers.csv", 
                      header = FALSE)

qrs_5 <- medianVCG_5[markers_5[3,]:markers_5[4,],]


#Patient 6
medianVCG_6 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/6_medianVCG.csv", 
                        header = FALSE)
markers_6 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/6_markers.csv", 
                      header = FALSE)

qrs_6 <- medianVCG_6[markers_6[3,]:markers_6[4,],]


#Patent 7
medianVCG_7 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/7_medianVCG.csv", 
                        header = FALSE)
markers_7 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/7_markers.csv", 
                      header = FALSE)

qrs_7 <- medianVCG_7[markers_7[3,]:markers_7[4,],]


#Patient 8
medianVCG_8 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/8_medianVCG.csv", 
                        header = FALSE)
markers_8 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/8_markers.csv", 
                      header = FALSE)

qrs_8 <- medianVCG_8[markers_8[3,]:markers_8[4,],]


#Patient 9
medianVCG_9 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/9_medianVCG.csv", 
                        header = FALSE)
markers_9 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/9_markers.csv", 
                      header = FALSE)
qrs_9 <- medianVCG_9[markers_9[3,]:markers_9[4,],]


#Patient 10
medianVCG_10 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/10_medianVCG.csv", 
                         header = FALSE)
markers_10 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/10_markers.csv", 
                       header = FALSE)

qrs_10 <- medianVCG_10[markers_10[3,]:markers_10[4,],]


#Patient 11
medianVCG_11 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/11_medianVCG.csv", 
                         header = FALSE)
markers_11 <- read.csv("C:/Users/amont/Desktop/DTU/KU105 Advanced Physiological Modelling/Data/11_markers.csv", 
                       header = FALSE)

qrs_11 <- medianVCG_11[markers_11[3,]:markers_11[4,],]


qrs <- list()

qrs[[1]] <- qrs_1
qrs[[2]] <- qrs_2
qrs[[3]] <- qrs_3
qrs[[4]] <- qrs_4
qrs[[5]] <- qrs_5
qrs[[6]] <- qrs_6
qrs[[7]] <- qrs_7
qrs[[8]] <- qrs_8
qrs[[9]] <- qrs_9
qrs[[10]] <- qrs_10
qrs[[11]] <- qrs_11

#----DTW----#----
tic()
D <- matrix(1:121,11,11)*0

for(row in 1:nrow(D)) {
  for(col in 1:row) {
    D[row,col] <- diss.DTWARP(x = qrs[[col]], y = qrs[[row]])
       }
}
toc()
dist <- as.dist(D)/max(as.dist(D))

clust <- hclust(dist, method = "complete")

plot(clust)
