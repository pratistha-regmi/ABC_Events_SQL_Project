-- =========================================
-- 03_insert_data.sql
-- Insert sample data 
-- =========================================

/* THEME */
INSERT INTO THEME (themeID, TYPE) VALUES
('T01','Wedding'),
('T02','Corporate'),
('T03','Birthday'),
('T04','Anniversary'),
('T05','Charity Gala');

/* VENUE */
INSERT INTO VENUE (venueID, VENUE_NAME, LOCATION) VALUES
('V01','Grand Ballroom','Manhattan'),
('V02','Rooftop Terrace','Brooklyn'),
('V03','Conference Hall','Queens'),
('V04','Garden Pavilion','Bronx'),
('V05','Luxury Loft','SoHo');

/* VENDOR */
INSERT INTO VENDOR (vendorID, VENDOR_TYPE) VALUES
('VD01','Catering'),
('VD02','Photography'),
('VD03','Floral Design'),
('VD04','Sound Systems'),
('VD05','Security');

/* SCHEDULE */
INSERT INTO SCHEDULE (scheduleID, ACTIVITY, ASSIGNED_STAFF, DURATION) VALUES
('SC01','Setup','Johnny Depp',120),
('SC02','Sound Check','Jessie Megan',60),
('SC03','Guest Arrival','Michael Lee',90),
('SC04','Main Event','Sarah White',180),
('SC05','Cleanup','Laura Green',120);

/* ATTENDEES */
INSERT INTO ATTENDEES (attendee_name, ATTENDEE_PHONE, ATTENDEE_EMAIL, RSVP_NUMBER) VALUES
('Anna Lopez', 9175551001, 'anna@email.com', 2),
('David Kim',  6465551002, 'david@email.com', 1),
('Maria Gomez',7185551003, 'maria@email.com', 3),
('John Park',  3475551004, 'john@email.com', 2),
('Lisa Patel', 9295551005, 'lisa@email.com', 4);

/* STAFF */
INSERT INTO STAFF (staffID, F_NAME, L_NAME, DESIGNATION) VALUES
('S01','Emily','Brown','Manager'),
('S02','Michael','Lee','Coordinator'),
('S03','Sarah','White','Supervisor'),
('S04','David','Kim','Technician'),
('S05','Laura','Green','Assistant');

/* EVENT_STAFF */
INSERT INTO EVENT_STAFF (staffID, DEPARTMENT, ROLE_TYPE) VALUES
('S01','Operations','Logistics'),
('S02','Entertainment','Performance'),
('S03','Catering','Food Service'),
('S04','Technical','Audio'),
('S05','Security','Crowd Control');

/* EVENT_PLANNER */
INSERT INTO EVENT_PLANNER (staffID, EVENTPLANNERID, EVENTPLANNER_NAME, LICENSE_ID) VALUES
('S06','EP01','Laura Smith','LIC1001'),
('S07','EP02','Daniel Green','LIC1002'),
('S08','EP03','Rachel Adams','LIC1003'),
('S09','EP04','Kevin Moore','LIC1004'),
('S10','EP05','Natalie Perez','LIC1005');

/* INVOICES */
INSERT INTO INVOICES (invoiceID, ISSUE_DATE, AMOUNT, CLIENT_NAME) VALUES
('I01','2024-11-25',4500,'Sophia Martinez'),
('I02','2024-11-26',3200,'James Wilson'),
('I03','2024-11-27',2800,'Olivia Chen'),
('I04','2024-11-28',3900,'Daniel Brown'),
('I05','2024-11-29',5100,'Ava Johnson');

/* PAYMENT */
INSERT INTO PAYMENT (paymentID, PAYMENT_DATE, PAYMENT_TYPE, BALANCE_DUE, invoiceID) VALUES
('P01','2024-11-30','Credit Card',0,'I01'),
('P02','2024-12-01','Bank Transfer',500,'I02'),
('P03','2024-12-02','Cash',0,'I03'),
('P04','2024-12-03','Credit Card',300,'I04'),
('P05','2024-12-04','Check',0,'I05');

/* PERFORMERS */
INSERT INTO PERFORMERS (performerID, ARTIST_NAME, PERFORMANCE_TYPE) VALUES
('PF01','DJ Pulse','DJ'),
('PF02','Jazz Trio','Live Music'),
('PF03','Fire Dancers','Performance'),
('PF04','Classical Quartet','Music'),
('PF05','Stand-up Comedian','Comedy');

/* CLIENT */
INSERT INTO CLIENT (clientID, CLIENT_NAME, CLIENT_PHONE, CLIENT_EMAIL, PREFERENCE) VALUES
('C01','Sophia Martinez','9175551111','sophia@email.com','Elegant décor'),
('C02','James Wilson','6465552222','james@email.com','Minimal style'),
('C03','Olivia Chen','7185553333','olivia@email.com','Bright colors'),
('C04','Daniel Brown','3475554444','daniel@email.com','Formal seating'),
('C05','Ava Johnson','9295555555','ava@email.com','Outdoor setup');

/* EQUIPMENTS */
INSERT INTO EQUIPMENTS (equipment_num, CATEGORY, STORAGE_LOCATION) VALUES
('E01','Audio','Main Warehouse'),
('E02','Lighting','Warehouse A'),
('E03','Furniture','Warehouse B'),
('E04','Decor','Warehouse C'),
('E05','Stage','Warehouse D');

/* EVENT */
INSERT INTO EVENT (eventID, DATE, TIME, themeID, venueID, clientID) VALUES
('EV01','2024-12-10','18:00','T01','V01','C01'),
('EV02','2024-12-12','10:00','T02','V03','C02'),
('EV03','2024-12-15','19:00','T03','V02','C03'),
('EV04','2024-12-18','17:00','T04','V04','C04'),
('EV05','2024-12-20','20:00','T05','V05','C05');

/* VENUE_EQUIPMENTS */
INSERT INTO VENUE_EQUIPMENTS (VENUEID, equipment_num) VALUES
('V01','E01'),
('V02','E02'),
('V03','E03'),
('V04','E04'),
('V05','E05');

/* SCHEDULE_EVENT */
INSERT INTO SCHEDULE_EVENT (ACTIVITY, ASSIGNED_STAFF, DURATION, TIME, DATE, EVENT_ID, scheduleID) VALUES
('Setup','Johnny Depp',120,'18:00','2024-12-10','EV01','SC01'),
('Sound Check','Jessie Megan',60,'10:00','2024-12-12','EV02','SC02'),
('Guest Arrival','Michael Lee',90,'19:00','2024-12-15','EV03','SC03'),
('Main Event','Sarah White',180,'19:00','2024-12-18','EV04','SC04'),
('Cleanup','Laura Green',120,'17:00','2024-12-20','EV05','SC05');

/* EVENT_INVOICES */
INSERT INTO EVENT_INVOICES (eventID, DATE, TIME, INVOICEID, ISSUE_DATE, AMOUNT) VALUES
('EV01','2024-12-10','18:00','I01','2024-11-25',4500),
('EV02','2024-12-12','10:00','I02','2024-11-26',3200),
('EV03','2024-12-15','19:00','I03','2024-11-27',2800),
('EV04','2024-12-18','17:00','I04','2024-11-28',3900),
('EV05','2024-12-20','20:00','I05','2024-11-29',5100);

/* SCHEDULE_PERFORMERS */
INSERT INTO SCHEDULE_PERFORMERS (SCHEDULEID, performerID) VALUES
('SC01','PF01'),
('SC02','PF02'),
('SC03','PF03'),
('SC04','PF04'),
('SC05','PF05');

/* VENDORS_EVENT */
INSERT INTO VENDORS_EVENT (VENDORID, eventID) VALUES
('VD01','EV01'),
('VD02','EV02'),
('VD03','EV03'),
('VD04','EV04'),
('VD05','EV05');

/* ATTENDEE_EVENT */
INSERT INTO ATTENDEE_EVENT (ATTENDEE_NAME, eventID) VALUES
('Anna Lopez','EV01'),
('David Kim','EV02'),
('Maria Gomez','EV03'),
('John Park','EV04'),
('Lisa Patel','EV05');

/* STAFF_EVENT */
INSERT INTO STAFF_EVENT (STAFFID, eventID) VALUES
('S01','EV01'),
('S02','EV02'),
('S03','EV03'),
('S04','EV04'),
('S05','EV05');

/* STAFF_SUPERVISOR */
INSERT INTO STAFF_SUPERVISOR (STAFFID, supervisorID) VALUES
('S02','S03'),
('S04','S03'),
('S05','S03');
