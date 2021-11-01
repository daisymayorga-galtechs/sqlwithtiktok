CREATE TABLE tiktokData (
  hashtag TEXT,
  number_timeUsed INTEGER,
  category TEXT
);

INSERT INTO tiktokData VALUES
  ('#foryou', 1898000000000, 'Top'),
  ('#foryoupage', 1097000000000, 'Top'),
  ('#fyp', 1025000000000, 'Top'),
  ('#duet', 880100000000, 'Top'),
  ('#tiktok', 558700000000, 'Top'),
  ('#viral', 450600000000, 'Top'),
  ('#tiktokindia', 369600000000, 'Top'),
  ('#studywithme', 1400000000, 'Education'),
  ('#studyhacks', 3000000000, 'Education'),
  ('#studytips', 1200000000, 'Education'),
  ('#fidgets', 8800000000, 'Toys'),
  ('#popit', 880000000, 'Toys'),
  ('#dance', 328200000000, 'Dancing'),
  ('#tiktokdance', 13000000000, 'Dancing')
  ;



--Let's look at all records in the list. There are 3 columns. Which column is numerical? Which columns are descriptive?
SELECT 
  hashtag,
  number_timeUsed,
  category
FROM tiktokData



--Let's sort them in order based on the number of times used, which one is used the most?
SELECT
hashtag,
number_timeUsed,
category
FROM tiktokData
order by number_timeUsed desc



--Let's filter for Hashtags greater than one trillion, which category comes up the most?
SELECT 
  hashtag,
  number_timeUsed,
  category
FROM tiktokData
WHERE number_timeUsed > 1000000000000;




--Hashtag Catagories, how many unique categories are there?
SELECT DISTINCT
category
FROM tiktokData



-- Let's look at just one category
SELECT
hashtag,
number_timeUsed,
category
FROM tiktokData
WHERE category='Top';


-- For the one category, let's look at the hashtags in order of number of times used. What is the most used for this category?
SELECT
hashtag,
number_timeUsed,
category
FROM tiktokData
WHERE category='Top'
order by number_timeUsed desc


