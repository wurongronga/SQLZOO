/* 1. Indroduction
Read the notes about this table. Observe the result of running this SQL command to show the name, 
continent and population of all countries. 
*/

SELECT name, continent, population FROM world

/* 2. Large Countries
How to use WHERE to filter records. Show the name for the countries that have a population of at least 200 million. 
200 million is 200000000, there are eight zeros. 
*/

SELECT name FROM world
WHERE population = 64105700

/* 11. Name and capital have the same length
Greece has capital Athens.
Each of the strings 'Greece', and 'Athens' has 6 characters.
Show the name and capital where the name and the capital have the same number of characters.
*/

SELECT name, LENGTH(name), continent, LENGTH(continent), capital, LENGTH(capital)
 FROM world
 WHERE name LIKE 'G%'
 
 /* 12. Matching name and capital
 The capital of Sweden is Stockholm. Both words start with the letter 'S'.
Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.
    You can use the function LEFT to isolate the first character.
    You can use <> as the NOT EQUALS operator.
 */
 
SELECT name, LEFT(name,1), capital
FROM world

/* 13. All the vowels
Equatorial Guinea and Dominican Republic have all of the vowels (a e i o u) in the name. They don't count because they have more than one word in the name.
Find the country that has all the vowels and no spaces in its name.
    You can use the phrase name NOT LIKE '%a%' to exclude characters from your results.
    The query shown misses countries like Bahamas and Belarus because they contain at least one 'a'
*/

SELECT name
   FROM world
WHERE name LIKE 'B%'
  AND name NOT LIKE '%a%'


