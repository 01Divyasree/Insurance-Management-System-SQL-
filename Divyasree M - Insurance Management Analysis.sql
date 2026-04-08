create database insurance;

use insurance;


-- Policies Table
CREATE TABLE policies (
    policy_id INT PRIMARY KEY AUTO_INCREMENT,
    policy_name VARCHAR(100),
    coverage_amount DECIMAL(10,2),
    premium DECIMAL(10,2),
    start_date DATE,
    end_date DATE
);

INSERT INTO policies (policy_name, coverage_amount, premium, start_date, end_date) VALUES
('Basic Health Shield', 200000.00, 4500.00, '2025-01-01', '2025-12-31'),
('Silver Care Plan', 500000.00, 8500.00, '2025-01-01', '2025-12-31'),
('Gold Protection Plan', 1000000.00, 15000.00, '2025-01-01', '2025-12-31'),
('Family Secure Plus', 1500000.00, 22000.00, '2025-01-01', '2025-12-31'),
('Premium Elite Cover', 2500000.00, 35000.00, '2025-01-01', '2025-12-31');


-- Hospitals Table
CREATE TABLE hospitals (
    hospital_id INT PRIMARY KEY AUTO_INCREMENT,
    hospital_name VARCHAR(100),
    city VARCHAR(50),
    is_network BOOLEAN
);

INSERT INTO hospitals (hospital_name, city, is_network) VALUES
('Apollo City Hospital', 'Chennai', TRUE),
('Fortis Care Center', 'Bangalore', TRUE),
('Sunrise Multi Speciality', 'Mumbai', TRUE),
('Global Health Institute', 'Hyderabad', TRUE),
('Metro Lifeline Hospital', 'Delhi', FALSE),
('Rainbow Children Hospital', 'Kolkata', TRUE),
('Lotus Medical Center', 'Pune', FALSE),
('Green Valley Hospital', 'Coimbatore', TRUE),
('Silver Oak Hospital', 'Ahmedabad', FALSE),
('Harmony Super Speciality', 'Jaipur', TRUE),
('CarePlus Hospital', 'Kochi', TRUE),
('Unity Health Care', 'Lucknow', FALSE);


-- Patients Table
CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10),
    phone VARCHAR(15),
    policy_id INT,
    foreign key (policy_id) references policies(policy_id)
);

INSERT INTO patients (name, dob, gender, phone, policy_id) VALUES
('Aarav Sharma', '1990-05-14', 'Male', '9876543210', 1),
('Diya Nair', '1988-11-22', 'Female', '9876543211', 2),
('Rohan Mehta', '1995-03-10', 'Male', '9876543212', 3),
('Ananya Rao', '1992-07-19', 'Female', '9876543213', 4),
('Vikram Singh', '1985-01-25', 'Male', '9876543214', 5),
('Sneha Iyer', '1998-09-12', 'Female', '9876543215', 1),
('Karthik Reddy', '1993-04-30', 'Male', '9876543216', 2),
('Meera Pillai', '1991-12-15', 'Female', '9876543217', 3),
('Aditya Verma', '1987-06-08', 'Male', '9876543218', 4),
('Pooja Kapoor', '1996-02-17', 'Female', '9876543219', 5),

('Rahul Das', '1994-08-21', 'Male', '9876543220', 1),
('Lakshmi Krishnan', '1989-10-11', 'Female', '9876543221', 2),
('Arjun Patel', '1997-03-29', 'Male', '9876543222', 3),
('Neha Gupta', '1990-06-18', 'Female', '9876543223', 4),
('Sanjay Kumar', '1984-12-05', 'Male', '9876543224', 5),
('Priya Menon', '1993-01-27', 'Female', '9876543225', 1),
('Nikhil Bansal', '1992-09-09', 'Male', '9876543226', 2),
('Kavya Suresh', '1995-11-14', 'Female', '9876543227', 3),
('Manoj Yadav', '1986-04-02', 'Male', '9876543228', 4),
('Ritika Jain', '1998-07-07', 'Female', '9876543229', 5),

('Harish Chandra', '1991-02-20', 'Male', '9876543230', 1),
('Divya Shree', '1994-05-16', 'Female', '9876543231', 2),
('Pranav Kulkarni', '1988-08-30', 'Male', '9876543232', 3),
('Swathi Ramesh', '1996-10-25', 'Female', '9876543233', 4),
('Ashok Varma', '1983-03-13', 'Male', '9876543234', 5),
('Keerthana Bala', '1997-12-01', 'Female', '9876543235', 1),
('Suraj Nambiar', '1990-09-17', 'Male', '9876543236', 2),
('Nandini Roy', '1993-06-23', 'Female', '9876543237', 3),
('Tarun Joshi', '1987-01-09', 'Male', '9876543238', 4),
('Bhavya Shetty', '1995-04-19', 'Female', '9876543239', 5),

('Deepak Mishra', '1989-11-03', 'Male', '9876543240', 1),
('Aishwarya Nair', '1992-02-28', 'Female', '9876543241', 2),
('Gaurav Khanna', '1994-07-15', 'Male', '9876543242', 3),
('Sahana Murthy', '1996-08-05', 'Female', '9876543243', 4),
('Rajeev Pillai', '1985-12-19', 'Male', '9876543244', 5),
('Ishita Sharma', '1998-03-12', 'Female', '9876543245', 1),
('Varun Desai', '1991-10-22', 'Male', '9876543246', 2),
('Anjali Verghese', '1993-05-09', 'Female', '9876543247', 3),
('Ritesh Agarwal', '1988-06-14', 'Male', '9876543248', 4),
('Shruti Pandey', '1997-09-26', 'Female', '9876543249', 5),

('Kiran Rao', '1990-01-18', 'Male', '9876543250', 1),
('Pallavi Joshi', '1992-04-07', 'Female', '9876543251', 2),
('Mohit Arora', '1995-12-30', 'Male', '9876543252', 3),
('Tanvi Kulshreshtha', '1996-06-11', 'Female', '9876543253', 4),
('Abhishek Sinha', '1989-08-24', 'Male', '9876543254', 5),
('Harini Subramanian', '1993-03-03', 'Female', '9876543255', 1),
('Yash Malhotra', '1994-11-20', 'Male', '9876543256', 2),
('Preethi Anand', '1991-07-29', 'Female', '9876543257', 3),
('Lokesh Gowda', '1987-02-14', 'Male', '9876543258', 4),
('Madhuri Dixit', '1998-10-08', 'Female', '9876543259', 5),

('Aravind Kumar', '1991-04-12', 'Male', '9876600001', 1),
('Nithya Rajan', '1993-07-21', 'Female', '9876600002', 2),
('Siddharth Iyer', '1989-02-18', 'Male', '9876600003', 3),
('Gayathri Menon', '1995-09-10', 'Female', '9876600004', 4),
('Harsha Vardhan', '1987-11-25', 'Male', '9876600005', 5),
('Pavithra S', '1996-06-14', 'Female', '9876600006', 1),
('Raghavendra Rao', '1992-01-30', 'Male', '9876600007', 2),
('Sowmya Krishnan', '1994-12-05', 'Female', '9876600008', 3),
('Tejaswini Bhat', '1997-08-22', 'Female', '9876600009', 4),
('Vignesh Prabhu', '1988-03-17', 'Male', '9876600010', 5),

('Akash Narayan', '1990-10-09', 'Male', '9876600011', 1),
('Bhavana Reddy', '1993-05-28', 'Female', '9876600012', 2),
('Chaitanya Shekar', '1986-07-19', 'Male', '9876600013', 3),
('Deeksha Nambiar', '1998-04-03', 'Female', '9876600014', 4),
('Eshwar Prasad', '1991-09-16', 'Male', '9876600015', 5),
('Fathima Noor', '1995-02-11', 'Female', '9876600016', 1),
('Gokul Krishna', '1994-06-27', 'Male', '9876600017', 2),
('Hemalatha Iyer', '1989-12-20', 'Female', '9876600018', 3),
('Indrajith N', '1992-03-08', 'Male', '9876600019', 4),
('Janani Viswanath', '1997-01-14', 'Female', '9876600020', 5),

('Kishore Babu', '1985-08-29', 'Male', '9876600021', 1),
('Lavanya Priya', '1996-11-06', 'Female', '9876600022', 2),
('Madhan Raj', '1993-04-25', 'Male', '9876600023', 3),
('Naveena Suresh', '1990-07-13', 'Female', '9876600024', 4),
('Omkar Patil', '1988-09-30', 'Male', '9876600025', 5),
('Pradeep Kumar R', '1991-05-02', 'Male', '9876600026', 1),
('Qureshi Amaan', '1994-10-18', 'Male', '9876600027', 2),
('Rashmika Hegde', '1998-02-23', 'Female', '9876600028', 3),
('Sathvik Rao', '1992-06-09', 'Male', '9876600029', 4),
('Trisha Nair', '1995-03-31', 'Female', '9876600030', 5),

('Uday Kiran', '1987-01-21', 'Male', '9876600031', 1),
('Vaishnavi Kulkarni', '1996-08-12', 'Female', '9876600032', 2),
('Wasim Akhtar', '1993-11-04', 'Male', '9876600033', 3),
('Xavier Joseph', '1989-05-19', 'Male', '9876600034', 4),
('Yamini Ramesh', '1997-09-27', 'Female', '9876600035', 5),
('Zubin Contractor', '1991-12-10', 'Male', '9876600036', 1),
('Aditi Chauhan', '1994-07-01', 'Female', '9876600037', 2),
('Bharath Srinivas', '1986-03-22', 'Male', '9876600038', 3),
('Charulatha Devi', '1998-06-15', 'Female', '9876600039', 4),
('Darshan Gowda', '1992-10-07', 'Male', '9876600040', 5),

('Elina Mathew', '1995-04-16', 'Female', '9876600041', 1),
('Farhan Ali', '1988-08-03', 'Male', '9876600042', 2),
('Geetha Lakshmi', '1993-02-26', 'Female', '9876600043', 3),
('Hemanth R', '1990-09-14', 'Male', '9876600044', 4),
('Irfan Shaikh', '1996-01-05', 'Male', '9876600045', 5),
('Jyothika Menon', '1994-11-18', 'Female', '9876600046', 1),
('Kunal Arvind', '1987-07-24', 'Male', '9876600047', 2),
('Leena Thomas', '1998-03-09', 'Female', '9876600048', 3),
('Manisha Raut', '1992-05-30', 'Female', '9876600049', 4),
('Nitin Yadav', '1991-08-17', 'Male', '9876600050', 5),

('Akhilesh Nair', '1990-03-11', 'Male', '9876700001', 1),
('Bhavika Sharma', '1995-07-19', 'Female', '9876700002', 2),
('Chetan Deshmukh', '1988-01-24', 'Male', '9876700003', 3),
('Dharini Krishnan', '1996-09-08', 'Female', '9876700004', 4),
('Ebrahim Khan', '1992-12-17', 'Male', '9876700005', 5),
('Falguni Patel', '1994-05-22', 'Female', '9876700006', 1),
('Girish Kulkarni', '1987-08-30', 'Male', '9876700007', 2),
('Hiral Mehta', '1998-02-13', 'Female', '9876700008', 3),
('Imran Qureshi', '1991-06-25', 'Male', '9876700009', 4),
('Jhanvi Kapoor', '1997-11-04', 'Female', '9876700010', 5),

('Karthika Devi', '1993-04-18', 'Female', '9876700011', 1),
('Lokendra Singh', '1986-10-09', 'Male', '9876700012', 2),
('Mubeen Ahmed', '1990-01-27', 'Male', '9876700013', 3),
('Nayana Pillai', '1995-08-14', 'Female', '9876700014', 4),
('Ojaswini Rao', '1992-03-06', 'Female', '9876700015', 5),
('Prithviraj Chauhan', '1989-07-20', 'Male', '9876700016', 1),
('Qadir Hussain', '1994-09-29', 'Male', '9876700017', 2),
('Rupal Shah', '1996-12-02', 'Female', '9876700018', 3),
('Samarjeet Das', '1991-05-15', 'Male', '9876700019', 4),
('Tanisha Verma', '1998-06-21', 'Female', '9876700020', 5),

('Umesh Patwardhan', '1987-02-10', 'Male', '9876700021', 1),
('Vaibhav Tiwari', '1993-11-18', 'Male', '9876700022', 2),
('Waseema Rahman', '1995-04-07', 'Female', '9876700023', 3),
('Yogendra Yadav', '1990-08-12', 'Male', '9876700024', 4),
('Zara Siddiqui', '1997-01-30', 'Female', '9876700025', 5),

('Anirudh Shetty', '1992-06-16', 'Male', '9876700026', 1),
('Bhakti Nair', '1994-10-03', 'Female', '9876700027', 2),
('Chirag Bansal', '1988-03-25', 'Male', '9876700028', 3),
('Devika Iyer', '1996-07-09', 'Female', '9876700029', 4),
('Eshan Malhotra', '1991-12-28', 'Male', '9876700030', 5),

('Feroz Alam', '1989-09-05', 'Male', '9876700031', 1),
('Gargi Banerjee', '1995-02-19', 'Female', '9876700032', 2),
('Hrithik Joshi', '1993-05-30', 'Male', '9876700033', 3),
('Ishaani Kulshreshtha', '1998-08-11', 'Female', '9876700034', 4),
('Jagdish Parmar', '1986-04-22', 'Male', '9876700035', 5),

('Kavish Arora', '1990-07-14', 'Male', '9876700036', 1),
('Lalitha Ramesh', '1994-01-08', 'Female', '9876700037', 2),
('Mitesh Shah', '1992-09-17', 'Male', '9876700038', 3),
('Navdeep Kaur', '1997-03-26', 'Female', '9876700039', 4),
('Omprakash Jha', '1988-11-23', 'Male', '9876700040', 5),

('Pavani Desai', '1995-06-04', 'Female', '9876700041', 1),
('Qamar Rizvi', '1991-10-19', 'Male', '9876700042', 2),
('Riddhima Kapoor', '1996-02-27', 'Female', '9876700043', 3),
('Saurabh Kuldeep', '1993-08-15', 'Male', '9876700044', 4),
('Tejal Soni', '1998-12-09', 'Female', '9876700045', 5),

('Utkarsh Anand', '1990-04-01', 'Male', '9876700046', 1),
('Vandana Mishra', '1994-07-23', 'Female', '9876700047', 2),
('Wajid Ali', '1987-06-18', 'Male', '9876700048', 3),
('Yashika Thakur', '1995-09-13', 'Female', '9876700049', 4),
('Zeeshan Mirza', '1992-01-12', 'Male', '9876700050', 5),

('Aarav Sharma', '1990-05-14', 'Male', '9876800001', 2),
('Diya Nair', '1988-11-22', 'Female', '9876800002', 3),
('Rohan Mehta', '1995-03-10', 'Male', '9876800003', 4),
('Ananya Rao', '1992-07-19', 'Female', '9876800004', 5),
('Vikram Singh', '1985-01-25', 'Male', '9876800005', 1),

('Sneha Iyer', '1998-09-12', 'Female', '9876800006', 2),
('Karthik Reddy', '1993-04-30', 'Male', '9876800007', 3),
('Meera Pillai', '1991-12-15', 'Female', '9876800008', 4),
('Aditya Verma', '1987-06-08', 'Male', '9876800009', 5),
('Pooja Kapoor', '1996-02-17', 'Female', '9876800010', 1),

('Rahul Das', '1994-08-21', 'Male', '9876800011', 2),
('Lakshmi Krishnan', '1989-10-11', 'Female', '9876800012', 3),
('Arjun Patel', '1997-03-29', 'Male', '9876800013', 4),
('Neha Gupta', '1990-06-18', 'Female', '9876800014', 5),
('Sanjay Kumar', '1984-12-05', 'Male', '9876800015', 1),

('Priya Menon', '1993-01-27', 'Female', '9876800016', 2),
('Nikhil Bansal', '1992-09-09', 'Male', '9876800017', 3),
('Kavya Suresh', '1995-11-14', 'Female', '9876800018', 4),
('Manoj Yadav', '1986-04-02', 'Male', '9876800019', 5),
('Ritika Jain', '1998-07-07', 'Female', '9876800020', 1),

('Harish Chandra', '1991-02-20', 'Male', '9876800021', 2),
('Divya Shree', '1994-05-16', 'Female', '9876800022', 3),
('Pranav Kulkarni', '1988-08-30', 'Male', '9876800023', 4),
('Swathi Ramesh', '1996-10-25', 'Female', '9876800024', 5),
('Ashok Varma', '1983-03-13', 'Male', '9876800025', 1),

('Keerthana Bala', '1997-12-01', 'Female', '9876800026', 2),
('Suraj Nambiar', '1990-09-17', 'Male', '9876800027', 3),
('Nandini Roy', '1993-06-23', 'Female', '9876800028', 4),
('Tarun Joshi', '1987-01-09', 'Male', '9876800029', 5),
('Bhavya Shetty', '1995-04-19', 'Female', '9876800030', 1),

('Deepak Mishra', '1989-11-03', 'Male', '9876800031', 2),
('Aishwarya Nair', '1992-02-28', 'Female', '9876800032', 3),
('Gaurav Khanna', '1994-07-15', 'Male', '9876800033', 4),
('Sahana Murthy', '1996-08-05', 'Female', '9876800034', 5),
('Rajeev Pillai', '1985-12-19', 'Male', '9876800035', 1);


-- Doctors Table
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_name VARCHAR(100),
    specialization VARCHAR(100),
    hospital_id INT,
    FOREIGN KEY (hospital_id) REFERENCES hospitals(hospital_id)
);

INSERT INTO doctors (doctor_name, specialization, hospital_id) VALUES
('Dr. Arvind Menon', 'General Physician', 1),
('Dr. Snehal Patil', 'Cardiologist', 1),
('Dr. Rakesh Iyer', 'Orthopedic Surgeon', 1),
('Dr. Meenal Shah', 'Dermatologist', 1),

('Dr. Harish Kumar', 'Neurologist', 2),
('Dr. Pooja Rathi', 'Pediatrician', 2),
('Dr. Vinay Shetty', 'General Surgeon', 2),
('Dr. Kavita Rao', 'Gynecologist', 2),

('Dr. Nitin Agarwal', 'ENT Specialist', 3),
('Dr. Divyanshi Jain', 'Cardiologist', 3),
('Dr. Suresh Babu', 'Orthopedic Surgeon', 3),
('Dr. Alka Verma', 'Dermatologist', 3),

('Dr. Imran Khan', 'Pulmonologist', 4),
('Dr. Swetha Nair', 'Pediatrician', 4),
('Dr. Rohit Kulkarni', 'General Physician', 4),
('Dr. Nisha Thomas', 'Gynecologist', 4),

('Dr. Manoj Tiwari', 'Neurologist', 5),
('Dr. Aarti Deshmukh', 'Cardiologist', 5),
('Dr. Prakash Yadav', 'Orthopedic Surgeon', 5),
('Dr. Latha Krishnan', 'Dermatologist', 5),

('Dr. Kunal Mehra', 'General Surgeon', 6),
('Dr. Bhavna Kapoor', 'Gynecologist', 6),
('Dr. Shyam Reddy', 'ENT Specialist', 6),
('Dr. Farah Ali', 'Pediatrician', 6),

('Dr. Rohan Sinha', 'Cardiologist', 7),
('Dr. Geeta Iyer', 'General Physician', 7),
('Dr. Adil Hussain', 'Pulmonologist', 7),
('Dr. Ritu Bansal', 'Dermatologist', 7),

('Dr. Sandeep Malhotra', 'Orthopedic Surgeon', 8),
('Dr. Kavya Nambiar', 'Gynecologist', 8),
('Dr. Pranav Joshi', 'Neurologist', 8),
('Dr. Heena Shaikh', 'Pediatrician', 8),

('Dr. Vivek Sharma', 'General Physician', 9),
('Dr. Anjali Gupta', 'Cardiologist', 9),
('Dr. Tarun Mehta', 'ENT Specialist', 9),
('Dr. Megha Pillai', 'Dermatologist', 9),

('Dr. Akhil Raj', 'Pulmonologist', 10),
('Dr. Neetu Varma', 'Gynecologist', 10),
('Dr. Ramesh Nair', 'Orthopedic Surgeon', 10),
('Dr. Sana Siddiqui', 'Pediatrician', 10),

('Dr. Gaurav Trivedi', 'General Surgeon', 11),
('Dr. Ishika Kapoor', 'Cardiologist', 11),
('Dr. Lokesh Bhat', 'Neurologist', 11),
('Dr. Priyanka Iyer', 'Dermatologist', 11),

('Dr. Sameer Qureshi', 'Pulmonologist', 12),
('Dr. Chandni Patel', 'Gynecologist', 12),
('Dr. Arjun Rao', 'Orthopedic Surgeon', 12),
('Dr. Tanushree Sen', 'Pediatrician', 12),
('Dr. Vikash Gupta', 'General Physician', 12);


-- Treatments Table
CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    hospital_id INT,
    diagnosis TEXT,
    treatment_cost DECIMAL(10,2),
    admission_date DATE,
    discharge_date DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id),
    FOREIGN KEY (hospital_id) REFERENCES hospitals(hospital_id)
);

INSERT INTO treatments 
(patient_id, doctor_id, hospital_id, diagnosis, treatment_cost, admission_date, discharge_date) VALUES

(1, 1, 1, 'Fever and Viral Infection', 5000.00, '2025-01-05', '2025-01-07'),
(2, 2, 2, 'Fractured Arm', 45000.00, '2025-01-10', '2025-01-20'),
(3, 3, 3, 'Heart Checkup', 25000.00, '2025-01-15', '2025-01-16'),
(4, 4, 4, 'Appendicitis Surgery', 85000.00, '2025-01-18', '2025-01-25'),
(5, 5, 5, 'Migraine Treatment', 8000.00, '2025-01-22', '2025-01-23'),

(6, 6, 6, 'Kidney Stone Removal', 65000.00, '2025-02-01', '2025-02-05'),
(7, 7, 7, 'Diabetes Checkup', 6000.00, '2025-02-03', '2025-02-03'),
(8, 8, 8, 'Asthma Attack', 15000.00, '2025-02-07', '2025-02-09'),
(9, 9, 9, 'Gallbladder Surgery', 90000.00, '2025-02-10', '2025-02-18'),
(10, 10, 10, 'Back Pain Therapy', 12000.00, '2025-02-12', '2025-02-14'),

(11, 11, 1, 'Hypertension', 7000.00, '2025-02-15', '2025-02-16'),
(12, 12, 2, 'Knee Replacement', 150000.00, '2025-02-18', '2025-02-28'),
(13, 13, 3, 'Food Poisoning', 9000.00, '2025-03-01', '2025-03-03'),
(14, 14, 4, 'Thyroid Treatment', 11000.00, '2025-03-05', '2025-03-06'),
(15, 15, 5, 'Pneumonia', 30000.00, '2025-03-07', '2025-03-12'),

(16, 16, 6, 'Skin Allergy', 5000.00, '2025-03-10', '2025-03-11'),
(17, 17, 7, 'Eye Surgery', 40000.00, '2025-03-14', '2025-03-18'),
(18, 18, 8, 'ENT Infection', 7000.00, '2025-03-20', '2025-03-22'),
(19, 19, 9, 'Chest Pain Observation', 20000.00, '2025-03-23', '2025-03-25'),
(20, 20, 10, 'Ulcer Treatment', 18000.00, '2025-03-26', '2025-03-30'),

(21, 1, 2, 'Viral Fever', 5500.00, '2025-04-01', '2025-04-03'),
(22, 2, 3, 'Leg Fracture', 50000.00, '2025-04-05', '2025-04-15'),
(23, 3, 4, 'Cardiac Monitoring', 30000.00, '2025-04-07', '2025-04-09'),
(24, 4, 5, 'Appendix Removal', 80000.00, '2025-04-10', '2025-04-17'),
(25, 5, 6, 'Migraine', 7500.00, '2025-04-12', '2025-04-13'),

(26, 6, 7, 'Kidney Infection', 28000.00, '2025-04-15', '2025-04-18'),
(27, 7, 8, 'Diabetic Foot Care', 15000.00, '2025-04-20', '2025-04-23'),
(28, 8, 9, 'Bronchitis', 16000.00, '2025-04-22', '2025-04-25'),
(29, 9, 10, 'Gallstone Check', 22000.00, '2025-04-25', '2025-04-27'),
(30, 10, 1, 'Physiotherapy', 10000.00, '2025-04-28', '2025-04-30'),

(31, 11, 2, 'BP Monitoring', 6000.00, '2025-05-01', '2025-05-02'),
(32, 12, 3, 'Joint Pain', 14000.00, '2025-05-03', '2025-05-05'),
(33, 13, 4, 'Stomach Ulcer', 20000.00, '2025-05-05', '2025-05-08'),
(34, 14, 5, 'Thyroid Scan', 12000.00, '2025-05-09', '2025-05-10'),
(35, 15, 6, 'Lung Infection', 35000.00, '2025-05-12', '2025-05-18'),

(36, 16, 7, 'Allergy Testing', 7000.00, '2025-05-15', '2025-05-16'),
(37, 17, 8, 'Cataract Surgery', 45000.00, '2025-05-18', '2025-05-22'),
(38, 18, 9, 'Sinus Infection', 9000.00, '2025-05-20', '2025-05-22'),
(39, 19, 10, 'Chest X-ray Observation', 15000.00, '2025-05-23', '2025-05-24'),
(40, 20, 1, 'Gastritis', 11000.00, '2025-05-25', '2025-05-27'),

(41, 1, 2, 'Malaria', 25000.00, '2025-06-01', '2025-06-06'),
(42, 2, 3, 'Hip Surgery', 175000.00, '2025-06-03', '2025-06-15'),
(43, 3, 4, 'Heart Surgery', 250000.00, '2025-06-05', '2025-06-20'),
(44, 4, 5, 'Appendix Review', 10000.00, '2025-06-07', '2025-06-08'),
(45, 5, 6, 'Migraine Follow-up', 5000.00, '2025-06-09', '2025-06-09'),

(46, 6, 7, 'Kidney Dialysis', 60000.00, '2025-06-10', '2025-06-14'),
(47, 7, 8, 'Diabetes Emergency', 20000.00, '2025-06-12', '2025-06-14'),
(48, 8, 9, 'Asthma Treatment', 18000.00, '2025-06-15', '2025-06-18'),
(49, 9, 10, 'Gallbladder Removal', 95000.00, '2025-06-18', '2025-06-25'),
(50, 10, 1, 'Back Surgery', 120000.00, '2025-06-20', '2025-06-30'),

(5, 3, 2, 'Viral Fever', 4500.00, '2025-01-05', '2025-01-07'),
(12, 8, 4, 'Fracture - Arm', 32000.00, '2025-01-10', '2025-01-18'),
(25, 15, 6, 'Appendicitis', 55000.00, '2025-01-12', '2025-01-16'),
(44, 22, 3, 'Kidney Stones', 47000.00, '2025-01-15', '2025-01-20'),
(60, 5, 1, 'Migraine', 3000.00, '2025-01-18', '2025-01-19'),

(78, 11, 5, 'Pneumonia', 38000.00, '2025-01-21', '2025-01-28'),
(81, 9, 7, 'Food Poisoning', 6000.00, '2025-01-25', '2025-01-27'),
(92, 17, 9, 'Gallbladder Surgery', 72000.00, '2025-02-01', '2025-02-08'),
(103, 24, 10, 'Dengue', 25000.00, '2025-02-03', '2025-02-09'),
(115, 30, 11, 'Back Pain', 5000.00, '2025-02-06', '2025-02-07'),

(134, 12, 4, 'Diabetes Checkup', 4000.00, '2025-02-10', '2025-02-10'),
(147, 18, 8, 'Hypertension', 3500.00, '2025-02-14', '2025-02-15'),
(159, 27, 6, 'Cataract Surgery', 45000.00, '2025-02-18', '2025-02-22'),
(170, 33, 12, 'Asthma', 8000.00, '2025-02-21', '2025-02-23'),
(181, 40, 2, 'Typhoid', 22000.00, '2025-02-24', '2025-03-02'),

(10, 6, 3, 'Skin Allergy', 2500.00, '2025-03-03', '2025-03-04'),
(21, 14, 5, 'Fracture - Leg', 41000.00, '2025-03-05', '2025-03-14'),
(32, 20, 7, 'Malaria', 18000.00, '2025-03-08', '2025-03-12'),
(48, 29, 9, 'Heart Checkup', 12000.00, '2025-03-10', '2025-03-10'),
(56, 35, 11, 'Ulcer Treatment', 15000.00, '2025-03-14', '2025-03-18'),

(69, 41, 1, 'Covid-19', 28000.00, '2025-03-16', '2025-03-24'),
(75, 7, 4, 'Sinus Infection', 6000.00, '2025-03-20', '2025-03-22'),
(88, 13, 6, 'Appendix Follow-up', 7000.00, '2025-03-23', '2025-03-25'),
(96, 19, 8, 'Thyroid Checkup', 4500.00, '2025-03-25', '2025-03-25'),
(107, 23, 10, 'Chest Infection', 9000.00, '2025-03-27', '2025-03-30'),

(119, 31, 12, 'Arthritis', 8500.00, '2025-04-01', '2025-04-04'),
(126, 37, 2, 'Hernia Surgery', 60000.00, '2025-04-03', '2025-04-10'),
(138, 45, 3, 'Kidney Infection', 19000.00, '2025-04-05', '2025-04-09'),
(149, 16, 5, 'Gastritis', 5000.00, '2025-04-08', '2025-04-10'),
(162, 21, 7, 'Migraine Severe', 6500.00, '2025-04-10', '2025-04-12'),

(173, 28, 9, 'Blood Pressure Monitoring', 3000.00, '2025-04-12', '2025-04-12'),
(184, 34, 11, 'Bronchitis', 11000.00, '2025-04-14', '2025-04-18'),
(3, 42, 1, 'Fracture - Wrist', 29000.00, '2025-04-16', '2025-04-22'),
(14, 4, 4, 'Viral Infection', 4000.00, '2025-04-18', '2025-04-20'),
(27, 10, 6, 'Minor Surgery', 25000.00, '2025-04-20', '2025-04-24'),

(39, 26, 8, 'Eye Infection', 3500.00, '2025-04-22', '2025-04-23'),
(52, 36, 10, 'Spine Pain', 9000.00, '2025-04-25', '2025-04-27'),
(64, 44, 12, 'Gallstones', 68000.00, '2025-04-27', '2025-05-04'),
(71, 2, 2, 'Dengue Severe', 30000.00, '2025-04-29', '2025-05-05'),
(83, 18, 5, 'Malaria Severe', 24000.00, '2025-05-01', '2025-05-06'),

(94, 22, 7, 'Back Injury', 14000.00, '2025-05-03', '2025-05-08'),
(105, 38, 9, 'Heart Surgery', 150000.00, '2025-05-05', '2025-05-15'),
(118, 46, 11, 'Kidney Dialysis', 35000.00, '2025-05-08', '2025-05-14'),
(129, 9, 1, 'Asthma Severe', 12000.00, '2025-05-10', '2025-05-13'),
(140, 17, 3, 'Fever Observation', 5000.00, '2025-05-12', '2025-05-14'),

(155, 25, 6, 'Appendicitis Emergency', 80000.00, '2025-05-15', '2025-05-22'),
(168, 32, 8, 'Hypertension Emergency', 10000.00, '2025-05-18', '2025-05-20'),
(176, 40, 10, 'Throat Infection', 4500.00, '2025-05-20', '2025-05-22'),
(182, 48, 12, 'Lung Infection', 22000.00, '2025-05-22', '2025-05-28'),
(90, 6, 4, 'General Checkup', 2000.00, '2025-05-25', '2025-05-25'),

(5, 3, 2, 'Viral Fever', 8500.00, '2024-01-12', '2024-01-15'),
(12, 8, 4, 'Fractured Arm', 45000.00, '2024-02-03', '2024-02-10'),
(25, 15, 6, 'Appendicitis', 72000.00, '2024-02-20', '2024-02-26'),
(38, 20, 3, 'Migraine Treatment', 12000.00, '2024-03-05', '2024-03-06'),
(41, 9, 5, 'Kidney Stone', 68000.00, '2024-03-18', '2024-03-22'),

(52, 11, 7, 'Dengue', 32000.00, '2024-04-01', '2024-04-07'),
(67, 25, 9, 'Cardiac Checkup', 55000.00, '2024-04-14', '2024-04-18'),
(73, 30, 10, 'Gallbladder Surgery', 88000.00, '2024-04-28', '2024-05-04'),
(84, 6, 1, 'Asthma Attack', 27000.00, '2024-05-10', '2024-05-13'),
(91, 14, 8, 'Food Poisoning', 14000.00, '2024-05-21', '2024-05-23'),

(102, 40, 12, 'Spinal Injury', 120000.00, '2024-06-03', '2024-06-15'),
(115, 22, 6, 'Typhoid', 30000.00, '2024-06-18', '2024-06-24'),
(128, 17, 3, 'Eye Surgery', 60000.00, '2024-07-02', '2024-07-06'),
(134, 28, 9, 'Pneumonia', 45000.00, '2024-07-19', '2024-07-25'),
(145, 32, 11, 'Diabetes Complication', 50000.00, '2024-08-01', '2024-08-07'),

(150, 7, 2, 'Skin Infection', 9000.00, '2024-08-14', '2024-08-16'),
(160, 18, 4, 'Back Pain Therapy', 15000.00, '2024-08-29', '2024-08-31'),
(170, 12, 5, 'Hernia Surgery', 78000.00, '2024-09-10', '2024-09-16'),
(180, 35, 7, 'COVID-19 Treatment', 40000.00, '2024-09-25', '2024-10-02'),
(10, 4, 1, 'Blood Pressure Monitoring', 7000.00, '2024-10-05', '2024-10-06'),

(22, 16, 8, 'Thyroid Disorder', 22000.00, '2024-10-18', '2024-10-22'),
(34, 24, 6, 'Minor Head Injury', 18000.00, '2024-11-02', '2024-11-05'),
(48, 19, 9, 'Fractured Leg', 95000.00, '2024-11-15', '2024-11-25'),
(59, 33, 12, 'Heart Surgery', 250000.00, '2024-12-01', '2024-12-15'),
(66, 2, 3, 'Ulcer Treatment', 21000.00, '2024-12-18', '2024-12-21'),

(78, 29, 10, 'Liver Infection', 67000.00, '2025-01-03', '2025-01-09'),
(89, 13, 4, 'Knee Replacement', 180000.00, '2025-01-20', '2025-02-02'),
(95, 21, 7, 'Bronchitis', 26000.00, '2025-02-10', '2025-02-14'),
(108, 37, 11, 'Cancer Screening', 75000.00, '2025-02-22', '2025-02-25'),
(119, 5, 2, 'Sinus Infection', 15000.00, '2025-03-01', '2025-03-04'),

(130, 45, 12, 'Stroke Treatment', 220000.00, '2025-03-12', '2025-03-25'),
(142, 23, 6, 'Malaria', 28000.00, '2025-04-01', '2025-04-06'),
(153, 10, 1, 'Allergic Reaction', 9000.00, '2025-04-15', '2025-04-17'),
(165, 27, 8, 'Fractured Wrist', 35000.00, '2025-04-28', '2025-05-05'),
(176, 31, 9, 'ENT Surgery', 64000.00, '2025-05-10', '2025-05-16'),

(8, 6, 2, 'Dehydration', 6000.00, '2025-05-20', '2025-05-22'),
(19, 14, 5, 'High Cholesterol', 18000.00, '2025-06-01', '2025-06-04'),
(27, 20, 3, 'Gallstone Removal', 92000.00, '2025-06-12', '2025-06-18'),
(36, 11, 7, 'Migraine Observation', 10000.00, '2025-06-25', '2025-06-27'),
(44, 18, 10, 'Spine Therapy', 42000.00, '2025-07-03', '2025-07-08'),

(58, 26, 4, 'Appendix Surgery', 80000.00, '2025-07-15', '2025-07-21'),
(69, 34, 11, 'Cardiac Angioplasty', 150000.00, '2025-08-01', '2025-08-10'),
(77, 9, 2, 'Typhoid Follow-up', 12000.00, '2025-08-14', '2025-08-16'),
(88, 17, 6, 'Tuberculosis', 50000.00, '2025-08-20', '2025-08-30'),
(99, 38, 12, 'Brain MRI & Treatment', 90000.00, '2025-09-01', '2025-09-05'),

(111, 3, 1, 'Asthma Monitoring', 15000.00, '2025-09-10', '2025-09-12'),
(123, 28, 8, 'Kidney Dialysis', 70000.00, '2025-09-18', '2025-09-25'),
(136, 44, 10, 'Cancer Chemotherapy', 300000.00, '2025-10-01', '2025-10-20'),
(148, 22, 5, 'Fractured Collarbone', 47000.00, '2025-10-25', '2025-11-01'),
(162, 30, 7, 'Diabetic Ketoacidosis', 95000.00, '2025-11-10', '2025-11-18');


-- Claims Table
CREATE TABLE claims (
    claim_id INT PRIMARY KEY AUTO_INCREMENT,
    treatment_id INT,
    claim_amount int,
    claim_status VARCHAR(20),  -- Pending / Approved / Rejected
    claim_date DATE,
    FOREIGN KEY (treatment_id) REFERENCES treatments(treatment_id)
);

INSERT INTO claims (treatment_id, claim_amount, claim_status, claim_date) VALUES
(1, 25000.00, 'Approved', '2025-01-10'),
(2, 18000.00, 'Pending', '2025-01-12'),
(3, 32000.00, 'Rejected', '2025-01-15'),
(4, 15000.00, 'Approved', '2025-01-18'),
(5, 28000.00, 'Approved', '2025-01-20'),

(6, 22000.00, 'Pending', '2025-01-22'),
(7, 45000.00, 'Approved', '2025-01-25'),
(8, 12000.00, 'Rejected', '2025-01-27'),
(9, 30000.00, 'Approved', '2025-01-29'),
(10, 17000.00, 'Pending', '2025-02-01'),

(11, 26000.00, 'Approved', '2025-02-03'),
(12, 19000.00, 'Rejected', '2025-02-05'),
(13, 35000.00, 'Approved', '2025-02-07'),
(14, 21000.00, 'Pending', '2025-02-09'),
(15, 40000.00, 'Approved', '2025-02-11'),

(16, 14000.00, 'Rejected', '2025-02-13'),
(17, 23000.00, 'Approved', '2025-02-15'),
(18, 29000.00, 'Pending', '2025-02-17'),
(19, 16000.00, 'Approved', '2025-02-19'),
(20, 38000.00, 'Rejected', '2025-02-21'),

(21, 27000.00, 'Approved', '2025-02-23'),
(22, 24000.00, 'Pending', '2025-02-25'),
(23, 33000.00, 'Approved', '2025-02-27'),
(24, 20000.00, 'Rejected', '2025-03-01'),
(25, 31000.00, 'Approved', '2025-03-03'),

(26, 15000.00, 'Pending', '2025-03-05'),
(27, 42000.00, 'Approved', '2025-03-07'),
(28, 11000.00, 'Rejected', '2025-03-09'),
(29, 36000.00, 'Approved', '2025-03-11'),
(30, 17500.00, 'Pending', '2025-03-13'),

(31, 26000.00, 'Approved', '2025-03-15'),
(32, 19500.00, 'Rejected', '2025-03-17'),
(33, 34000.00, 'Approved', '2025-03-19'),
(34, 22000.00, 'Pending', '2025-03-21'),
(35, 41000.00, 'Approved', '2025-03-23'),

(36, 14500.00, 'Rejected', '2025-03-25'),
(37, 23500.00, 'Approved', '2025-03-27'),
(38, 29500.00, 'Pending', '2025-03-29'),
(39, 16500.00, 'Approved', '2025-03-31'),
(40, 39000.00, 'Rejected', '2025-04-02'),

(41, 27500.00, 'Approved', '2025-04-04'),
(42, 24500.00, 'Pending', '2025-04-06'),
(43, 33500.00, 'Approved', '2025-04-08'),
(44, 20500.00, 'Rejected', '2025-04-10'),
(45, 31500.00, 'Approved', '2025-04-12'),

(46, 15500.00, 'Pending', '2025-04-14'),
(47, 43000.00, 'Approved', '2025-04-16'),
(48, 11500.00, 'Rejected', '2025-04-18'),
(49, 36500.00, 'Approved', '2025-04-20'),
(50, 18000.00, 'Pending', '2025-04-22'),

(101, 15000.00, 'Approved', '2025-01-05'),
(102, 22000.00, 'Pending', '2025-01-06'),
(103, 18000.00, 'Rejected', '2025-01-07'),
(104, 34000.00, 'Approved', '2025-01-08'),
(105, 12000.00, 'Approved', '2025-01-09'),

(106, 27000.00, 'Pending', '2025-01-10'),
(107, 31000.00, 'Approved', '2025-01-11'),
(108, 14500.00, 'Rejected', '2025-01-12'),
(109, 56000.00, 'Approved', '2025-01-13'),
(110, 19500.00, 'Pending', '2025-01-14'),

(111, 42000.00, 'Approved', '2025-01-15'),
(112, 8800.00,  'Approved', '2025-01-16'),
(113, 63000.00, 'Rejected', '2025-01-17'),
(114, 27500.00, 'Approved', '2025-01-18'),
(115, 9100.00,  'Pending', '2025-01-19'),

(116, 33000.00, 'Approved', '2025-01-20'),
(117, 25000.00, 'Approved', '2025-01-21'),
(118, 47000.00, 'Rejected', '2025-01-22'),
(119, 15000.00, 'Approved', '2025-01-23'),
(120, 29000.00, 'Pending', '2025-01-24'),

(121, 37000.00, 'Approved', '2025-01-25'),
(122, 44000.00, 'Approved', '2025-01-26'),
(123, 21000.00, 'Rejected', '2025-01-27'),
(124, 52000.00, 'Approved', '2025-01-28'),
(125, 13400.00, 'Pending', '2025-01-29'),

(126, 39900.00, 'Approved', '2025-01-30'),
(127, 48000.00, 'Approved', '2025-02-01'),
(128, 17000.00, 'Rejected', '2025-02-02'),
(129, 26000.00, 'Approved', '2025-02-03'),
(130, 30500.00, 'Pending', '2025-02-04'),

(131, 61000.00, 'Approved', '2025-02-05'),
(132, 18500.00, 'Approved', '2025-02-06'),
(133, 9200.00,  'Rejected', '2025-02-07'),
(134, 27500.00, 'Approved', '2025-02-08'),
(135, 43000.00, 'Pending', '2025-02-09'),

(136, 55000.00, 'Approved', '2025-02-10'),
(137, 21000.00, 'Approved', '2025-02-11'),
(138, 36000.00, 'Rejected', '2025-02-12'),
(139, 28000.00, 'Approved', '2025-02-13'),
(140, 19000.00, 'Pending', '2025-02-14'),

(141, 47000.00, 'Approved', '2025-02-15'),
(142, 52000.00, 'Approved', '2025-02-16'),
(143, 15000.00, 'Rejected', '2025-02-17'),
(144, 39000.00, 'Approved', '2025-02-18'),
(145, 26000.00, 'Pending', '2025-02-19'),

(146, 31000.00, 'Approved', '2025-02-20'),
(147, 45000.00, 'Approved', '2025-02-21'),
(148, 17500.00, 'Rejected', '2025-02-22'),
(149, 60000.00, 'Approved', '2025-02-23'),
(150, 22000.00, 'Pending', '2025-02-24'),

(121, 18000.00, 'Approved', '2025-01-15'),
(122, 9500.00, 'Pending', '2025-01-18'),
(123, 22000.00, 'Approved', '2025-01-22'),
(124, 15000.00, 'Rejected', '2025-01-25'),
(125, 8700.00, 'Approved', '2025-01-28'),

(126, 13200.00, 'Pending', '2025-02-02'),
(127, 19900.00, 'Approved', '2025-02-05'),
(128, 11000.00, 'Rejected', '2025-02-08'),
(129, 25000.00, 'Approved', '2025-02-10'),
(130, 14500.00, 'Pending', '2025-02-13'),

(131, 17500.00, 'Approved', '2025-02-16'),
(132, 9800.00, 'Approved', '2025-02-18'),
(133, 21000.00, 'Rejected', '2025-02-21'),
(134, 16000.00, 'Pending', '2025-02-24'),
(135, 12000.00, 'Approved', '2025-02-27'),

(136, 8900.00, 'Approved', '2025-03-02'),
(137, 23000.00, 'Pending', '2025-03-05'),
(138, 14000.00, 'Rejected', '2025-03-08'),
(139, 19500.00, 'Approved', '2025-03-11'),
(140, 10000.00, 'Approved', '2025-03-14'),

(141, 17000.00, 'Pending', '2025-03-17'),
(142, 9200.00, 'Approved', '2025-03-19'),
(143, 26000.00, 'Rejected', '2025-03-22'),
(144, 15500.00, 'Approved', '2025-03-25'),
(145, 11800.00, 'Pending', '2025-03-28');


-- Payments Table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    claim_id INT,
    approved_amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (claim_id) REFERENCES claims(claim_id)
);

INSERT INTO payments (payment_id, claim_id, approved_amount, payment_date) VALUES
(1,1,12000,'2025-01-01'),
(2,2,8500,'2025-01-02'),
(3,3,15000,'2025-01-03'),
(4,4,7200,'2025-01-04'),
(5,5,19500,'2025-01-05'),
(6,6,11000,'2025-01-06'),
(7,7,13400,'2025-01-07'),
(8,8,9900,'2025-01-08'),
(9,9,14200,'2025-01-09'),
(10,10,17500,'2025-01-10'),

(11,11,8200,'2025-01-11'),
(12,12,21000,'2025-01-12'),
(13,13,9400,'2025-01-13'),
(14,14,16000,'2025-01-14'),
(15,15,12500,'2025-01-15'),
(16,16,17800,'2025-01-16'),
(17,17,8900,'2025-01-17'),
(18,18,13500,'2025-01-18'),
(19,19,10200,'2025-01-19'),
(20,20,14900,'2025-01-20'),

(21,21,23000,'2025-01-21'),
(22,22,9500,'2025-01-22'),
(23,23,16500,'2025-01-23'),
(24,24,11200,'2025-01-24'),
(25,25,14000,'2025-01-25'),
(26,26,9800,'2025-01-26'),
(27,27,18800,'2025-01-27'),
(28,28,12100,'2025-01-28'),
(29,29,17000,'2025-01-29'),
(30,30,9100,'2025-01-30'),

(31,31,13200,'2025-02-01'),
(32,32,8700,'2025-02-02'),
(33,33,15600,'2025-02-03'),
(34,34,9900,'2025-02-04'),
(35,35,20000,'2025-02-05'),
(36,36,7600,'2025-02-06'),
(37,37,14300,'2025-02-07'),
(38,38,15800,'2025-02-08'),
(39,39,10900,'2025-02-09'),
(40,40,17200,'2025-02-10'),

(41,41,9800,'2025-02-11'),
(42,42,18500,'2025-02-12'),
(43,43,11200,'2025-02-13'),
(44,44,14400,'2025-02-14'),
(45,45,16300,'2025-02-15'),
(46,46,9700,'2025-02-16'),
(47,47,17800,'2025-02-17'),
(48,48,15000,'2025-02-18'),
(49,49,8800,'2025-02-19'),
(50,50,19900,'2025-02-20'),

(51,51,12500,'2025-02-21'),
(52,52,9200,'2025-02-22'),
(53,53,17600,'2025-02-23'),
(54,54,10800,'2025-02-24'),
(55,55,13400,'2025-02-25'),
(56,56,22000,'2025-02-26'),
(57,57,9900,'2025-02-27'),
(58,58,14600,'2025-02-28'),
(59,59,8700,'2025-03-01'),
(60,60,18200,'2025-03-02'),

(61,61,11300,'2025-03-03'),
(62,62,15900,'2025-03-04'),
(63,63,9600,'2025-03-05'),
(64,64,14100,'2025-03-06'),
(65,65,17500,'2025-03-07'),
(66,66,8400,'2025-03-08'),
(67,67,19000,'2025-03-09'),
(68,68,12000,'2025-03-10'),
(69,69,9800,'2025-03-11'),
(70,70,16800,'2025-03-12'),

(71,71,10400,'2025-03-13'),
(72,72,15200,'2025-03-14'),
(73,73,9300,'2025-03-15'),
(74,74,20100,'2025-03-16'),
(75,75,11500,'2025-03-17'),
(76,76,14800,'2025-03-18'),
(77,77,9700,'2025-03-19'),
(78,78,18000,'2025-03-20'),
(79,79,12300,'2025-03-21'),
(80,80,8600,'2025-03-22'),

(81,81,17400,'2025-03-23'),
(82,82,9500,'2025-03-24'),
(83,83,16200,'2025-03-25'),
(84,84,10800,'2025-03-26'),
(85,85,14900,'2025-03-27'),
(86,86,11800,'2025-03-28'),
(87,87,19200,'2025-03-29'),
(88,88,9800,'2025-03-30'),
(89,89,15600,'2025-03-31'),
(90,90,11000,'2025-04-01'),

(91,91,17000,'2025-04-02'),
(92,92,10200,'2025-04-03'),
(93,93,14500,'2025-04-04'),
(94,94,8900,'2025-04-05'),
(95,95,18400,'2025-04-06'),
(96,96,12000,'2025-04-07'),
(97,97,9900,'2025-04-08'),
(98,98,16500,'2025-04-09'),
(99,99,10800,'2025-04-10'),
(100,100,17800,'2025-04-11'),

(101,101,9500,'2025-04-12'),
(102,102,16000,'2025-04-13'),
(103,103,8700,'2025-04-14'),
(104,104,14200,'2025-04-15'),
(105,105,19900,'2025-04-16'),
(106,106,11000,'2025-04-17'),
(107,107,15800,'2025-04-18'),
(108,108,9700,'2025-04-19'),
(109,109,18200,'2025-04-20'),
(110,110,12100,'2025-04-21'),

(111,111,13400,'2025-04-22'),
(112,112,9200,'2025-04-23'),
(113,113,17600,'2025-04-24'),
(114,114,10500,'2025-04-25'),
(115,115,14300,'2025-04-26'),
(116,116,18900,'2025-04-27'),
(117,117,9800,'2025-04-28'),
(118,118,15000,'2025-04-29'),
(119,119,8700,'2025-04-30'),
(120,120,20000,'2025-05-01');



-- 1. Display all patients
SELECT * FROM patients;

-- 2. Policies with coverage above 5,00,000
SELECT * 
FROM policies
WHERE coverage_amount > 500000;

-- 3. List network hospitals only
SELECT * 
FROM hospitals
WHERE is_network = TRUE;

-- 4. Doctors in a particular hospital
SELECT * 
FROM doctors
WHERE hospital_id = 2;

-- 5. Pending claims
SELECT * 
FROM claims
WHERE claim_status = 'Pending';

-- 6. Treatments between two dates
SELECT * 
FROM treatments
WHERE admission_date BETWEEN '2024-01-01' AND '2026-12-31';

-- 7. Patients whose policy expires this month
SELECT p.name, pol.end_date
FROM patients p
JOIN policies pol ON p.policy_id = pol.policy_id
WHERE MONTH(pol.end_date) = MONTH(CURDATE())
AND YEAR(pol.end_date) = YEAR(CURDATE());

-- 8. Claims greater than 50,000
SELECT * 
FROM claims
WHERE claim_amount > 50000;

-- 9. Hospital names in Chennai
SELECT hospital_name
FROM hospitals
WHERE city = 'Chennai';

-- 10. Total number of patients
SELECT COUNT(*) AS total_patients
FROM patients;

-- 11. Patient name with policy name
SELECT p.name, pol.policy_name
FROM patients p
JOIN policies pol ON p.policy_id = pol.policy_id;

-- 12. Total claim amount per hospital
SELECT h.hospital_name, SUM(c.claim_amount) AS total_claim
FROM hospitals h
JOIN treatments t ON h.hospital_id = t.hospital_id
JOIN claims c ON t.treatment_id = c.treatment_id
GROUP BY h.hospital_name;

-- 13. Highest claim amount
SELECT MAX(claim_amount) AS highest_claim
FROM claims;

-- 14. Number of claims per patient
SELECT p.name, COUNT(c.claim_id) AS total_claims
FROM patients p
JOIN treatments t ON p.patient_id = t.patient_id
JOIN claims c ON t.treatment_id = c.treatment_id
GROUP BY p.name order by total_claims desc;

-- 15. Doctors who treated more than 5 patients
SELECT d.doctor_name, COUNT(t.patient_id) AS total_patients
FROM doctors d
JOIN treatments t ON d.doctor_id = t.doctor_id
GROUP BY d.doctor_name
HAVING COUNT(t.patient_id) > 5 order by COUNT(t.patient_id) desc ;

-- 16. Rejected claims with patient details
SELECT p.name, c.claim_id, c.claim_amount
FROM claims c
JOIN treatments t ON c.treatment_id = t.treatment_id
JOIN patients p ON t.patient_id = p.patient_id
WHERE c.claim_status = 'Rejected';

-- 17. Total approved amount per month
SELECT MONTH(payment_date) AS month,
       SUM(approved_amount) AS total_approved
FROM payments
GROUP BY MONTH(payment_date);

-- 18. Average treatment cost per hospital
SELECT h.hospital_name, AVG(t.treatment_cost) AS avg_cost
FROM hospitals h
JOIN treatments t ON h.hospital_id = t.hospital_id
GROUP BY h.hospital_name;

-- 19. Patients who never made a claim
SELECT p.name
FROM patients p
LEFT JOIN treatments t ON p.patient_id = t.patient_id
LEFT JOIN claims c ON t.treatment_id = c.treatment_id
WHERE c.claim_id IS NULL;

-- 20. Hospitals with more than 10 claims
SELECT h.hospital_name, COUNT(c.claim_id) AS total_claims
FROM hospitals h
JOIN treatments t ON h.hospital_id = t.hospital_id
JOIN claims c ON t.treatment_id = c.treatment_id
GROUP BY h.hospital_name
HAVING COUNT(c.claim_id) > 10;

-- 21. Patient with highest total claim
SELECT p.name, SUM(c.claim_amount) AS total_claim
FROM patients p
JOIN treatments t ON p.patient_id = t.patient_id
JOIN claims c ON t.treatment_id = c.treatment_id
GROUP BY p.name
ORDER BY total_claim DESC
LIMIT 2;


-- 22. Policy-wise total claims
SELECT pol.policy_name, SUM(c.claim_amount) AS total_claim
FROM policies pol
JOIN patients p ON pol.policy_id = p.policy_id
JOIN treatments t ON p.patient_id = t.patient_id
JOIN claims c ON t.treatment_id = c.treatment_id
GROUP BY pol.policy_name;

-- 23. Monthly claim trend
SELECT YEAR(claim_date) AS year,
       MONTH(claim_date) AS month,
       SUM(claim_amount) AS total_claim
FROM claims
GROUP BY YEAR(claim_date), MONTH(claim_date);

-- 24. Top 3 hospitals by claim amount
SELECT h.hospital_name, SUM(c.claim_amount) AS total_claim
FROM hospitals h
JOIN treatments t ON h.hospital_id = t.hospital_id
JOIN claims c ON t.treatment_id = c.treatment_id
GROUP BY h.hospital_name
ORDER BY total_claim DESC
LIMIT 3;

-- 25. Create view for pending claims
CREATE VIEW pending_claims AS
SELECT *
FROM claims
WHERE claim_status = 'Pending';

-- 26 . Patients exceeding coverage limit
SELECT p.name, SUM(c.claim_amount) AS total_claim, pol.coverage_amount
FROM patients p
JOIN policies pol ON p.policy_id = pol.policy_id
JOIN treatments t ON p.patient_id = t.patient_id
JOIN claims c ON t.treatment_id = c.treatment_id
GROUP BY p.name, pol.coverage_amount
HAVING total_claim > pol.coverage_amount;


