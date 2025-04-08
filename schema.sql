
-- Member table: Stores library member information
CREATE TABLE Member (
    MemberID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Email TEXT UNIQUE NOT NULL,
    Phone TEXT,
    Address TEXT,
    
    MembershipDate DATE NOT NULL,
    Password TEXT NOT NULL
);

-- Staff table: Stores library staff information
CREATE TABLE Staff (
    StaffID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Position TEXT NOT NULL,
    Department TEXT NOT NULL,
    Email TEXT UNIQUE NOT NULL,
    Phone TEXT,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2),
    Schedule TEXT,
    Password TEXT NOT NULL
);

-- Room table: Stores information about library rooms
CREATE TABLE Room (
    RoomID INTEGER PRIMARY KEY AUTOINCREMENT,
    RoomName TEXT NOT NULL,
    Capacity INTEGER NOT NULL,
    Location TEXT NOT NULL,
    AvailabilityStatus TEXT CHECK (AvailabilityStatus IN ('Available', 'Occupied', 'Maintenance')) DEFAULT 'Available'
);

-- LibraryItem table: Parent table for all library items
CREATE TABLE LibraryItem (
    ItemID INTEGER PRIMARY KEY AUTOINCREMENT,
    Title TEXT NOT NULL,
    PublicationDate DATE,
    Status TEXT CHECK (Status IN ('Available', 'Borrowed', 'Lost', 'Damaged')) DEFAULT 'Available',
    ItemType TEXT NOT NULL CHECK (ItemType IN ('Book', 'Ebook', 'Magazine', 'Journal', 'Media')),
    Location TEXT DEFAULT 'General Collection'
);

-- Book table: Specific details for books
CREATE TABLE Book (
    ItemID INTEGER PRIMARY KEY,
    Author TEXT NOT NULL,
    Publisher TEXT,
    Genre TEXT,
    PageCount INTEGER,
    Format TEXT CHECK (Format IN ('Hardcover', 'Paperback', 'Other')),
    FOREIGN KEY (ItemID) REFERENCES LibraryItem(ItemID)
);

-- Ebook table: Specific details for ebooks
CREATE TABLE Ebook (
    ItemID INTEGER PRIMARY KEY,
    Author TEXT NOT NULL,
    Publisher TEXT,
    Genre TEXT,
    FileFormat TEXT NOT NULL,
    FOREIGN KEY (ItemID) REFERENCES LibraryItem(ItemID)
);

-- Magazine table: Specific details for magazines
CREATE TABLE Magazine (
    ItemID INTEGER PRIMARY KEY,
    IssueNumber TEXT NOT NULL,
    Publisher TEXT NOT NULL,
    Category TEXT,
    FOREIGN KEY (ItemID) REFERENCES LibraryItem(ItemID)
);

-- Journal table: Specific details for journals
CREATE TABLE Journal (
    ItemID INTEGER PRIMARY KEY,
    Volume TEXT NOT NULL,
    Issue TEXT NOT NULL,
    Publisher TEXT NOT NULL,
    Field TEXT NOT NULL,
    PeerReviewed INTEGER CHECK (PeerReviewed IN (0, 1)),
    FOREIGN KEY (ItemID) REFERENCES LibraryItem(ItemID)
);

-- Media table: Specific details for media items (CDs, DVDs, etc.)
CREATE TABLE Media (
    ItemID INTEGER PRIMARY KEY,
    MediaType TEXT NOT NULL CHECK (MediaType IN ('CD', 'DVD', 'Record', 'Other')),
    Artist TEXT NOT NULL,
    Runtime TEXT,
    Format TEXT NOT NULL,
    FOREIGN KEY (ItemID) REFERENCES LibraryItem(ItemID)
);

-- Borrowing table: Tracks item borrowing by members
CREATE TABLE Borrowing (
    BorrowID INTEGER PRIMARY KEY AUTOINCREMENT,
    MemberID INTEGER NOT NULL,
    ItemID INTEGER NOT NULL,
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    StaffID INTEGER,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (ItemID) REFERENCES LibraryItem(ItemID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

-- Fine table: Tracks fines for late returns
CREATE TABLE Fine (
    FineID INTEGER PRIMARY KEY AUTOINCREMENT,
    BorrowID INTEGER NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Status TEXT CHECK (Status IN ('Unpaid', 'Paid')) DEFAULT 'Unpaid',
    IssuedDate DATE NOT NULL,
    PaidDate DATE,
    FOREIGN KEY (BorrowID) REFERENCES Borrowing(BorrowID)
);

-- Event table: Stores library event information
CREATE TABLE Event (
    EventID INTEGER PRIMARY KEY AUTOINCREMENT,
    Title TEXT NOT NULL,
    Description TEXT,
    EventDate DATE NOT NULL,
    StartTime TEXT NOT NULL,
    EndTime TEXT NOT NULL,
    MaxAttendees INTEGER NOT NULL,
    EventType TEXT NOT NULL CHECK (EventType IN ('BookClub', 'ArtShow', 'Screening', 'Workshop', 'Other')),
    TargetAudience TEXT,
    StaffID INTEGER,
    RoomID INTEGER NOT NULL,
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);

-- EventAttendance table: Tracks event registrations and attendance
CREATE TABLE EventAttendance (
    AttendanceID INTEGER PRIMARY KEY AUTOINCREMENT,
    EventID INTEGER NOT NULL,
    MemberID INTEGER NOT NULL,
    RegistrationDate DATE NOT NULL,
    AttendanceStatus TEXT CHECK (AttendanceStatus IN ('Registered', 'Attended', 'Cancelled')) DEFAULT 'Registered',
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

-- Volunteer table: Tracks volunteer information
CREATE TABLE Volunteer (
    VolunteerID INTEGER PRIMARY KEY AUTOINCREMENT,
    MemberID INTEGER NOT NULL,
    SkillsInterests TEXT NOT NULL,
    AvailabilityHours TEXT NOT NULL,
    StartDate DATE NOT NULL,
    Status TEXT CHECK (Status IN ('Active', 'Inactive')) DEFAULT 'Active',
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

-- AcquisitionRequest table: Tracks requests for new items
CREATE TABLE AcquisitionRequest (
    RequestID INTEGER PRIMARY KEY AUTOINCREMENT,
    MemberID INTEGER NOT NULL,
    Title TEXT NOT NULL,
    AuthorCreator TEXT NOT NULL,
    PublicationType TEXT NOT NULL,
    RequestDate DATE NOT NULL,
    Status TEXT CHECK (Status IN ('Pending', 'Approved', 'Rejected')) DEFAULT 'Pending',
    StaffID INTEGER,
    Notes TEXT,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

-- HelpRequest table: Tracks member requests for assistance
CREATE TABLE HelpRequest (
    RequestID INTEGER PRIMARY KEY AUTOINCREMENT,
    MemberID INTEGER NOT NULL,
    RequestDate DATE NOT NULL,
    Description TEXT NOT NULL,
    Status TEXT CHECK (Status IN ('Open', 'InProgress', 'Resolved')) DEFAULT 'Open',
    StaffID INTEGER,
    Resolution TEXT,
    ClosedDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

-- Reservation table: Tracks item reservations
CREATE TABLE Reservation (
    ReservationID INTEGER PRIMARY KEY AUTOINCREMENT,
    MemberID INTEGER NOT NULL,
    ItemID INTEGER NOT NULL,
    ReservationDate DATE NOT NULL DEFAULT CURRENT_DATE,
    Status TEXT CHECK (Status IN ('Pending', 'Fulfilled', 'Cancelled')) DEFAULT 'Pending',
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (ItemID) REFERENCES LibraryItem(ItemID),
    UNIQUE (MemberID, ItemID)
);

-- Trigger to update item status when borrowed
CREATE TRIGGER update_item_status_borrow
AFTER INSERT ON Borrowing
FOR EACH ROW
BEGIN
    UPDATE LibraryItem
    SET Status = 'Borrowed'
    WHERE ItemID = NEW.ItemID;
END;

-- Trigger to update item status when returned
CREATE TRIGGER update_item_status_return
AFTER UPDATE OF ReturnDate ON Borrowing
FOR EACH ROW
WHEN NEW.ReturnDate IS NOT NULL
BEGIN
    UPDATE LibraryItem
    SET Status = 'Available'
    WHERE ItemID = OLD.ItemID;
END;

-- Trigger to create fine for late returns
CREATE TRIGGER create_fine_late_return
AFTER UPDATE OF ReturnDate ON Borrowing
FOR EACH ROW
WHEN NEW.ReturnDate IS NOT NULL AND NEW.ReturnDate > OLD.DueDate
BEGIN
    INSERT INTO Fine (BorrowID, Amount, Status, IssuedDate)
    VALUES (NEW.BorrowID, (julianday(NEW.ReturnDate) - julianday(OLD.DueDate)) * 0.50, 'Unpaid', NEW.ReturnDate);
END;
