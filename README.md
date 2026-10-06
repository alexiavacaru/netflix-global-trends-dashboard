# Netflix Global Trends Dashboard

I chose this topic because streaming is part of everyday life, and Netflix is a platform I use myself, so I was curious to see what is actually in its catalog. The dataset also has information about countries, genres, ratings and dates, which made it a good fit for practicing Excel and Power BI. I made this project to practice the whole process, from raw data to a finished report.

## questions

- how many titles are movies and how many are TV shows?
- which years have the most releases?
- which countries have the most titles?
- which genres and ratings are the most common?

## Data

Netflix Movies and TV Shows (Kaggle): https://www.kaggle.com/datasets/shivamb/netflix-shows

## steps

1. cleaned the data in Excel (duplicates, empty cells, dates, duration)
2. built the model and measures in Power BI
3. made the dashboard with slicers for type, year and country

## structure

```
netflix-global-trends-dashboard/
├── README.md
├── data/
│   ├── raw/
│   │   └── netflix_titles.csv
│   └── processed/
│       └── netflix_clean.xlsx
├── reports/
│   ├── netflix_dashboard.pbix
│   └── dashboard_preview.png
└── docs/
    ├── data_dictionary.md
    └── cleaning_log.md
```


