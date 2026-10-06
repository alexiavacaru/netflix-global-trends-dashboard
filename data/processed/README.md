Before making any chart, I cleaned the data. If the data is messy, the numbers in the dashboard are wrong. For example, an empty country or a space at the start of a date can change the counts or break a chart. I kept the original file untouched and did all the cleaning with Excel formulas, so I can always see where a cleaned value came from.

1. first, I checked if any title appears twice
I checked show_id ➔ no duplicates
I checked title + type + release year ➔ no duplicates

I didn't have to delete anything, so all 8,807 rows stayed.

2. then I looked for the empty cells

I counted the empty cells in each column with COUNTBLANK, to see where the data was missing.

director ➔ 2,634 empty
cast ➔ 825 empty
country ➔ 831 empty
date_added ➔ 10 empty
rating ➔ 4 empty
duration ➔ 3 empty
3. I decided what to do with them

I didn't want to delete these rows, because they still have other useful information (type, genre, year).

director, cast, country ➔ I wrote "Unknown"
rating ➔ I wrote "Unknown"
date_added ➔ I left it empty, because only 10 titles are missing and I didn't want to invent a date
4. I noticed a few values in the wrong column

While looking at the empty cells, I saw that 3 movies had a problem. The movie length was written in the rating column, and the duration column was empty.

the movies are the Louis C.K. ones (74, 84 and 66 min)
I moved the minutes to the duration column
their rating became "Unknown"
5. I removed the extra spaces and commas

Some values looked fine but had small errors that would have caused problems later.

88 dates started with a space ➔ fixed with TRIM
1 title had a hidden space ➔ fixed
7 countries had a comma at the start or at the end, like "United Kingdom," ➔ removed the comma, so Power BI doesn't count it as a different country
6. I turned the date into a real date

The date_added column was just text, like "September 25, 2021". Excel can't sort or group text like a date.

I built a real date from the year, the month and the day
I added year_added ➔ so I can see how many titles were added each year
I added month_added ➔ so I can see the months
7. in the end, I split the duration

The duration column mixed minutes and seasons in the same text, like "90 min" or "2 Seasons". I can't calculate an average from text.

"90 min" ➔ 90 in duration_num and "min" in duration_unit
"2 Seasons" ➔ 2 in duration_num and "Seasons" in duration_unit

Now I can calculate the average movie length and the average number of seasons for TV shows.

Result

A clean table with 8,807 rows and 16 columns, ready to load into Power BI.
