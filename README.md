# Bamwor Open Data

Free, open country datasets from the **[Bamwor World Encyclopedia](https://bamwor.com)**.

14 datasets covering **190+ countries** with population, GDP, area, life expectancy, and 10 more indicators. Updated annually from the CIA World Factbook.

## Datasets

| Dataset | File | Countries | Unit |
|---------|------|-----------|------|
| Population | [`countries-by-population-2026-bamwor.csv`](datasets/countries-by-population-2026-bamwor.csv) | 238 | people |
| Area | [`countries-by-area-2026-bamwor.csv`](datasets/countries-by-area-2026-bamwor.csv) | 232 | km² |
| GDP (PPP) | [`countries-by-gdp-2026-bamwor.csv`](datasets/countries-by-gdp-2026-bamwor.csv) | 216 | USD |
| GDP per Capita | [`countries-by-gdp-per-capita-2026-bamwor.csv`](datasets/countries-by-gdp-per-capita-2026-bamwor.csv) | 195 | USD |
| Life Expectancy | [`countries-by-life-expectancy-2026-bamwor.csv`](datasets/countries-by-life-expectancy-2026-bamwor.csv) | 220 | years |
| Birth Rate | [`countries-by-birth-rate-2026-bamwor.csv`](datasets/countries-by-birth-rate-2026-bamwor.csv) | 221 | per 1,000 |
| Death Rate | [`countries-by-death-rate-2026-bamwor.csv`](datasets/countries-by-death-rate-2026-bamwor.csv) | 221 | per 1,000 |
| Literacy Rate | [`countries-by-literacy-rate-2026-bamwor.csv`](datasets/countries-by-literacy-rate-2026-bamwor.csv) | 102 | % |
| Unemployment | [`countries-by-unemployment-2026-bamwor.csv`](datasets/countries-by-unemployment-2026-bamwor.csv) | 155 | % |
| Inflation | [`countries-by-inflation-2026-bamwor.csv`](datasets/countries-by-inflation-2026-bamwor.csv) | 177 | % |
| Internet Users | [`countries-by-internet-users-2026-bamwor.csv`](datasets/countries-by-internet-users-2026-bamwor.csv) | 219 | % |
| Military Spending (% GDP) | [`countries-by-military-spending-2026-bamwor.csv`](datasets/countries-by-military-spending-2026-bamwor.csv) | 130 | % GDP |
| Coastline | [`countries-by-coastline-2026-bamwor.csv`](datasets/countries-by-coastline-2026-bamwor.csv) | 225 | km |
| Highest Elevation | [`countries-by-highest-elevation-2026-bamwor.csv`](datasets/countries-by-highest-elevation-2026-bamwor.csv) | 230 | m |

## Data Format

Each CSV file includes:

```
Rank, Country, ISO Code, Region, Value, Year, Source URL
```

Example (Population):

```csv
Rank,Country,ISO Code,Region,Population,Year,Source URL
1,China,CH,East & Southeast Asia,1416043270,2025,https://bamwor.com/en/countries/china
2,India,IN,South Asia,1409128296,2025,https://bamwor.com/en/countries/india
3,United States,US,North America,341963408,2025,https://bamwor.com/en/countries/united-states
```

Files also contain metadata headers (commented with `#`) with source attribution, license, and generation date.

## Data Source

All data originates from the **CIA World Factbook**, processed and maintained by the [Bamwor World Encyclopedia](https://bamwor.com).

Browse the full interactive rankings at:
- [Countries by Population](https://bamwor.com/en/countries-by-population)
- [Countries by GDP](https://bamwor.com/en/countries-by-gdp)
- [Countries by Area](https://bamwor.com/en/countries-by-area)
- [Countries by Life Expectancy](https://bamwor.com/en/countries-by-life-expectancy)
- [All datasets](https://bamwor.com/en/datasets)

## Download

Clone this repo:

```bash
git clone https://github.com/bamwor-dev/bamwor-open-data.git
```

Or download individual CSVs directly from the [datasets/](datasets/) folder.

You can also download any dataset via the Bamwor API:

```
https://bamwor.com/api/csv/population
https://bamwor.com/api/csv/gdp
https://bamwor.com/api/csv/area
...
```

## Update Script

Run the update script to refresh all datasets from the Bamwor API:

```bash
./scripts/update-datasets.sh
```

## License

All datasets are licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

You are free to:
- **Share** — copy and redistribute the data in any format
- **Adapt** — remix, transform, and build upon the data for any purpose, including commercial

Under the following terms:
- **Attribution** — You must give appropriate credit: *"Data from [Bamwor](https://bamwor.com)"*

## Citation

If you use this data in academic work or publications:

**APA:**
```
Bamwor. (2026). World Country Datasets. Bamwor World Encyclopedia. https://bamwor.com/en/datasets
```

**BibTeX:**
```bibtex
@misc{bamwor_open_data_2026,
  author = {Bamwor},
  title = {World Country Datasets},
  year = {2026},
  url = {https://bamwor.com/en/datasets},
  note = {Bamwor World Encyclopedia. CC BY 4.0}
}
```

## Links

- [Bamwor World Encyclopedia](https://bamwor.com)
- [Datasets Catalog](https://bamwor.com/en/datasets)
- [Rankings](https://bamwor.com/en/rankings)
- [Country Comparisons](https://bamwor.com/en/compare)
