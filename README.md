# Netflix Global Trends Dashboard

A dashboard about the Netflix catalog, made with Excel and Power BI.

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


