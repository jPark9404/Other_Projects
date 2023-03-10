------ REMOVE ALL DATA FROM ROWS IN ALL THE TABLES IN THE CORRECT ORDER ------

TRUNCATE TABLE CREDIT_RESERVATION_BRIDGE;
TRUNCATE TABLE CUSTOMER_COURSE_BRIDGE;
TRUNCATE TABLE PROMO_CODE;
TRUNCATE TABLE ForeEver_Rewards;
TRUNCATE TABLE CUSTOMER_REVIEW;
TRUNCATE TABLE RESERVATION;
TRUNCATE TABLE CREDIT_CARD;
TRUNCATE TABLE Customer;
TRUNCATE TABLE TEE_TIMES;
TRUNCATE TABLE COURSE_INFORMATION;

------ INSERTING DATA INTO TABLES ------



--- INSERT INTO COURSE_INFORMATION TABLE ---
INSERT INTO COURSE_INFORMATION VALUES (1111111111, 'Dubsdread Golf Course', 'Orlando', 'T3K3J1', 'USA', 4, 'Classic course with beautiful scenery', 6153, 1923);
INSERT INTO COURSE_INFORMATION VALUES (4815162342, 'Black Bear Golf Club', 'Florida', 'T3K3J1', 'USA', 4, 'This course is wicked! Enjoy the ride and dont slide!', 7002, 1995);
INSERT INTO COURSE_INFORMATION VALUES (2345633255, 'Shingle Creek Golf Club', 'Orlando', 'T3K3J1', 'USA', 5, 'If youre at the shingle its time to mingle!', 7213, 2003);
INSERT INTO COURSE_INFORMATION VALUES (1234567891, 'Falcons Fire Golf Club', 'Kissimmee', 'T3K3J1', 'USA', 4, 'Fire like a falcon on this championship golf course!', 7000, 1993);
INSERT INTO COURSE_INFORMATION VALUES (1452563059, 'Tooth Course at Orange County National', 'Winter Garden', 'T3K3J1', 'USA', 4, 'Whatever the goal, OCN has something for you!', 1563, 1997);

---INSERT INTO TEE_TIMES---
---Dubsdread Golf course:
INSERT INTO TEE_TIMES VALUES (date '2015-01-01', 1111111111, 38.95, 'Y', 9, '23');
INSERT INTO TEE_TIMES VALUES (date '2015-03-01', 1111111111, 38.95, 'Y', 18, '33');
INSERT INTO TEE_TIMES VALUES (date '2015-02-01', 1111111111, 38.95, 'Y', 9, '5');

---Black Bear Golf Club:
INSERT INTO TEE_TIMES VALUES (date '2015-04-01', 4815162342, 56.07, 'Y', 18, '23');
INSERT INTO TEE_TIMES VALUES (date '2015-05-01', 4815162342, 56.07, 'Y', 18, '7');
INSERT INTO TEE_TIMES VALUES (date '2015-06-01', 4815162342, 56.07, 'Y', 18, '4');

---Shingle creek Golf Club
INSERT INTO TEE_TIMES VALUES (date '2015-07-01', 2345633255, 99.00, 'Y', 18, '1');
INSERT INTO TEE_TIMES VALUES (date '2015-08-01', 2345633255, 91.99, 'Y', 9, '2');
INSERT INTO TEE_TIMES VALUES (date '2015-09-01', 2345633255, 118.99, 'Y', 9, '10');

---Falcons fire golf club:
INSERT INTO TEE_TIMES VALUES (date '2015-10-01', 1234567891, 31.00, 'Y', 18, '1');
INSERT INTO TEE_TIMES VALUES (date '2015-11-01', 1234567891, 94.00, 'Y', 18, '3');
INSERT INTO TEE_TIMES VALUES (date '2015-12-01', 1234567891, 99.00, 'Y', 18, '11');

---Tooth course at Orange County National:
INSERT INTO TEE_TIMES VALUES (date '2015-02-02', 1452563059, 7.00, 'N', 9, '3');
INSERT INTO TEE_TIMES VALUES (date '2015-02-03', 1452563059, 25.00, 'N', 9, '15');
INSERT INTO TEE_TIMES VALUES (date '2015-02-04', 1452563059, 25.00, 'N', 9, '16');


---INSERT DATA INTO CUSTOMER TABLE ---
INSERT INTO Customer VALUES (4987635324, 1111111111, 'urmom@yahoo.com', 'Ryan', 'Reynolds', 50, 2);
INSERT INTO Customer VALUES (1894658914, 4815162342, 'johndoe@yahoo.com', 'John', 'Doe', 100, 2);
INSERT INTO Customer (Customer_ID,favorite_course_id,email_address,first_name,last_name, gift_card_credit,amount_of_cards) VALUES (7459254439, 1234567891, 'aboutdrive@yahoo.com', 'Dwayne', 'Johnson', 500, 1); 


---INSERT DATA INTO CREDIT_CARD---
INSERT INTO CREDIT_CARD VALUES (4500600124521236, 4987635324, 'Ryan Reynolds', 1122, 0);
INSERT INTO CREDIT_CARD VALUES (4500600124521237, 4987635324, 'Ryan Reynolds', 1123, 1);
INSERT INTO CREDIT_CARD VALUES (4500600124521234, 1894658914, 'John Doe', 1022, 0);
INSERT INTO CREDIT_CARD VALUES (4500600124521235, 1894658914, 'John Doe', 1023, 1);
INSERT INTO CREDIT_CARD VALUES (4500600124521238, 7459254439, 'Dwayne Johnson', 1224, 1);


---INSERT DATA INTO RESERVATION---
INSERT INTO RESERVATION (reservation_id, customer_Id, tee_time, players, green_fees_paid, tax_paid, amount_charged) VALUES(1123456789, 4987635324, date '2015-01-01', 1, 1000, 50, 1050);
INSERT INTO RESERVATION (reservation_id, customer_Id, tee_time, players, green_fees_paid, tax_paid, amount_charged) VALUES(1223456789, 1894658914, date '2015-04-01', 2, 2000, 100, 2100);
INSERT INTO RESERVATION (reservation_id, customer_Id, tee_time, players, green_fees_paid, tax_paid, amount_charged) VALUES(1323456789, 7459254439, date '2015-07-01', 3, 3000, 150, 3150);
INSERT INTO RESERVATION (reservation_id, customer_Id, tee_time, players, green_fees_paid, tax_paid, amount_charged) VALUES(1423456789, 1894658914, date '2015-10-01', 4, 4000,200 , 4200);
INSERT INTO RESERVATION (reservation_id, customer_Id, tee_time, players, green_fees_paid, tax_paid, amount_charged) VALUES(1523456789, 7459254439, date '2015-02-02', 5, 5000, 250, 5250);


---INSERT DATA INTO CUSTOMER_REVIEW---
INSERT INTO CUSTOMER_REVIEW (review_id, course_Id, customer_Id, title, comments, star_rating) VALUES (1234567890, 1111111111, 1894658914, 'Great Service', 'the staff was kind', 5);
INSERT INTO CUSTOMER_REVIEW (review_id, course_Id, customer_Id, title, comments, star_rating) VALUES (1234567891, 4815162342, 4987635324, 'Customer Service', 'some staff was rude but service not bad', 3);
INSERT INTO CUSTOMER_REVIEW (review_id, course_Id, customer_Id, title, comments, star_rating) VALUES (1234567892, 2345633255, 7459254439, 'Cleaning status', 'Cleaning is a little bit bad but the service was great', 4); 


---INSERT DATA INTO REWARDS_ID---
INSERT INTO ForeEver_Rewards VALUES (6543215648, 4987635324, 1);
INSERT INTO ForeEver_Rewards VALUES (8465498795, 1894658914, 1);
INSERT INTO ForeEver_Rewards VALUES (4654987653, 7459254439, 1);


---INSERT DATA INTO PROMO_CODE---
INSERT INTO PROMO_CODE VALUES ('1234ABCD1234ABCD69', 4654987653, 1123456789, 0, 10.00, date '2014-12-02', 2412);
INSERT INTO PROMO_CODE VALUES ('1234AXXD2334AYYD69', 4654987653, 1223456789, 1, 00.01, date '2015-02-02', 2502);
INSERT INTO PROMO_CODE VALUES ('5678EFGH9969THXY69', 8465498795, 1323456789, 0, 10.00, date '2014-08-02', 2408);
INSERT INTO PROMO_CODE VALUES ('9984HEHE3737COOL69', 8465498795, 1423456789, 0, 10.00, date '2014-03-02', 2403);
INSERT INTO PROMO_CODE VALUES ('4474POPO3847BLEH69', 6543215648, 1523456789, 0, 10.00, date '2014-06-02', 2406);


---INSERT DATA INTO CUSTOMER_COURSE_BRIDGE---
INSERT INTO customer_course_bridge VALUES(4987635324, 1111111111);
INSERT INTO customer_course_bridge VALUES(1894658914, 2345633255);
INSERT INTO customer_course_bridge VALUES(7459254439, 1452563059);


---INSERT DATA INTO CREDIT-RESERVATION_BRIDGE---
INSERT INTO CREDIT_RESERVATION_BRIDGE VALUES(4500600124521236, 1123456789);
INSERT INTO CREDIT_RESERVATION_BRIDGE VALUES(4500600124521238, 1523456789);