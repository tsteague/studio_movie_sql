directors 
first_name, last_name, country
"John", "Lasseter", "USA"
"Brad", "Bird", "USA"
"Jodie", "Foster", "USA" 
"Ang", "Lee", "Taiwan" 
"Alfonso", "Cuarón", "Mexico"
"Guillermo", "del Toro", "Mexico"
"Peter", "Jackson", "New Zealand"
"Ava", "DuVernay", "USA"
"Patty", "Jenkins", "USA"
"Haifaa", "al-Mansour", "Saudi Arabia"

movies 
title, year_released, director_id
"Toy Story", 1995, 1
"The Incredibles", 2004, 2
"Money Monster", 2016, 3
"A Bug's Life", 1998, 1
"Crouching Tiger, Hidden Dragon", 2000, 4
"Harry Potter and the Prisoner of Azkaban", 2004, 5
"Little Man Tate", 1991, 3
"Roma", 2018, 5
"The Perfect Candidate", 2019, 10
"The Shape of Water", 2017, 6
"The Lord of the Rings: The Return of the King", 2003, 7
"A Wrinke in Time", 2018, 8
"Wonder Woman", 2017, 9
"Ratatouille", 2007, 2
"Mary Shelley", 2017, 10
"Selma", 2014, 8

1.  select title from movies

2.  select title, year_release from movies

3.  select * from directors order by country asc

4.  select * from directors order by country asc, last_name asc

5.  insert into directors ( first_name, last_name, country ) values ( 'Rob', 'Reiner', 'USA' )

6.  select id, last_name from directors where first_name = 'Rob' and last_name = 'Reiner'

7.  insert into movies ( title, year_released, director_id ) values ( 'The Princess Bride', 1987, (select director_id from directors where first_name = 'Rob' and last_name = 'Reiner') )

8.  select title, year_released, last_name from movies inner join directors on movies.director_id = directors.director_id 

9.  select title, first_name, last_name from movies left join directors on movies.director_id = directors.director_id order by last_name asc

10.  select first_name, last_name from movies join directors on movies.director_id = directors.director_id where title = 'The Incredibles'

11.  select last_name, country from movies join directors on movies.director_id = directors.director_id where title = 'Roma'

12.  delete from movies where title = 'Little Man Tate'  # Since there is no actors table, its deletion doesn't affect anything since it has no foreign keys anywhere.

13.  delete from directors where first_name = 'Ava'  # Would lose Relational integrity for any movie associated with the deleted director.  A cascading delete would be required where everything that has a foreign key constrainst attached would also be deleted.  In other words, 'A Wrinkle in Time' would also have to be deleted prior to the director's deletion.

