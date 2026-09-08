CREATE DATABASE airline_project;
USE airline_project;
CREATE TABLE airlines (
    airline_id VARCHAR(10) PRIMARY KEY,
    airline_name VARCHAR(100),
    country VARCHAR(50)
);

INSERT INTO airlines VALUES
('A001','IndiGo','India'),
('A002','Air India','India'),
('A003','Vistara','India'),
('A004','SpiceJet','India'),
('A005','Akasa Air','India'),
('A006','Go First','India'),
('A007','Emirates','UAE'),
('A008','Qatar Airways','Qatar'),
('A009','Singapore Airlines','Singapore'),
('A010','Lufthansa','Germany'),
('A011','British Airways','UK'),
('A012','Etihad Airways','UAE'),
('A013','Air France','France'),
('A014','KLM','Netherlands'),
('A015','Turkish Airlines','Turkey'),
('A016','Thai Airways','Thailand'),
('A017','Malaysia Airlines','Malaysia'),
('A018','SriLankan Airlines','Sri Lanka'),
('A019','Japan Airlines','Japan'),
('A020','Cathay Pacific','Hong Kong');
CREATE TABLE flights (
    flight_id VARCHAR(10) PRIMARY KEY,
    airline_id VARCHAR(10),
    flight_no VARCHAR(20),
    source VARCHAR(50),
    destination VARCHAR(50),
    departure_date DATE,
    departure_time TIME,
    arrival_time TIME,
    aircraft VARCHAR(50),
    ticket_price DECIMAL(10,2),
    FOREIGN KEY (airline_id) REFERENCES airlines(airline_id)
);

INSERT INTO flights VALUES
('F001','A001','6E101','Delhi','Mumbai','2026-01-05','08:00:00','10:10:00','A320',5500),
('F002','A002','AI202','Mumbai','Delhi','2026-01-06','11:00:00','13:10:00','A321',6200),
('F003','A003','UK303','Delhi','Bangalore','2026-01-07','09:30:00','12:20:00','A320',7200),
('F004','A004','SG404','Kolkata','Delhi','2026-01-08','14:00:00','16:20:00','B737',4800),
('F005','A005','AK505','Mumbai','Goa','2026-01-09','07:30:00','08:40:00','B737',3500),
('F006','A007','EK606','Delhi','Dubai','2026-01-10','21:00:00','23:30:00','B777',22000),
('F007','A008','QR707','Delhi','Doha','2026-01-11','20:00:00','22:40:00','B787',25000),
('F008','A009','SQ808','Delhi','Singapore','2026-01-12','23:00:00','06:30:00','A350',32000),
('F009','A010','LH909','Delhi','Frankfurt','2026-01-13','19:00:00','05:30:00','A350',45000),
('F010','A011','BA010','Delhi','London','2026-01-14','22:00:00','06:00:00','B787',48000),
('F011','A012','EY111','Mumbai','Abu Dhabi','2026-01-15','18:00:00','20:00:00','B787',21000),
('F012','A013','AF212','Delhi','Paris','2026-01-16','21:30:00','06:00:00','B777',42000),
('F013','A014','KL313','Delhi','Amsterdam','2026-01-17','20:30:00','06:10:00','B787',40000),
('F014','A015','TK414','Mumbai','Istanbul','2026-01-18','22:00:00','06:30:00','A330',38000),
('F015','A016','TG515','Delhi','Bangkok','2026-01-19','23:30:00','05:00:00','A350',27000),
('F016','A017','MH616','Delhi','Kuala Lumpur','2026-01-20','22:30:00','06:00:00','A330',24000),
('F017','A018','UL717','Chennai','Colombo','2026-01-21','10:00:00','11:30:00','A320',9000),
('F018','A019','JL818','Delhi','Tokyo','2026-01-22','18:30:00','06:00:00','B787',46000),
('F019','A020','CX919','Delhi','Hong Kong','2026-01-23','19:30:00','04:00:00','A350',35000),
('F020','A001','6E020','Lucknow','Delhi','2026-01-24','07:00:00','08:15:00','A320',4200);
CREATE TABLE passengers (
    passenger_id VARCHAR(10) PRIMARY KEY,
    passenger_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    phone VARCHAR(15)
);

INSERT INTO passengers VALUES
('P001','Rahul Sharma','Male',25,'Delhi','9876500001'),
('P002','Priya Singh','Female',28,'Mumbai','9876500002'),
('P003','Amit Verma','Male',32,'Lucknow','9876500003'),
('P004','Neha Gupta','Female',24,'Delhi','9876500004'),
('P005','Rohit Yadav','Male',30,'Kanpur','9876500005'),
('P006','Anjali Singh','Female',27,'Jaipur','9876500006'),
('P007','Arjun Kumar','Male',35,'Delhi','9876500007'),
('P008','Sneha Mishra','Female',26,'Lucknow','9876500008'),
('P009','Karan Malhotra','Male',29,'Mumbai','9876500009'),
('P010','Pooja Sharma','Female',31,'Agra','9876500010'),
('P011','Vikas Gupta','Male',33,'Delhi','9876500011'),
('P012','Riya Verma','Female',23,'Noida','9876500012'),
('P013','Suresh Kumar','Male',40,'Kanpur','9876500013'),
('P014','Kavita Singh','Female',36,'Jaipur','9876500014'),
('P015','Manish Yadav','Male',27,'Lucknow','9876500015'),
('P016','Nisha Agarwal','Female',29,'Delhi','9876500016'),
('P017','Deepak Mishra','Male',38,'Varanasi','9876500017'),
('P018','Simran Kaur','Female',25,'Amritsar','9876500018'),
('P019','Rakesh Gupta','Male',42,'Mumbai','9876500019'),
('P020','Ayesha Khan','Female',30,'Hyderabad','9876500020');
CREATE TABLE seats (
    seat_id VARCHAR(10) PRIMARY KEY,
    flight_id VARCHAR(10),
    seat_number VARCHAR(10),
    class VARCHAR(20),
    seat_status VARCHAR(20),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);

INSERT INTO seats VALUES
('S001','F001','1A','Economy','Available'),
('S002','F001','1B','Economy','Booked'),
('S003','F002','1A','Business','Booked'),
('S004','F002','1B','Economy','Available'),
('S005','F003','2A','Economy','Booked'),
('S006','F003','2B','Economy','Available'),
('S007','F004','3A','Economy','Booked'),
('S008','F004','3B','Business','Available'),
('S009','F005','4A','Economy','Booked'),
('S010','F005','4B','Economy','Available'),
('S011','F006','5A','Business','Booked'),
('S012','F006','5B','Economy','Available'),
('S013','F007','6A','Business','Booked'),
('S014','F008','7A','Economy','Booked'),
('S015','F009','8A','Business','Available'),
('S016','F010','9A','Economy','Booked'),
('S017','F011','10A','Business','Available'),
('S018','F012','11A','Economy','Booked'),
('S019','F013','12A','Business','Available'),
('S020','F014','13A','Economy','Booked');
CREATE TABLE tickets (
    ticket_id VARCHAR(10) PRIMARY KEY,
    passenger_id VARCHAR(10),
    flight_id VARCHAR(10),
    seat_id VARCHAR(10),
    booking_date DATE,
    class VARCHAR(20),
    fare DECIMAL(10,2),
    payment_status VARCHAR(20),

    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id),
    FOREIGN KEY (seat_id) REFERENCES seats(seat_id)
);

INSERT INTO tickets VALUES
('T001','P001','F001','S002','2025-12-20','Economy',5500,'Paid'),
('T002','P002','F002','S003','2025-12-21','Business',6200,'Paid'),
('T003','P003','F003','S005','2025-12-22','Economy',7200,'Paid'),
('T004','P004','F004','S007','2025-12-23','Economy',4800,'Paid'),
('T005','P005','F005','S009','2025-12-24','Economy',3500,'Paid'),
('T006','P006','F006','S011','2025-12-25','Business',22000,'Pending'),
('T007','P007','F007','S013','2025-12-26','Business',25000,'Paid'),
('T008','P008','F008','S014','2025-12-27','Economy',32000,'Paid'),
('T009','P009','F010','S016','2025-12-28','Economy',48000,'Paid'),
('T010','P010','F012','S018','2025-12-29','Economy',42000,'Pending'),
('T011','P011','F009','S015','2025-12-30','Business',45000,'Paid'),
('T012','P012','F011','S017','2025-12-31','Business',21000,'Paid'),
('T013','P013','F013','S019','2026-01-01','Business',40000,'Paid'),
('T014','P014','F014','S020','2026-01-02','Economy',38000,'Pending'),
('T015','P015','F015','S001','2026-01-03','Economy',27000,'Paid'),
('T016','P016','F016','S004','2026-01-04','Economy',24000,'Paid'),
('T017','P017','F017','S006','2026-01-05','Economy',9000,'Paid'),
('T018','P018','F018','S008','2026-01-06','Economy',46000,'Paid'),
('T019','P019','F019','S010','2026-01-07','Economy',35000,'Pending'),
('T020','P020','F020','S012','2026-01-08','Economy',4200,'Paid');
SELECT COUNT(*) FROM airlines;
SELECT COUNT(*) FROM flights;
SELECT COUNT(*) FROM passengers;
SELECT COUNT(*) FROM seats;
SELECT COUNT(*) FROM tickets;
SELECT COUNT(*) AS total_airlines FROM airlines;

SELECT COUNT(*) AS total_flights FROM flights;

SELECT COUNT(*) AS total_passengers FROM passengers;

SELECT COUNT(*) AS total_seats FROM seats;

SELECT COUNT(*) AS total_tickets FROM tickets;

SELECT * FROM airlines;
SELECT * FROM flights;
SELECT * FROM passengers;
SELECT * FROM seats;
SELECT * FROM tickets;
SELECT * FROM airlines
WHERE airline_name IS NULL OR country IS NULL;
SELECT * FROM flights
WHERE source IS NULL
   OR destination IS NULL
   OR ticket_price IS NULL;
   SELECT * FROM passengers
WHERE passenger_name IS NULL
   OR city IS NULL
   OR phone IS NULL;
   SELECT * FROM tickets
WHERE passenger_id IS NULL
   OR flight_id IS NULL
   OR fare IS NULL;
   select*from airlines;
   USE airline_project;

SELECT
    t.ticket_id,
    p.passenger_id,
    p.passenger_name,
    p.gender,
    p.age,
    p.city AS passenger_city,

    f.flight_id,
    f.flight_no,
    a.airline_name,
    f.source,
    f.destination,
    f.departure_date,
    f.departure_time,
    f.arrival_time,
    f.aircraft,
    f.ticket_price,

    s.seat_number,
    s.class AS seat_class,
    s.seat_status,

    t.booking_date,
    t.class AS ticket_class,
    t.fare,
    t.payment_status

FROM tickets t
JOIN passengers p
    ON t.passenger_id = p.passenger_id
JOIN flights f
    ON t.flight_id = f.flight_id
JOIN airlines a
    ON f.airline_id = a.airline_id
JOIN seats s
    ON t.seat_id = s.seat_id;