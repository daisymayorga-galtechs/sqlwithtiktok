.header on
.mode column

CREATE TABLE tiktokData (
  hashtag TEXT,
  number_timeUsed INTEGER,
  catagory TEXT
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


.print 'Hashtags greater than one trillion'
SELECT hashtag
FROM tiktokData
WHERE number_timeUsed > 1000000000000;

.print
.print 'Hashtag Catagories'
SELECT
catagory
FROM tiktokData
GROUP BY catagory;

.print
.print 'Hashtag Catagories'
SELECT
hashtag
FROM tiktokData
WHERE catagory='Top';
