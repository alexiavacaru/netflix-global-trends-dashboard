# Netflix Global Trends Dashboard

I chose this topic because streaming is part of everyday life, and Netflix is a platform I use myself, so I was curious to see what is actually in its catalog. The dataset also has information about countries, genres, ratings and dates, which made it a good fit for practicing Excel, Power BI and advanced statistical plotting in R. I made this project to practice the whole process, from raw data to a finished report.

## questions

- how many titles are movies and how many are TV shows?
- which years have the most releases?
- which countries have the most titles?
- which genres and ratings are the most common?
- how did production trends evolve over time, and what are the statistical outliers in movie durations?

## data

Netflix Movies and TV Shows (Kaggle): https://www.kaggle.com/datasets/shivamb/netflix-shows

## steps

1. cleaned the data in Excel (duplicates, empty cells, dates, duration)
2. built the model and measures in Power BI
3. made the dashboard with slicers for type, year and country
4. analyzed trends and statistical outliers in RStudio using ggplot2

## structure

```
netflix-global-trends-dashboard/
├── README.md
├── data/
│   ├── raw/
│   │   └── netflix_titles.csv
│   └── processed/
│       └── netflix_clean.xlsx
        └── README.md
├── reports/
│   ├── netflix_dashboard.xlsx
│   └── dashboard_preview.png
│   └──interpretations_and_analysis.docx
└──── src/
│    ├── netflix_analysis.R
│    ├── genre_trends_evolution.png
│   └── movies_duration_boxplot.png
└──── 
```


