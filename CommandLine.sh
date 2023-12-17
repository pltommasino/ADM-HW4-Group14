duration_col=3
title_col=4
row_col=1

#Q1
most_watched_film=$(awk -F, -v duration_col="$duration_col" -v title_col="$title_col" 'BEGIN{OFS=","} $duration_col > 0 {movie_duration[$title_col] += $duration_col} END{for (title in movie_duration) printf "%.1f,%s\n", movie_duration[title], title}' vodclickstream_uk_movies_03.csv | sort -t',' -k1,1nr | head -n 1)
echo "The number of seconds of the most watched film and its name is: "$most_watched_film""

#Q2
#Sort the dataset based on the second column
sorted_file=$(sort -t',' -k2,2 vodclickstream_uk_movies_03.csv)

# The gawk is a more powerful version of awk
gawk -F, '{
    current_row = mktime(gensub(/[-:]/, " ", "g", $2));

    if (NR > 1) {
        difference_row = current_row - prev_row;
        sum += difference_row;
    }

    prev_row = current_row;
} END {
    
    if (NR > 1) {

        sum= (sum-difference_row)
        average_diff = sum / (NR - 1)

        print "The average time between two subsequent clicks on Netflix is: " average_diff " seconds";
    }
}' <<< "$sorted_file"

#Q3
most_user_Netflix_id=$(awk -F, -v duration_col="$duration_col" 'BEGIN{OFS=","} $duration_col > 0 {movie_duration[$NF] += $duration_col} END{for (user in movie_duration) printf "%.1f,%s\n", movie_duration[user], user}' vodclickstream_uk_movies_03.csv | sort -t',' -k1,1nr | head -n 1)
echo "The time that a user has spent the most time on Netflix and his id is:"$most_user_Netflix_id""