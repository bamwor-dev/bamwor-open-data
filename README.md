# Bamwor Open Data

Free, open datasets from the **[Bamwor World Encyclopedia](https://bamwor.com)** — countries, cities, economics, military, population, energy, and proprietary indexes.

This repository contains two types of data:

1. **Ranking CSVs** — Single-indicator country rankings (population, GDP, area, etc.)
2. **Public Datasets** — Multi-field structured datasets for research, analysis, and integration

All data is maintained and verified by the Bamwor team. Updated periodically.

---

## Public Datasets

Comprehensive structured datasets in CSV and JSON formats. Located in [`datasets/public/`](datasets/public/).

| Dataset | Description | Records | Formats |
|---------|-------------|---------|---------|
| [global_countries](datasets/public/global_countries/) | All countries and territories — names in 4 languages, ISO codes, coordinates, regions | 261 | CSV, JSON |
| [global_cities_public](datasets/public/global_cities_public/) | Top 50,000 cities worldwide by population — coordinates, timezone, admin region, multilingual names | 50,000 | CSV, JSON |
| [global_economy](datasets/public/global_economy/) | GDP (PPP), GDP per capita, inflation, unemployment, public debt | 227 | CSV, JSON |
| [global_population](datasets/public/global_population/) | Population, birth/death rates, life expectancy, literacy, density | 254 | CSV, JSON |
| [global_military](datasets/public/global_military/) | Military personnel and defense spending (% GDP) | 176 | CSV, JSON |
| [global_energy](datasets/public/global_energy/) | Electricity consumption and oil production | 213 | CSV, JSON |
| [global_digital_infrastructure](datasets/public/global_digital_infrastructure/) | Internet penetration and electricity consumption | 237 | CSV, JSON |
| [global_bamwor_indices](datasets/public/global_bamwor_indices/) | All 9 Bamwor proprietary index scores per country | 244 | CSV, JSON |

### Bamwor Proprietary Indexes

| Acronym | Index | What it Measures |
|---------|-------|------------------|
| IBEU | Urban Scale Index | Largest city population as % of total |
| IBCP | Urban Concentration Index | Top 5 cities population as % of total |
| IBDA | Settlement Density Index | Populated places per 1,000 km² |
| IBEE | Economic Stability Index | GDP per capita, low inflation/unemployment/debt |
| IBFM | Military Strength Index | Personnel, spending, GDP composite |
| IBDI | Digital Infrastructure Index | Internet + electricity per capita |
| IBED | Education Index | Literacy + life expectancy composite |
| IBSA | Healthcare Index | Life expectancy + birth/death rates |
| IBGD | Geographic Diversity Index | Admin divisions, settlements, area |

---

## Ranking CSVs

Single-indicator country rankings. Located in [`datasets/`](datasets/). Each file includes metadata headers, ranks, and source URLs.

| Ranking | File | Countries |
|---------|------|-----------|
| Population | [`countries-by-population-2026-bamwor.csv`](datasets/countries-by-population-2026-bamwor.csv) | 238 |
| Area | [`countries-by-area-2026-bamwor.csv`](datasets/countries-by-area-2026-bamwor.csv) | 232 |
| GDP (PPP) | [`countries-by-gdp-2026-bamwor.csv`](datasets/countries-by-gdp-2026-bamwor.csv) | 216 |
| GDP per Capita | [`countries-by-gdp-per-capita-2026-bamwor.csv`](datasets/countries-by-gdp-per-capita-2026-bamwor.csv) | 195 |
| Life Expectancy | [`countries-by-life-expectancy-2026-bamwor.csv`](datasets/countries-by-life-expectancy-2026-bamwor.csv) | 220 |
| Birth Rate | [`countries-by-birth-rate-2026-bamwor.csv`](datasets/countries-by-birth-rate-2026-bamwor.csv) | 221 |
| Death Rate | [`countries-by-death-rate-2026-bamwor.csv`](datasets/countries-by-death-rate-2026-bamwor.csv) | 221 |
| Literacy Rate | [`countries-by-literacy-rate-2026-bamwor.csv`](datasets/countries-by-literacy-rate-2026-bamwor.csv) | 102 |
| Unemployment | [`countries-by-unemployment-2026-bamwor.csv`](datasets/countries-by-unemployment-2026-bamwor.csv) | 155 |
| Inflation | [`countries-by-inflation-2026-bamwor.csv`](datasets/countries-by-inflation-2026-bamwor.csv) | 177 |
| Internet Users | [`countries-by-internet-users-2026-bamwor.csv`](datasets/countries-by-internet-users-2026-bamwor.csv) | 219 |
| Military Spending | [`countries-by-military-spending-2026-bamwor.csv`](datasets/countries-by-military-spending-2026-bamwor.csv) | 130 |
| Coastline | [`countries-by-coastline-2026-bamwor.csv`](datasets/countries-by-coastline-2026-bamwor.csv) | 225 |
| Highest Elevation | [`countries-by-highest-elevation-2026-bamwor.csv`](datasets/countries-by-highest-elevation-2026-bamwor.csv) | 230 |

### Ranking CSV Format

```
Rank, Country, ISO Code, Region, Value, Year, Source URL
```

Example:
```csv
1,China,CH,East & Southeast Asia,1416043270,2025,https://bamwor.com/en/countries/china
2,India,IN,South Asia,1409128296,2025,https://bamwor.com/en/countries/india
```

---

## What's NOT Included

This repository publishes **free public subsets** of Bamwor's data. The following are **not** included:

- Full global cities database (476,000+ places) — only the top 50,000 are public
- Premium API access and commercial data feeds
- Internal enrichment data (airports, climate, amenities, air quality)
- Full-resolution Parquet exports

For commercial or research access to the complete dataset, visit [bamwor.com/developers](https://bamwor.com/en/developers).

---

## Quick Start

### Clone the repo

```bash
git clone https://github.com/bamwor-dev/bamwor-open-data.git
```

### Python

```python
import pandas as pd

# Load a ranking CSV
pop = pd.read_csv('datasets/countries-by-population-2026-bamwor.csv', comment='#')

# Load a public dataset
cities = pd.read_csv('datasets/public/global_cities_public/global_cities_public.csv')
economy = pd.read_csv('datasets/public/global_economy/global_economy.csv')
```

### JavaScript / Node.js

```javascript
const cities = require('./datasets/public/global_cities_public/global_cities_public.json');
const indices = require('./datasets/public/global_bamwor_indices/global_bamwor_indices.json');
```

### R

```r
cities <- read.csv("datasets/public/global_cities_public/global_cities_public.csv")
economy <- read.csv("datasets/public/global_economy/global_economy.csv")
```

---

## Update Script

Refresh ranking CSVs from the Bamwor API:

```bash
./scripts/update-datasets.sh
```

---

## License

All datasets are licensed under [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

You are free to **share** and **adapt** for any purpose, including commercial, as long as you provide attribution.

**Required attribution:** *"Data from [Bamwor](https://bamwor.com)"*

---

## Citation

**APA:**
```
Bamwor. (2026). Bamwor Open Data: World Country and City Datasets. Bamwor World Encyclopedia. https://bamwor.com
```

**BibTeX:**
```bibtex
@misc{bamwor_open_data_2026,
  author = {Bamwor},
  title = {Bamwor Open Data: World Country and City Datasets},
  year = {2026},
  url = {https://github.com/bamwor-dev/bamwor-open-data},
  note = {Bamwor World Encyclopedia. CC BY 4.0}
}
```

---

## Links

- [Bamwor World Encyclopedia](https://bamwor.com)
- [Bamwor Indexes](https://bamwor.com/en/indexes)
- [Rankings](https://bamwor.com/en/rankings)
- [Country Comparisons](https://bamwor.com/en/compare)
- [REST API for Developers](https://bamwor.com/en/developers)
- [API Documentation](https://bamwor.com/en/developers/docs)
