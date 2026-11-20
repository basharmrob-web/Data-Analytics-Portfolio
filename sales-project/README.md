# Online Retail II — Sales Data Foundation & Cleaning

End-to-end initial data processing and quality auditing for the **Online Retail II** e-commerce dataset, preserving the raw dataset untouched while preparing a clean working dataset for sales analysis.

## Project Structure
- `data/raw/`: Original untouched dataset from UCI Machine Learning Repository (*Online Retail II*).
- `data/processed/`: Cleaned dataset generated after inspection and initial preprocessing.
- `notebooks/`: Python data inspection and cleaning workflow (executed in Google Colab).
- `business-questions.md`: Dataset overview, schema, time range, and 5 sales manager business questions.

## Data Quality & Cleaning Summary
- Kept raw data unaltered and performed transformations on a working copy.
- Checked data types, missing values, duplicate records, and transaction date range.
- Removed exact duplicates and standardized date/text fields.
- Flagged canceled invoices (`Invoice` starting with `C`) and non-positive quantities (`Quantity <= 0`) instead of silently dropping them, preserving visibility into returns and cancellations.
- Added `Line_Total` (`Quantity * Price`) to support revenue and return analysis.