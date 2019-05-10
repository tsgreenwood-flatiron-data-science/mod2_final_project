# Recommendations for Potential Folk/Country Artists to Achieve Top Ratings on Pitchfork

This is the Module 2 Final Project for the Flatiron Seattle Data Science Program by [Natasha Kacoroski](https://github.com/nkacoroski) and [Tara Greenwood](https://github.com/TSGreenwood). The goal of this project was to demonstrate our ability to gather information from a real-world database and use our knowledge of statistical analysis and hypothesis testing to generate analytical insights that can be meaningful to a company/stakeholder. From the dataset selection, we chose the Pitchfork music reviews dataset, which can be found on Kaggle [here](https://www.kaggle.com/nolanbconaway/pitchfork-data). The stakeholder scenario we decided to generate analytical insights for are new folk/country artists who would like to know how to get high ratings on [Pitchfork](https://pitchfork.com/), an influential American online music magazine. Given a database of Pitchfork album reviews, what kind of advice might we give an artist to optimize their representation on Pitchfork reviews? Ratings are measured by review score and best new music award.

## [Methodology]()
### Data Processing
The dataset is provided as a sqlite database and includes tables for artists, content, genres, reviews, year, and labels. It consists of 18,393 reviews from January 5th, 1999 to January 8th, 2017. We imported the sqlite database into a PostgreSQL database using two methods, [pgloader](https://pgloader.readthedocs.io/en/latest/index.html) and by turning each sqlite database table into a static .csv file, creating a .sql file to import each .csv file into an empty PostgreSQL database as a table using the command:
$ psql -c "copy mytable from 'mytable.csv' with (format csv);"$

### Exploratory Data Analysis
We did an exploratory data analysis to practice SQL skills, familiar ourselves with data, and posit interesting questions. For our assigment, we were given a question to answer using hypothesis testing and then required to generate a minimum of three additional questions to answer.

### Statistical Analysis
The questions we answered are:
* Is there a statistical difference between the scores of folk/country and metal genres?
* * If so, is folk/country music higher?
* Is there a difference between the scores of folk/country and all other music?
* Do some labels produce a significantly higher proportion of “Best New Music” albums?
* * What are the top performers?
* * Are we confident our sample performance will generalize?
* * Of those, which produce folk albums?
* Is there a difference between the average scores given by each author who reviews folk/country music?
* Is there a difference between the average scores of each label that produces folk/country music?

To answer these questions we used two sample Welch's t-test, one sample t-tests, and the bootstrap method. We set a signifigance threshold (alpha level) at 0.05, and conducted power analyses to ensure we were using minimum sample sizes for each test.

## Results
From our analysis we discovered the following:
* Yes, there is a statistical difference between the average folk/country music score, and average metal score, folk is higher.
* Yes, there is a statistical difference between the average folk/country music score and average score for all other music, folk is higher.
* Yes, some labels appear to produce a higher number of albums awarded 'best new music.' Looking at the top six performers, none of them are distinctly different from the label nearest to it. The top labels that produce folk/country music are 4AD, Light in the Attic, and Legacy.
* Yes, there is a difference between the average scores given by each author who reviews folk/country music and the average score for music reviews. Looking at just the authors above the 75th percentile for average score who have completed over 26 reviews, each author's average score is significantly greater than the average score.
* Yes, these in a difference between the average scores of each label that produces folk/country music. Looking at just the labels above the 75th percentile for average score who have completed over 26 reviews, each label's average score is significantly greater than the average score.

## Recommendations
We recommend that a new artist who is thinking they might be in the folk/genre definitely brand themselves as folk/country. If looking to achieve best new music award, sign on with 4AD, Light in the Attic, and Legacy. For higher scores, sign on with Numero Group, Light in the Attic, Legacy, Rvng Intl., Young God, or Tompkins Square. And for authors, the following individuals tend to give higher scores:
* BrentS. Sirota
* Jenn Pelly
* Liam Singer
* Alex Linhardt
* Mark Richardson
* Dominique Leone
* Brandon Stosuy
* Andy Beta
* Marc Masters
* Matt Lemay
* Joe Tangari
* Chris Dahlen
* Nitsuh Abebe
* Jonathan Zwickel
* Grayson Haver Currin
* Mike Powell
* Lindsay Zoladz
* Mia Clarke
* Amanda Petrusich
* Winston Cook-Wilson
* Alexander Lloyd Linhardt
* Sam Sodomsky
* Kim Kelly