-- user
insert into users values ('srishty' , 'srishtymishra21@gmail.com' , 'Creating Sunshine' , 21 , '2005-07-21'),
                        ('shrijal' , 'shrijalmishra21@gmail.com' , '	Capturing Moment' , 15 , '2005-07-15'),
						('yogita' , 'yogitamishra27@gmail.com' , 'A night owl' , 25 , '2000-10-27'),
						('hema' , 'hemamishra07@gmail.com' , 'Sunflower soul' , 28 , '1997-11-07'),
						('kanak' , 'kanakmishra30@gmail.com' , 'Sunshine and storm' , 35 , '1990-01-30');

-- post
insert into post values (101, 'srishty', 'Creating Sunshine', 'https://example.com/image2.jpg'),
						(102, 'shrijal', 'Captured the Moment', 'https://example.com/image1.jpg'),
                        (103, 'yogita', 'Night Vibes', 'https://example.com/image3.jpg'),
                        (104, 'hema', 'Sunflower soul', 'https://example.com/image4.jpg'),
                        (105, 'kanak', 'Sunshine and storm', 'https://example.com/image5.jpg');
                       
-- liked
insert into liked values (1, 'hema', 101),
                         (2, 'kanak', 102),
						 (3, 'shrijal', 103),
                         (4, 'srishty', 104),
                         (5, 'yogita', 105);

-- comments                         
insert into comments values (1, 'yogita', 101, 'Amazing shot!'),
							(2, 'srishty', 103, 'Loved it!'),
						    (3, 'hema', 102, 'Very creative!'),
                            (4, 'srishty', 105, 'Pretty!'),
						    (5, 'hema', 104, 'Nice!');
                            

-- followers
insert into followers values ('kanak', 'shrijal'),
                             ('shrijal', 'hema'),
							 ('hema', 'yogita'),
                             ('yogita', 'srishty'),
                             ('srishty', 'kanak');