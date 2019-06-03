# Shape-based Clustering of Electrocardiogrms using Dynamic Time Warping

This work in made in collboration with the Lab. of Experimental Cardiology, Department of Biomedical Sciences, University of Copenhagen.

### Authors
- Alessandro Montemurro, DTU Compute

### Description
This work focuses on clustering algorithm for electrocardiogram time series. 

A suitable similarity measure, capable of explaining the similarity between time series, has to be defined. 
This similarity measure has to be flexible because of the inter-subject variability. 
For this purpose, Dynamic Time Warping is used to sort individuals according to Male/Female. 
It will be shown that, to some extent, it is possible to automatically characterize a male (or female) heartbeat based on its shape.

The following picture shows how Dynamic Time Warping differs from Euclidean distance, fore instnce.

![dtw](https://github.com/AllenMont/ecg-clustering/blob/master/img/Difference-between-DTW-distance-and-Euclidean-distance-green-lines-represent-mapping.png)

Dynamic Time Warping seems to tackle this problem because it can reach a certain degree of time series aligment, as shown in the following plot.

![align](https://github.com/AllenMont/ecg-clustering/blob/master/img/alignment.png)
