# SEO_KeyWordsAnalysis
This repository hosts an automated solution for analyzing and visualizing SEO keyword data using R programming. The included R code is designed to process CSV data obtained from SEMRUSH, an SEO website, but the R code can be adapted to various other SEO platforms with CSV exports. The code specifically targets keywords with high Search Volume and low SEO Difficulty, using the criteria (SEO Difficulty < 70 & Search Volume > 300). However, these parameters are customizable to different analysis needs. The outcome of the analysis is presented in a PDF report, featuring a bar plot that illustrates the identified keywords and their respective SEO Difficulty scores. 

"It's automated to analyze as many CSV files as are found in the 'Directory containing CSV files'. Please change in the bash file the:
1.  Path to your CSV files directory.
2.  Path to the R script.
