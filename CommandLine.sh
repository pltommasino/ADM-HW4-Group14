
# QUESTION1
duration_col=3
title_col=4

most_watched_film=$(awk -F',' -v duration_col="$duration_col" -v title_col="$title_col" 'BEGIN{OFS=","} $duration_col > 0 {movie_duration[$title_col] += $duration_col} END{for (title in movie_duration) printf "%.1f,%s\n", movie_duration[title], title}' vodclickstream_uk_movies_03.csv | sort -t',' -k1,1nr | head -n 1)

echo "$most_watched_film"