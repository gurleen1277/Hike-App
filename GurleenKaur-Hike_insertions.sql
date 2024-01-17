use Hike;

insert into Participant values(1, 'Himani D.C', 'himani@gmail.com', 9840273655, 'Waterloo', 'XY101');
insert into Participant values(2, 'Avishek Pokherel', 'avishek@gmail.com', 9854696324, 'Kitchener', 'XY102');
insert into Participant values(3, 'Rejina Maharjan', 'reji@gmail.com', 9857426695, 'Kitchener', 'ZE104');
insert into Participant values(4, 'Shambhavi Pyakurel', 'shambhavi@gmail.com', 9804572365, 'Cambridge', 'NY304');
insert into Participant values(5, ' Waro Rai ', 'waro@gmail.com', 9854215001, 'Guelph', 'GHH203');


insert into Hikes values ('101', 'Alpine hike', 'Kitchener', '12km', '06:00:00', ' ');
insert into Hikes values ('102', 'Mountain hike', 'Kitchener', '6km', '03:00:00', ' ');
insert into Hikes values ('103', 'Valley hike', 'Waterloo', '6km', '04:00:00', ' ');
insert into Hikes values ('104', 'Forest walk', 'Thunder Bay', '3km', '02:50:00', ' ');
insert into Hikes values ('105', 'Trail Walk', 'Cambridge', '8km',	'05:00:00',	' ');

insert into Guide values ('SB0011', 'Sonam Bhote', 'sonam@gmail.com', '9840273655');
insert into Guide values ('NS0013', 'Nisha Sherpa', 'nisha@gmail.com', '9851171431');
insert into Guide values ('SB0022', 'Sunil Rai', 'sunil@gmail.com', '9812345678');
insert into Guide values ('AK0035', 'Anu Karki', 'anu@gmail.com', '9845678901');
insert into Guide values ('RG0046', 'Raj Gurung', 'raj@gmail.com', '9861234567');
insert into Guide values ('SP0057', 'Smita Poudel', 'smita@gmail.com', '9813456789');
insert into Guide values ('NK0068', 'Nabin Koirala', 'nabin@gmail.com', '9856789012');

insert into Participant_has_Hikes values (1, 101, '2023-11-10 06:00:00', '2023-11-10 11:15:00');
insert into Participant_has_Hikes values (1, 104, '2023-11-11 08:45:00', '2023-11-11 11:30:00');
insert into Participant_has_Hikes values (2, 102, '2023-10-12 05:30:00', '2023-10-12 09:30:00');
insert into Participant_has_Hikes values (3, 104, '2023-12-12 07:50:00', '2023-12-12 11:00:00');
insert into Participant_has_Hikes values (4, 105, '2023-12-12 06:25:00', '2023-12-12 11:53:00');
insert into Participant_has_Hikes values (4, 103, '2023-10-08 07:00:00', '2023-10-08 11:15:00');
insert into Participant_has_Hikes values (5, 104, '2023-10-09 05:00:00', '2023-10-09 08:00:00');


insert into Hikes_has_Guide values(101, 'SB0011');
insert into Hikes_has_Guide values(102, 'SB0011');
insert into Hikes_has_Guide values(101, 'SB0022');
insert into Hikes_has_Guide values(103, 'AK0035');
insert into Hikes_has_Guide values(104, 'SP0057');
insert into Hikes_has_Guide values(105, 'NK0068');
insert into Hikes_has_Guide values(105, 'RG0046');








