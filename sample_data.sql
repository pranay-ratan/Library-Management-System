
-- Member data with hashed passwords
INSERT INTO Member (FirstName, LastName, Email, Phone, Address, MembershipDate, Password) VALUES
    ('John', 'Doe', 'john.doe@email.com', '555-123-4567', '123 Main St, Anytown', '2025-01-15', ?),
    ('Jane', 'Smith', 'jane.smith@email.com', '555-987-6543', '456 Oak Ave, Anytown', '2025-02-01', ?),
    ('Alice', 'Johnson', 'alice.j@email.com', '555-555-5555', '789 Pine Rd, Anytown', '2025-03-10', ?);
INSERT INTO Member (FirstName, LastName, Email, Phone, Address, MembershipDate, Password) VALUES
    ('Michael', 'Chen', 'mchen@email.com', '555-111-2222', '101 Cedar Ln, Anytown', '2024-12-01', ?),
    ('Sarah', 'Williams', 'swilliams@email.com', '555-333-4444', '202 Maple Dr, Anytown', '2024-11-15', ?),
    ('David', 'Garcia', 'dgarcia@email.com', '555-555-6666', '303 Birch Rd, Anytown', '2024-10-20', ?),
    ('Emma', 'Taylor', 'etaylor@email.com', '555-777-8888', '404 Pine St, Anytown', '2024-09-05', ?),
    ('James', 'Miller', 'jmiller@email.com', '555-999-0000', '505 Oak Ave, Anytown', '2024-08-10', ?),
    ('Maria', 'Rodriguez', 'mrodriguez@email.com', '555-222-3333', '606 Elm St, Anytown', '2024-07-15', ?),
    ('William', 'Anderson', 'wanderson@email.com', '555-444-5555', '707 Spruce Ln, Anytown', '2024-06-20', ?);

-- Staff data with hashed passwords
INSERT INTO Staff (FirstName, LastName, Position, Department, Email, Phone, HireDate, Salary, Schedule, Password) VALUES
    ('Robert', 'Wilson', 'Librarian', 'Circulation', 'robert.wilson@library.org', '555-111-2222', '2024-06-01', 55000.00, 'Mon-Fri: 9AM-5PM', ?),
    ('Sarah', 'Brown', 'Manager', 'Administration', 'sarah.brown@library.org', '555-333-4444', '2023-01-15', 75000.00, 'Mon-Fri: 8AM-4PM', ?),
    ('Emily', 'Davis', 'Assistant', 'Reference', 'emily.davis@library.org', '555-666-7777', '2024-09-01', 40000.00, 'Tue-Sat: 10AM-6PM', ?);
INSERT INTO Staff (FirstName, LastName, Position, Department, Email, Phone, HireDate, Salary, Schedule, Password) VALUES
    ('Thomas', 'Lee', 'Librarian', 'Reference', 'tlee@library.org', '555-888-9999', '2023-05-15', 52000.00, 'Mon-Fri: 10AM-6PM', ?),
    ('Patricia', 'Martinez', 'Assistant', 'Circulation', 'pmartinez@library.org', '555-777-6666', '2023-08-01', 42000.00, 'Wed-Sun: 9AM-5PM', ?),
    ('Kevin', 'Wright', 'IT Specialist', 'Technical', 'kwright@library.org', '555-444-3333', '2023-11-15', 58000.00, 'Mon-Fri: 8AM-4PM', ?),
    ('Linda', 'Thompson', 'Events Coordinator', 'Programming', 'lthompson@library.org', '555-222-1111', '2024-01-10', 48000.00, 'Tue-Sat: 11AM-7PM', ?);
INSERT INTO Staff (FirstName, LastName, Position, Department, Email, Phone, HireDate, Salary, Schedule, Password) VALUES
    ('James', 'Cooper', 'Senior Librarian', 'Reference', 'jcooper@library.org', '555-123-4567', '2023-03-15', 62000.00, 'Mon-Fri: 8AM-4PM', ?),
    ('Maria', 'Sanchez', 'Children''s Librarian', 'Youth Services', 'msanchez@library.org', '555-234-5678', '2023-06-01', 51000.00, 'Tue-Sat: 9AM-5PM', ?),
    ('David', 'Kim', 'Digital Resources', 'Technical', 'dkim@library.org', '555-345-6789', '2023-09-15', 54000.00, 'Mon-Fri: 10AM-6PM', ?),
    ('Lisa', 'Wong', 'Cataloging Specialist', 'Technical Services', 'lwong@library.org', '555-456-7890', '2023-12-01', 48000.00, 'Wed-Sun: 8AM-4PM', ?),
    ('Michael', 'Johnson', 'Security Supervisor', 'Operations', 'mjohnson@library.org', '555-567-8901', '2024-02-15', 45000.00, 'Thu-Mon: 12PM-8PM', ?),
    ('Rachel', 'Green', 'Outreach Coordinator', 'Programming', 'rgreen@library.org', '555-678-9012', '2024-03-01', 49000.00, 'Mon-Fri: 11AM-7PM', ?),
    ('Hassan', 'Ahmed', 'Systems Librarian', 'Technical', 'hahmed@library.org', '555-789-0123', '2024-04-15', 59000.00, 'Tue-Sat: 9AM-5PM', ?),
    ('Anna', 'Kowalski', 'Archives Specialist', 'Special Collections', 'akowalski@library.org', '555-890-1234', '2024-05-01', 53000.00, 'Mon-Fri: 9AM-5PM', ?),
    ('Carlos', 'Rodriguez', 'Maintenance Supervisor', 'Operations', 'crodriguez@library.org', '555-901-2345', '2024-07-01', 47000.00, 'Wed-Sun: 7AM-3PM', ?),
    ('Sophie', 'Martin', 'Research Librarian', 'Reference', 'smartin@library.org', '555-012-3456', '2024-08-15', 56000.00, 'Mon-Fri: 10AM-6PM', ?);


-- Room data
INSERT INTO Room (RoomName, Capacity, Location, AvailabilityStatus) VALUES
    ('Reading Room A', 20, '1st Floor', 'Available'),
    ('Conference Room B', 15, '2nd Floor', 'Available'),
    ('Media Room C', 10, 'Basement', 'Maintenance');
INSERT INTO Room (RoomName, Capacity, Location, AvailabilityStatus) VALUES
    ('Study Room 1', 4, '2nd Floor', 'Available'),
    ('Study Room 2', 4, '2nd Floor', 'Available'),
    ('Computer Lab', 25, '1st Floor', 'Available'),
    ('Children''s Activity Room', 30, '1st Floor', 'Available'),
    ('Meeting Room A', 12, 'Basement', 'Available'),
    ('Meeting Room B', 12, 'Basement', 'Available'),
    ('Quiet Study Area', 15, '3rd Floor', 'Available');


-- LibraryItem data
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('The Great Gatsby', '1925-04-10', 'Available', 'Book', 'Fiction'),
    ('Python Programming', '2023-01-15', 'Available', 'Ebook', 'Digital Collection'),
    ('National Geographic', '2025-03-01', 'Available', 'Magazine', 'Periodicals'),
    ('Journal of Science', '2025-02-01', 'Available', 'Journal', 'Academic'),
    ('The Beatles Anthology', '2000-10-05', 'Available', 'Media', 'Media Section');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('1984', '1949-06-08', 'Available', 'Book', 'Fiction'),
    ('To Kill a Mockingbird', '1960-07-11', 'Borrowed', 'Book', 'Fiction'),
    ('Data Science Basics', '2024-01-15', 'Available', 'Ebook', 'Digital Collection'),
    ('Web Development Guide', '2024-02-01', 'Available', 'Ebook', 'Digital Collection'),
    ('Time Magazine', '2025-03-15', 'Available', 'Magazine', 'Periodicals'),
    ('Scientific American', '2025-03-01', 'Available', 'Magazine', 'Periodicals'),
    ('Nature', '2025-02-15', 'Available', 'Journal', 'Academic'),
    ('Pink Floyd Collection', '1994-10-10', 'Available', 'Media', 'Media Section'),
    ('Star Wars Trilogy', '2011-09-16', 'Borrowed', 'Media', 'Media Section'),
    ('The Lord of the Rings', '1954-07-29', 'Available', 'Book', 'Fiction');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('The Hobbit', '1937-09-21', 'Available', 'Book', 'Fantasy'),
    ('Pride and Prejudice', '1813-01-28', 'Available', 'Book', 'Classic'),
    ('The Catcher in the Rye', '1951-07-16', 'Available', 'Book', 'Fiction'),
    ('One Hundred Years of Solitude', '1967-05-30', 'Available', 'Book', 'Literary Fiction'),
    ('The Alchemist', '1988-01-01', 'Available', 'Book', 'Fiction'),
    ('Brave New World', '1932-01-01', 'Available', 'Book', 'Science Fiction');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('Machine Learning Fundamentals', '2024-01-20', 'Available', 'Ebook', 'Digital Collection'),
    ('JavaScript Complete Guide', '2024-02-15', 'Available', 'Ebook', 'Digital Collection'),
    ('Digital Marketing 2024', '2024-03-01', 'Available', 'Ebook', 'Digital Collection'),
    ('Artificial Intelligence Basics', '2024-01-10', 'Available', 'Ebook', 'Digital Collection'),
    ('Cloud Computing Essentials', '2024-02-20', 'Available', 'Ebook', 'Digital Collection'),
    ('Cybersecurity Handbook', '2024-03-05', 'Available', 'Ebook', 'Digital Collection'),
    ('Big Data Analytics', '2024-01-25', 'Available', 'Ebook', 'Digital Collection');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('Forbes', '2025-03-10', 'Available', 'Magazine', 'Periodicals'),
    ('Wired', '2025-03-05', 'Available', 'Magazine', 'Periodicals'),
    ('The Economist', '2025-03-15', 'Available', 'Magazine', 'Periodicals'),
    ('Popular Science', '2025-03-01', 'Available', 'Magazine', 'Periodicals'),
    ('New Yorker', '2025-03-20', 'Available', 'Magazine', 'Periodicals'),
    ('Sports Illustrated', '2025-03-08', 'Available', 'Magazine', 'Periodicals'),
    ('Rolling Stone', '2025-03-12', 'Available', 'Magazine', 'Periodicals');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('Journal of Computer Science', '2025-01-01', 'Available', 'Journal', 'Academic'),
    ('Journal of Medicine', '2025-02-01', 'Available', 'Journal', 'Academic'),
    ('Journal of Engineering', '2025-03-01', 'Available', 'Journal', 'Academic'),
    ('Journal of History', '2025-04-01', 'Available', 'Journal', 'Academic');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('The Matrix', '1999-03-31', 'Available', 'Media', 'Media Section'),
    ('Inception', '2010-07-16', 'Available', 'Media', 'Media Section'),
    ('Interstellar', '2014-11-07', 'Available', 'Media', 'Media Section'),
    ('The Dark Knight Trilogy', '2008-07-18', 'Available', 'Media', 'Media Section'),
    ('Avatar', '2009-12-18', 'Available', 'Media', 'Media Section'),
    ('Titanic', '1997-12-19', 'Available', 'Media', 'Media Section');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('Cell', '2025-02-10', 'Available', 'Journal', 'Academic'),
    ('The Lancet', '2025-02-05', 'Available', 'Journal', 'Academic'),
    ('IEEE Spectrum', '2025-02-15', 'Available', 'Journal', 'Academic'),
    ('JAMA', '2025-02-01', 'Available', 'Journal', 'Academic'),
    ('Chemical Reviews', '2025-02-20', 'Available', 'Journal', 'Academic'),
    ('Psychological Review', '2025-02-08', 'Available', 'Journal', 'Academic'),
    ('Environmental Science', '2025-02-12', 'Available', 'Journal', 'Academic'),
    ('Economic Journal', '2025-02-25', 'Available', 'Journal', 'Academic');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('The Art of Computer Programming', '1968-01-01', 'Available', 'Book', 'Technical'),
    ('Introduction to Algorithms', '2009-07-31', 'Available', 'Book', 'Technical'),
    ('Artificial Intelligence: A Modern Approach', '2010-12-15', 'Available', 'Book', 'Technical'),
    ('The Pragmatic Programmer', '1999-10-20', 'Available', 'Book', 'Technical'),
    ('Clean Code: A Handbook of Agile Software Craftsmanship', '2008-08-01', 'Available', 'Book', 'Technical');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('Queen Greatest Hits', '1981-10-26', 'Available', 'Media', 'Media Section'),
    ('The Godfather Collection', '1972-03-14', 'Available', 'Media', 'Media Section'),
    ('Michael Jackson: Thriller', '1982-11-30', 'Available', 'Media', 'Media Section'),
    ('Lord of the Rings Trilogy', '2001-12-19', 'Available', 'Media', 'Media Section'),
    ('Led Zeppelin IV', '1971-11-08', 'Available', 'Media', 'Media Section'),
    ('Matrix Trilogy', '1999-03-31', 'Available', 'Media', 'Media Section'),
    ('David Bowie Collection', '1969-11-14', 'Available', 'Media', 'Media Section');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('The New York Times', '2025-03-01', 'Available', 'Magazine', 'Periodicals'),
    ('The Wall Street Journal', '2025-03-02', 'Available', 'Magazine', 'Periodicals'),
    ('Scientific American', '2025-03-03', 'Available', 'Magazine', 'Periodicals'),
    ('Nature Reviews', '2025-03-04', 'Available', 'Magazine', 'Periodicals'),
    ('The Atlantic Monthly', '2025-03-05', 'Available', 'Magazine', 'Periodicals');
INSERT INTO LibraryItem (Title, PublicationDate, Status, ItemType, Location) VALUES
    ('The New Yorker', '2025-03-06', 'Available', 'Magazine', 'Periodicals'),
    ('Time Magazine', '2025-03-07', 'Available', 'Magazine', 'Periodicals'),
    ('National Geographic Kids', '2025-03-08', 'Available', 'Magazine', 'Periodicals'),
    ('Smithsonian Magazine', '2025-03-09', 'Available', 'Magazine', 'Periodicals'),
    ('Popular Mechanics', '2025-03-10', 'Available', 'Magazine', 'Periodicals'),
    ('Esquire Magazine', '2025-03-11', 'Available', 'Magazine', 'Periodicals');




-- Book data
INSERT INTO Book (ItemID, Author, Publisher, Genre, PageCount, Format) VALUES
    (1, 'F. Scott Fitzgerald', 'Scribner', 'Fiction', 180, 'Hardcover');
INSERT INTO Book (ItemID, Author, Publisher, Genre, PageCount, Format) VALUES
    (6, 'George Orwell', 'Secker and Warburg', 'Fiction', 328, 'Paperback'),
    (7, 'Harper Lee', 'J. B. Lippincott & Co.', 'Fiction', 281, 'Hardcover'),
    (15, 'J.R.R. Tolkien', 'Allen & Unwin', 'Fantasy', 1178, 'Hardcover');
INSERT INTO Book (ItemID, Author, Publisher, Genre, PageCount, Format) VALUES
    (23, 'J.R.R. Tolkien', 'George Allen & Unwin', 'Fantasy', 310, 'Hardcover'),
    (24, 'Jane Austen', 'T. Egerton', 'Classic', 432, 'Paperback'),
    (25, 'J.D. Salinger', 'Little, Brown and Company', 'Fiction', 234, 'Hardcover'),
    (26, 'Gabriel García Márquez', 'Harper & Row', 'Literary Fiction', 417, 'Paperback'),
    (27, 'Paulo Coelho', 'HarperOne', 'Fiction', 197, 'Paperback'),
    (28, 'Aldous Huxley', 'Chatto & Windus', 'Science Fiction', 311, 'Hardcover');


-- Ebook data
INSERT INTO Ebook (ItemID, Author, Publisher, Genre, FileFormat) VALUES
    (2, 'John Smith', 'Tech Press', 'Technical', 'PDF');
INSERT INTO Ebook (ItemID, Author, Publisher, Genre, FileFormat) VALUES
    (8, 'Dr. Sarah Johnson', 'Tech Education Press', 'Educational', 'EPUB'),
    (9, 'Michael Brown', 'CodeMaster Publications', 'Technical', 'PDF');
INSERT INTO Ebook (ItemID, Author, Publisher, Genre, FileFormat) VALUES
    (29, 'Dr. Andrew Smith', 'Tech Academy Press', 'Education', 'PDF'),
    (30, 'Sarah Wilson', 'Code Publishing', 'Programming', 'EPUB'),
    (31, 'Michael Rogers', 'Digital Press', 'Marketing', 'PDF'),
    (32, 'Dr. Lisa Chen', 'AI Institute', 'Technology', 'EPUB'),
    (33, 'James Cloud', 'Tech Solutions', 'Computing', 'PDF'),
    (34, 'Emma Security', 'CyberPress', 'Technology', 'PDF'),
    (35, 'Data Analytics Group', 'Data Press', 'Technology', 'EPUB');




-- Magazine data
INSERT INTO Magazine (ItemID, IssueNumber, Publisher, Category) VALUES
    (3, 'Vol. 227 No. 3', 'National Geographic Society', 'Science');
INSERT INTO Magazine (ItemID, IssueNumber, Publisher, Category) VALUES
    (10, 'Vol. 205 No. 10', 'Time USA, LLC', 'News'),
    (11, 'Vol. 328 No. 3', 'Scientific American', 'Science');
INSERT INTO Magazine (ItemID, IssueNumber, Publisher, Category) VALUES
    (36, 'March 2025', 'Forbes Media', 'Business'),
    (37, 'Issue 125', 'Condé Nast', 'Technology'),
    (38, 'Vol. 414', 'The Economist Group', 'News'),
    (39, 'Vol. 306', 'Popular Science', 'Science'),
    (40, 'Issue 4851', 'Condé Nast', 'Culture'),
    (41, 'March 2025', 'Maven', 'Sports'),
    (42, 'Issue 1378', 'Penske Media', 'Entertainment');




-- Journal data
INSERT INTO Journal (ItemID, Volume, Issue, Publisher, Field, PeerReviewed) VALUES
    (4, 'Vol. 50', 'Issue 1', 'Science Press', 'Physics', 1);
INSERT INTO Journal (ItemID, Volume, Issue, Publisher, Field, PeerReviewed) VALUES
    (12, 'Vol. 598', 'Issue 7882', 'Nature Publishing Group', 'Science', 1);
INSERT INTO Journal (ItemID, Volume, Issue, Publisher, Field, PeerReviewed) VALUES
    (43, 'Vol. 184', 'Issue 5', 'Cell Press', 'Biology', 1),
    (44, 'Vol. 401', 'Issue 3', 'Elsevier', 'Medicine', 1),
    (45, 'Vol. 62', 'Issue 2', 'IEEE', 'Engineering', 1),
    (46, 'Vol. 329', 'Issue 8', 'AMA', 'Medicine', 1),
    (47, 'Vol. 123', 'Issue 4', 'ACS', 'Chemistry', 1),
    (48, 'Vol. 130', 'Issue 2', 'APA', 'Psychology', 1),
    (49, 'Vol. 57', 'Issue 3', 'ES&T', 'Environmental', 1),
    (50, 'Vol. 133', 'Issue 1', 'RES', 'Economics', 1);



-- Media data
INSERT INTO Media (ItemID, MediaType, Artist, Runtime, Format) VALUES
    (5, 'DVD', 'The Beatles', '5h 30m', 'NTSC');
INSERT INTO Media (ItemID, MediaType, Artist, Runtime, Format) VALUES
    (13, 'CD', 'Pink Floyd', '2h 30m', 'Audio CD'),
    (14, 'DVD', 'George Lucas', '6h 30m', 'Blu-ray');
INSERT INTO Media (ItemID, MediaType, Artist, Runtime, Format) VALUES
    (51, 'CD', 'Queen', '58m', 'Audio CD'),
    (52, 'DVD', 'Francis Ford Coppola', '9h 15m', 'Blu-ray'),
    (53, 'CD', 'Michael Jackson', '42m', 'Audio CD'),
    (54, 'DVD', 'Peter Jackson', '11h 22m', 'Blu-ray'),
    (55, 'Record', 'Led Zeppelin', '42m', 'Vinyl'),
    (56, 'DVD', 'Wachowski Sisters', '7h 30m', 'Blu-ray'),
    (57, 'CD', 'David Bowie', '3h 45m', 'Audio CD');


-- Borrowing data
INSERT INTO Borrowing (MemberID, ItemID, BorrowDate, DueDate) VALUES
    (1, 1, '2025-03-15', '2025-03-29'),
    (2, 3, '2025-03-20', '2025-04-03');
INSERT INTO Borrowing (MemberID, ItemID, BorrowDate, DueDate, ReturnDate) VALUES
    (3, 7, '2025-03-01', '2025-03-15', NULL),
    (4, 14, '2025-03-05', '2025-03-19', NULL),
    (1, 2, '2025-02-15', '2025-03-01', '2025-03-05'),
    (2, 4, '2025-02-20', '2025-03-06', '2025-03-02'),
    (5, 8, '2025-03-10', '2025-03-24', NULL);
INSERT INTO Borrowing (MemberID, ItemID, BorrowDate, DueDate, ReturnDate) VALUES
    (6, 15, '2025-03-12', '2025-03-26', NULL),
    (7, 23, '2025-03-08', '2025-03-22', NULL),
    (8, 28, '2025-03-01', '2025-03-15', '2025-03-14'),
    (9, 32, '2025-02-28', '2025-03-14', '2025-03-13'),
    (10, 36, '2025-03-05', '2025-03-19', NULL);



-- Event data
INSERT INTO Event (Title, Description, EventDate, StartTime, EndTime, MaxAttendees, EventType, TargetAudience, StaffID, RoomID) VALUES
    ('Book Club: Classics', 'Discussing classic literature', '2025-04-15', '18:00', '19:30', 15, 'BookClub', 'Adults', 1, 1),
    ('Python Workshop', 'Intro to Python programming', '2025-04-20', '14:00', '16:00', 10, 'Workshop', 'Teens/Adults', 2, 2);
INSERT INTO Event (Title, Description, EventDate, StartTime, EndTime, MaxAttendees, EventType, TargetAudience, StaffID, RoomID) VALUES
    ('Summer Reading Kickoff', 'Launch of summer reading program', '2025-06-01', '10:00', '12:00', 50, 'Other', 'All Ages', 3, 4),
    ('Art Exhibition', 'Local artists showcase', '2025-04-25', '13:00', '17:00', 30, 'ArtShow', 'Adults', 4, 1),
    ('Movie Night', 'Classic film screening', '2025-05-10', '19:00', '21:30', 20, 'Screening', 'Adults', 2, 3),
    ('Story Time', 'Interactive children''s stories', '2025-04-10', '10:30', '11:30', 15, 'Other', 'Children', 1, 4);
INSERT INTO Event (Title, Description, EventDate, StartTime, EndTime, MaxAttendees, EventType, TargetAudience, StaffID, RoomID) VALUES
    ('Science Fair', 'Student science project showcase', '2025-05-15', '13:00', '16:00', 40, 'Other', 'All Ages', 5, 6),
    ('Poetry Reading', 'Local poets share their work', '2025-05-20', '19:00', '20:30', 25, 'Other', 'Adults', 6, 2),
    ('Tech Talk', 'Latest in technology trends', '2025-05-25', '18:00', '19:30', 30, 'Workshop', 'Adults', 7, 3),
    ('Game Night', 'Board games and puzzles', '2025-06-05', '17:00', '20:00', 20, 'Other', 'Teens', 8, 5),
    ('Author Meet', 'Q&A with local author', '2025-06-10', '14:00', '15:30', 35, 'Other', 'All Ages', 9, 1);

-- EventAttendance data
INSERT INTO EventAttendance (EventID, MemberID, RegistrationDate, AttendanceStatus) VALUES
    (1, 1, '2025-03-20', 'Registered'),
    (1, 2, '2025-03-21', 'Registered');
INSERT INTO EventAttendance (EventID, MemberID, RegistrationDate, AttendanceStatus) VALUES
    (3, 3, '2025-04-01', 'Registered'),
    (3, 4, '2025-04-02', 'Registered'),
    (4, 5, '2025-04-05', 'Registered'),
    (4, 6, '2025-04-06', 'Registered'),
    (5, 1, '2025-04-15', 'Registered'),
    (5, 2, '2025-04-16', 'Registered'),
    (6, 7, '2025-03-25', 'Registered'),
    (6, 8, '2025-03-26', 'Registered');


-- Volunteer data
INSERT INTO Volunteer (MemberID, SkillsInterests, AvailabilityHours, StartDate, Status) VALUES
    (3, 'Reading to children, event setup', 'Wed/Fri: 3PM-6PM', '2025-03-01', 'Active');
INSERT INTO Volunteer (MemberID, SkillsInterests, AvailabilityHours, StartDate, Status) VALUES
    (4, 'Computer assistance, cataloging', 'Mon/Thu: 2PM-5PM', '2025-02-15', 'Active'),
    (5, 'Children''s programs, shelving', 'Tue/Sat: 10AM-2PM', '2025-01-20', 'Active'),
    (6, 'Event setup, technical support', 'Wed/Fri: 4PM-8PM', '2025-02-01', 'Active'),
    (7, 'Book club leader, circulation desk', 'Mon/Wed: 9AM-1PM', '2025-03-15', 'Active');
INSERT INTO Volunteer (MemberID, SkillsInterests, AvailabilityHours, StartDate, Status) VALUES
    (8, 'Language tutoring, reference desk', 'Tue/Thu: 1PM-4PM', '2025-02-10', 'Active'),
    (9, 'Digital literacy, teen programs', 'Mon/Wed: 3PM-7PM', '2025-02-20', 'Active'),
    (10, 'Senior programs, book sorting', 'Fri/Sat: 10AM-2PM', '2025-03-05', 'Active'),
    (1, 'ESL assistance, cataloging', 'Thu/Sat: 2PM-6PM', '2025-03-10', 'Active'),
    (2, 'Children''s storyteller, shelving', 'Wed/Sun: 11AM-3PM', '2025-03-20', 'Active');


-- AcquisitionRequest data
INSERT INTO AcquisitionRequest (MemberID, Title, AuthorCreator, PublicationType, RequestDate, Status) VALUES
    (1, 'Dune', 'Frank Herbert', 'Book', '2025-03-25', 'Pending');
INSERT INTO AcquisitionRequest (MemberID, Title, AuthorCreator, PublicationType, RequestDate, Status) VALUES
    (2, 'Cloud Computing Fundamentals', 'Mary Johnson', 'Ebook', '2025-03-20', 'Pending'),
    (3, 'Modern Poetry Collection', 'Various Authors', 'Book', '2025-03-15', 'Approved'),
    (4, 'Documentary: Planet Earth III', 'BBC', 'Media', '2025-03-10', 'Pending'),
    (5, 'AI in Healthcare', 'Dr. Robert Chang', 'Journal', '2025-03-05', 'Rejected');
INSERT INTO AcquisitionRequest (MemberID, Title, AuthorCreator, PublicationType, RequestDate, Status) VALUES
    (6, 'Quantum Computing Basics', 'Dr. Alice Johnson', 'Book', '2025-03-01', 'Pending'),
    (7, 'History of Ancient Rome', 'Mary Beard', 'Book', '2025-02-28', 'Approved'),
    (8, 'Photography Masterclass', 'John Smith', 'Media', '2025-02-25', 'Pending'),
    (9, 'Sustainable Living Guide', 'Green Publishing', 'Ebook', '2025-02-20', 'Approved'),
    (10, 'Jazz Classics Collection', 'Various Artists', 'Media', '2025-02-15', 'Rejected');



INSERT INTO Fine (BorrowID, Amount, Status, IssuedDate) VALUES
    (3, 2.50, 'Unpaid', '2025-03-05'),
    (4, 1.00, 'Paid', '2025-03-02');
INSERT INTO Fine (BorrowID, Amount, Status, IssuedDate) VALUES
    (5, 3.50, 'Unpaid', '2025-03-10'),
    (6, 5.00, 'Unpaid', '2025-03-08'),
    (7, 2.00, 'Paid', '2025-03-07'),
    (8, 4.50, 'Unpaid', '2025-03-06'),
    (9, 1.50, 'Paid', '2025-03-04'),
    (10, 3.00, 'Unpaid', '2025-03-03'),
    (11, 2.50, 'Paid', '2025-03-01'),
    (12, 6.00, 'Unpaid', '2025-02-28');


INSERT INTO Reservation (MemberID, ItemID, ReservationDate, Status) VALUES
    (4, 7, '2025-03-20', 'Pending'),
    (5, 14, '2025-03-21', 'Pending'),
    (6, 2, '2025-03-19', 'Fulfilled'),
    (7, 9, '2025-03-18', 'Cancelled');
INSERT INTO Reservation (MemberID, ItemID, ReservationDate, Status) VALUES
    (8, 15, '2025-03-17', 'Pending'),
    (9, 20, '2025-03-16', 'Pending'),
    (10, 25, '2025-03-15', 'Fulfilled'),
    (1, 30, '2025-03-14', 'Cancelled'),
    (2, 35, '2025-03-13', 'Pending'),
    (3, 40, '2025-03-12', 'Fulfilled');


-- HelpRequest data
INSERT INTO HelpRequest (MemberID, RequestDate, Description, Status) VALUES
    (2, '2025-03-26', 'Need help finding research materials', 'Open');
INSERT INTO HelpRequest (MemberID, RequestDate, Description, Status) VALUES
    (3, '2025-03-25', 'Need assistance with online catalog', 'Open'),
    (4, '2025-03-24', 'Having trouble accessing e-books', 'InProgress'),
    (5, '2025-03-23', 'Request for research guidance', 'Open'),
    (6, '2025-03-22', 'Printing service help needed', 'Resolved');
INSERT INTO HelpRequest (MemberID, RequestDate, Description, Status) VALUES
    (7, '2025-03-21', 'Need help with database search', 'Open'),
    (8, '2025-03-20', 'Computer login issues', 'InProgress'),
    (9, '2025-03-19', 'Help with citation formatting', 'Open'),
    (10, '2025-03-18', 'Audiobook downloading help', 'Resolved'),
    (1, '2025-03-17', 'Wifi connection problems', 'Open'),
    (2, '2025-03-16', 'Study room reservation help', 'InProgress');

