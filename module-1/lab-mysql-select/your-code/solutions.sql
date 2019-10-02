
-- Challenge 1 

SELECT authors.au_id as "AUTHOR ID", authors.au_lname as "LAST NAME", authors.au_fname as "FIRST NAME", titles.title as TITLE, publishers.pub_name as PUBLISHER
FROM authors
INNER JOIN titleauthor ON titleauthor.au_id = authors.au_id
INNER JOIN titles ON titles.title_id = titleauthor.title_id
INNER JOIN publishers ON publishers.pub_id = titles.pub_id
ORDER BY authors.au_id;


-- Challenge 2

SELECT authors.au_id as "AUTHOR ID", authors.au_lname as "LAST NAME", authors.au_fname as "FIRST NAME", publishers.pub_name as PUBLISHER, COUNT(titles.title) as "TITLE COUNT"
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titles.title_id = titleauthor.title_id
INNER JOIN publishers ON publishers.pub_id = titles.pub_id
GROUP BY authors.au_id, publishers.pub_name
ORDER BY authors.au_id DESC;

-- Challenge 3
SELECT authors.au_id AS "AUTHOR_ID", authors.au_lname AS "LAST_NAME", 
authors.au_fname AS "FIRST_Name",SUM(sales.qty) AS "Total"
FROM authors
INNER JOIN titleauthor ON authors.au_id = titleauthor.au_id
INNER JOIN titles ON titleauthor.title_id = titles.title_id
INNER JOIN sales ON titles.title_id = sales.title_id
GROUP BY authors.au_id, authors.au_lname, authors.au_fname
ORDER BY SUM(sales.qty) DESC
LIMIT 3;


-- Challenge 4 
SELECT authors.au_id AS 'Author ID', authors.au_lname AS 'LAST NAME', authors.au_fname AS 'FIRST NAME', SUM(sales.qty) AS 'TOTAL'
FROM authors
LEFT JOIN titleauthor  ON authors.au_id = titleauthor.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN sales  ON titles.title_id = sales.title_id
GROUP BY authors.au_id
ORDER BY sum(sales.qty) DESC

