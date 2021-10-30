/* 1. Winners from 1950
Change the query shown so that it displays Nobel prizes for 1950. 
*/

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1960
 
 /* 2. 1962 Literature
 Show who won the 1962 prize for Literature. 
 */
 
 SELECT winner
  FROM nobel
 WHERE yr = 1960
   AND subject = 'Physics'
   
 /* 6. Only Presidents
 Show all details of the presidential winners:
    Theodore Roosevelt
    Woodrow Wilson
    Jimmy Carter
    Barack Obama
 */
 SELECT * FROM nobel
 WHERE yr = 1970
  AND subject IN ('Cookery',
                  'Chemistry',
                  'Literature')
                  
/* 14. Chemistry and Physics last
The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.
Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
*/                 

SELECT winner, subject, subject IN ('Physics','Chemistry')
  FROM nobel
 WHERE yr=1984
 ORDER BY subject,winner
 
 
