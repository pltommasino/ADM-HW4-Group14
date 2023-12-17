# Homework 4 - Recommendation systems and clustering everywhere
## ADM - Group 14
### Introduction

This project was carried out by Group 14 of Algorithmic Methods for Data Mining, consisting of:

| NAME and SURNAME | EMAIL |
| --- | --- |
| Pasquale Luca Tommasino | tommasino.1912107@studenti.uniroma1.it | 
| Alessio Lani | lani.1857003@studenti.uniroma1.it |
| Jose Àngel Mola | molaaudi.2116134@studenti.uniroma1.it |


### Description of the project

All the points of the project are contained in a single main file called `HW4_main.ipynb`.

### 1. Recommendation sytem
This part tries to take those movies highlighted by the users (the top 10 best for each user) and by means of hashing techniques, represent each user with the genres in a matrix where it will be indicated with a binary answer if that user corresponds to one genre or another. Subsequently, the minhasging signatures matrix will be created, so that at the end a LSH will be performed to obtain the two most similar users to a given user and will recommend 5 movies based on this.

### 2. Grouping Users together!
2.1 After creating the first five (mandatory) variables, we created 10 more: Sum click duration per user, Number of Times Movies Watched, Number of Movies Watched, Number of Movies Re-Watched, First Watched Movie Date, Last Watched Movie Date, Days Since Last Watched (Inactivity), Favourite Month to Watch Movies, Favourite Year to Watch Movies and Average time elapsed from film release and user watched (per user_id).

2.2 We normalized the data so that the following analysis won't be affected by the unit of measure and than we used the Principal Component Analysis to reduce the dimensionality of the data. 

2.3 We implement K-means and K-means++ algorthms. In order to use K-means, it is necessary to find the natural number  of clusters of the data being examined. To do this there are several methods, some of the commonly used are: The Elbow Method, The Silhouette Method and The Calinski-Harabasz Index. And we explain the difference with other clustering algorithm: Gaussian Mixture.

2.4 We chose 4 variables in our dataset, which in our opinion, may be the most relevant, because represent 4 different aspects of each user's behavior on the platform: fav_filmera' (Favourite Film Era by each user), 'duration_avg' (Average Duration of all watched film by each user), 'duration_perday_avg' (Average Duration of all watched film per day by each user) and 'fav_timeofday' (Favourite Time of day). We used also Davies-Bouldin Index for estimate clustering algorithm performance.

### 4. Command Line Question
In this part we with command line questions we have answered which is the most-watched film, which is the average time between subsequent clicks on Netflix.com and the ID of the user that spent most time in Netflix.

### 5. Algorithmic Question
In this part we have to find an algorithm that find the best way to chose the exams to obtain the best possible final grade following the rules of the univerisity. I found out that to maximaze the final grade the student has to chose an exam with a small mark and then an exam with a big mark and so on and is important that the last exam is one with a big mark so we have adjusted the list of marks of the exams in a proper way and then we uptaded this list following the rule given by the univeristy. At the beginning the complexity was O(N^2) after I improved it and I arrived at a complexity of O(NlogN) in the also using chatgpt the complexity didn't improved but in the average case we arrived at a complexity of O(N).
