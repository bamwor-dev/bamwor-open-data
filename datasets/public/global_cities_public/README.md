# Bamwor Global Cities Public Dataset

A curated dataset of the **top 50.000 most populated cities worldwide**, compiled and maintained by [Bamwor](https://bamwor.com).

## Overview

| Property | Value |
|----------|-------|
| **Rows** | 50.000 |
| **Countries** | 223 |
| **Minimum population** | 8198 |
| **Maximum population** | 24874500 |
| **Formats** | CSV, JSON, Parquet |
| **Last updated** | 2026-03-12 |
| **License** | CC BY 4.0 |

## About

This is a **limited public subset** of Bamwor's comprehensive global cities database, which contains over 476,000 populated places across 248 countries and territories. The full dataset, along with country-level statistics, economic indicators, and Bamwor's proprietary indexes, is available at [bamwor.com](https://bamwor.com).

## Fields

| Field | Type | Description |
|-------|------|-------------|
| rank | int | Global rank by population (1 = largest) |
| city_name | string | City name (ASCII transliteration) |
| city_name_local | string | City name in local script (if different from ASCII) |
| city_name_es | string | City name in Spanish |
| city_name_pt | string | City name in Portuguese |
| city_name_it | string | City name in Italian |
| country_name | string | Country name (English) |
| country_slug | string | URL-friendly country identifier |
| iso2 | string | ISO 3166-1 alpha-2 country code |
| iso3 | string | ISO 3166-1 alpha-3 country code |
| region | string | World region |
| administrative_region | string | First-level administrative division (state/province) |
| latitude | decimal | Latitude (WGS84) |
| longitude | decimal | Longitude (WGS84) |
| population | int | Population estimate |
| elevation | int | Elevation in meters (where available) |
| timezone | string | IANA timezone identifier |
| feature_code | string | Place type (PPLC = capital, PPL = populated place, etc.) |
| source | string | Data source reference |
| last_updated | date | Date of last data refresh |

## Feature Codes

| Code | Meaning |
|------|---------|
| PPLC | Capital of a political entity |
| PPLA | Seat of a first-order admin division |
| PPLA2 | Seat of a second-order admin division |
| PPL | Populated place |
| PPLX | Section of populated place |

## Usage

```python
import pandas as pd
df = pd.read_csv('global_cities_public.csv')
print(df.head())
```

```javascript
const cities = require('./global_cities_public.json');
console.log(cities.slice(0, 5));
```

## Source & Attribution

Data compiled by **Bamwor** — [https://bamwor.com](https://bamwor.com)

If you use this dataset, please include attribution:
> Source: Bamwor (bamwor.com) — Global Cities Dataset

## Full Dataset

This public dataset contains the top 50.000 cities by population. Bamwor's complete database includes:

- **476,000+** populated places across **248** countries
- **261** country profiles with economic, military, and demographic data
- **9 proprietary indexes** (economic stability, military strength, digital infrastructure, etc.)
- City data in **4 languages** (English, Spanish, Portuguese, Italian)

Visit [bamwor.com](https://bamwor.com) for the complete dataset and API access.

## License

CC BY 4.0 — Free to use, share, and adapt with attribution to Bamwor.

\u00A9 2026 Bamwor. All rights reserved.
