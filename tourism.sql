use tourism;

INSERT INTO state (state_id, state_name) VALUES (1, 'Maharashtra');
INSERT INTO state (state_id, state_name) VALUES (2, 'Goa');
INSERT INTO state (state_id, state_name) VALUES (3, 'Rajasthan');
INSERT INTO state (state_id, state_name) VALUES (4, 'Kerala');
INSERT INTO state (state_id, state_name) VALUES (5, 'Karnataka');
INSERT INTO state (state_id, state_name) VALUES (6, 'Tamil Nadu');
INSERT INTO state (state_id, state_name) VALUES (7, 'Gujarat');
INSERT INTO state (state_id, state_name) VALUES (8, 'Punjab');
INSERT INTO state (state_id, state_name) VALUES (9, 'Himachal Pradesh');
INSERT INTO state (state_id, state_name) VALUES (10, 'Uttarakhand');

INSERT INTO city (city_id, city_name, state_id) VALUES
(1, 'Mumbai', 1),
(2, 'Pune', 1),
(3, 'Panaji', 2),
(4, 'Jaipur', 3),
(5, 'Udaipur', 3),
(6, 'Kochi', 4),
(7, 'Bangalore', 5),
(8, 'Chennai', 6),
(9, 'Ahmedabad', 7),
(10, 'Amritsar', 8);

INSERT INTO hotel (address, city_name, name, rating) VALUES
('Colaba, Mumbai', 'Mumbai', 'Taj Mahal Palace Hotel', 4.8),
('Marine Drive, Mumbai', 'Mumbai', 'The Oberoi Mumbai', 4.7),
('Shivaji Nagar, Pune', 'Pune', 'JW Marriott Pune', 4.6),
('Calangute Beach Road, Goa', 'Panaji', 'Goa Marriott Resort', 4.5),
('MI Road, Jaipur', 'Jaipur', 'ITC Rajputana', 4.6),
('Lake Pichola Road, Udaipur', 'Udaipur', 'Taj Lake Palace', 4.9),
('MG Road, Kochi', 'Kochi', 'Le Meridien Kochi', 4.4),
('Residency Road, Bangalore', 'Bangalore', 'The Ritz Carlton Bangalore', 4.7),
('Anna Salai, Chennai', 'Chennai', 'The Park Chennai', 4.3),
('Golden Temple Road, Amritsar', 'Amritsar', 'Ramada Amritsar', 4.5);
INSERT INTO hotel_room (price_per_night, room_type, hotel_id) VALUES
(4500, 'Standard Room', 1),
(6500, 'Deluxe Room', 1),
(9000, 'Suite', 1),

(4000, 'Standard Room', 2),
(6000, 'Deluxe Room', 2),
(8500, 'Suite', 2),

(3500, 'Standard Room', 3),
(5500, 'Deluxe Room', 3),

(3000, 'Standard Room', 4),
(5000, 'Deluxe Room', 4),

(4200, 'Standard Room', 5),
(7000, 'Luxury Suite', 5),

(4800, 'Standard Room', 6),
(7500, 'Lake View Suite', 6),

(3200, 'Standard Room', 7),
(5200, 'Deluxe Room', 7),

(4600, 'Standard Room', 8),
(7200, 'Executive Suite', 8),

(3000, 'Standard Room', 9),
(4500, 'Deluxe Room', 9),

(2800, 'Standard Room', 10),
(4300, 'Deluxe Room', 10);
INSERT INTO place (place_id, place_name, city_id, entry_fee, is_asi_monument) VALUES
(1, 'Gateway of India', 1, 0.00, 1),
(2, 'Marine Drive', 1, 0.00, 0),
(3, 'Shaniwar Wada', 2, 50.00, 1),
(4, 'Baga Beach', 3, 0.00, 0),
(5, 'Hawa Mahal', 4, 200.00, 1),
(6, 'City Palace', 5, 300.00, 1),
(7, 'Fort Kochi', 6, 0.00, 0),
(8, 'Lalbagh Garden', 7, 30.00, 0),
(9, 'Marina Beach', 8, 0.00, 0),
(10, 'Golden Temple', 10, 0.00, 0);