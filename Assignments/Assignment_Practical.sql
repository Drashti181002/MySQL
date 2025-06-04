CREATE DATABASE contact_management;

USE contact_management;

CREATE TABLE company 
(
	CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(20),
    Zip VARCHAR(10)
);

INSERT INTO company (CompanyID, CompanyName, Street, City, State, Zip) values
(1, 'TechCorp', '123 Elm St', 'New York', 'NY', '10001'),
(2, 'BizGroup', '456 Oak St', 'Chicago', 'IL', '60601'),
(3, 'Innovate Ltd', '789 Pine St', 'San Francisco', 'CA', '94101'),
(4, 'DevWorks', '135 Maple St', 'Austin', 'TX', '73301'),
(5, 'NetSoft', '246 Cedar St', 'Seattle', 'WA', '98101'),
(6, 'CloudCore', '357 Birch St', 'Denver', 'CO', '80201'),
(7, 'DesignPlus', '468 Walnut St', 'Boston', 'MA', '02101'),
(8, 'AI Logic', '579 Spruce St', 'Atlanta', 'GA', '30301'),
(9, 'DataHub', '681 Ash St', 'Miami', 'FL', '33101'),
(10, 'CodeX', '792 Fir St', 'Portland', 'OR', '97201'),
(11, 'FusionSoft', '803 Redwood St', 'Las Vegas', 'NV', '89101'),
(12, 'GreenSoft', '914 Palm St', 'Phoenix', 'AZ', '85001'),
(13, 'toll brothers', '789 Pine At', 'Chicagoo', 'Il', '97670');



CREATE TABLE contact 
(
    ContactID INT PRIMARY KEY,
    CompanyID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    IsMain BOOLEAN,
    Email VARCHAR(45),
    Phone VARCHAR(12),
    FOREIGN KEY (CompanyID) REFERENCES company(CompanyID)
);

-- (2) Statement to create the Employee table :

CREATE TABLE employee 
(
    EmployeeID1 INT PRIMARY KEY,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Salary DECIMAL(10,2),
    HireDate DATE,
    JobTitle VARCHAR(25),
    Email VARCHAR(45),
    Phone VARCHAR(12)
);

CREATE TABLE contactemployee 
(
    ContactEmployeeID INT PRIMARY KEY,
    ContactID INT,
    EmployeeID INT,
    ContactDate DATE,
    Descriptions VARCHAR(100),
    FOREIGN KEY (ContactID) REFERENCES contact(ContactID),
    FOREIGN KEY (EmployeeID) REFERENCES employee(EmployeeID1)
);

INSERT INTO contact (ContactID, CompanyID, FirstName, LastName, IsMain, Email, Phone) values
(1, 2,'Alex', 'Abadi', TRUE, 'alex.abadi@gmail.com', '167-234-4224'),
(2, 3,'Gabriella', 'Castillo', TRUE, 'Gabriella.Castillo@gmail.com', '908-673-7747'),
(3, 4,'Sam', 'Dillon', FALSE, 'Sum.Dillon@gmail.com', '555-544-8954'),
(4, 5,'Ellie', 'Fetner', FALSE, 'Ellie.Fetners@gmail.com', '444-744-4444'),
(5, 6,'Mallory', 'Guthrie', TRUE, 'Mallory.Guthrie@gmail.com', '786-894-9745'),
(6, 7,'Kyra', 'Kardong', TRUE, 'Kyra.Kardong@gmail.com', '557-454-4558'),
(7, 8,'Caitlyn', 'Magarin', TRUE, 'Caitlyn.Magarin@gmail.com', '455-554-8545'),
(8, 9,'Allie', 'McSween', FALSE, 'Allie.McSween@gmail.com', '415-544-4554'),
(9, 10,'Brianna', 'Pace', TRUE, 'Brianna.Pace@gmail.com', '477-987-3698'),
(10, 1,'Faith', 'Purdent', TRUE, 'Faith.Purdent@gmail.com', '789-654-9741'),
(11, 12,'Dianne','Connor', TRUE, 'dianne.connor@gmail.com','123-345-3456');

INSERT INTO employee (EmployeeID1, FirstName, LastName , Salary, HireDate, JobTitle, Email, Phone) values
(11, 'Alex', 'Abadi',80000, '2022-02-05', 'Data analyst','alex.abadi@gmail.com', '167-234-4224'),
(12, 'Gabriella', 'Castillo', 90000, '2023-12-15', 'Python developer', 'Gabriella.Castillo@gmail.com', '908-673-7747'),
(13, 'Sam', 'Dillon', 20000, '2021-10-12' , 'Full-stack developer','Sum.Dillon@gmail.com', '555-544-8954'),
(14, 'Ellie', 'Fetner',90000, '2018-01-15', 'Data scientist', 'Ellie.Fetners@gmail.com', '444-744-4444'),
(15, 'Mallory', 'Guthrie', 70000, '2022-11-21','Backend developer','Mallory.Guthrie@gmail.com', '786-894-9745'),
(16, 'Kyra', 'Kardong', 60000, '2019-01-27', 'Frontend developer','Kyra.Kardong@gmail.com', '557-454-4558'),
(17, 'Caitlyn', 'Magarin', 90000, '2020-12-29','Graphic designer','Caitlyn.Magarin@gmail.com', '455-554-8545'),
(18, 'Allie', 'McSween', 220000, '2022-10-18', 'Automation tester','Allie.McSween@gmail.com', '415-544-4554'),
(19, 'Brianna', 'Pace', 30000, '2018-11-21','PowerBI developer','Brianna.Pace@gmail.com', '477-987-3698'),
(20, 'Faith', 'Purdent', 40000, '2021-08-15','Software engineer','Faith.Purdent@gmail.com', '789-654-9741');

INSERT INTO contactemployee (ContactEmployeeID, ContactID, EmployeeID, ContactDate, Descriptions) values
(1, 1, 11, '2024-01-08', 'Reporting with Alex'),
(2, 2, 12, '2024-02-05', 'Email to Gabriella'),
(3, 3, 13, '2024-03-14', 'Call with Sam'),
(4, 4, 14, '2024-04-24', 'Meeting with Ellie'),
(5, 5, 15, '2024-05-11', 'Call with Mallory'),
(6, 6, 16, '2024-06-21', 'Email to Kyra'),
(7, 7, 17, '2024-07-11', 'Meeting with Caitlyn'),
(8, 8, 18, '2024-08-15', 'Call with Allie'),
(9, 9, 19, '2024-09-20', 'Email to Brianna'),
(10, 10, 20, '2024-10-18', 'Meeting with Faith');

-- (3) Statement to create the ContactEmployee table ,Use DATE as the datatype for ContactDate. It allows you to store the date in this format :- YYYY-MM-DD :

 SELECT * , date_format(ContactDate , "%Y - %M - %D") AS FULL_DATE FROM Contactemployee ;
 
-- (4) In the Employee table, the statement that changes Brianna Pace’s phone number to 215-555-8800 :

UPDATE employee SET Phone = '215-555-8800' WHERE FirstName = 'Brianna' AND LastName = 'Pace';

-- (5) In the Company table, the statement that changes the name of “DevWorks” to “Urban Outfitters” :

UPDATE Company SET CompanyName = ' Urban Outfitters' WHERE CompanyName = 'DevWorks';

-- (6) In ContactEmployee table, the statement that removes Dianne Connor’s contactevent with Jack Lee (one statement) :

 Delete from contact where firstname="Dianne" and lastname="Connor";
 
 -- 7) Write the SQL SELECT query that displays the names of the employees thathave contacted Toll Brothers (one statement). Run the SQL SELECT query in MySQL Workbench. Copy the results below as well :

select FirstName ,LastName from company inner join  contact on company.CompanyID=contact.CompanyID where CompanyName = 'toll brothers'; 

select*from company inner join  contact on company.CompanyID=contact.CompanyID;

select*from contact inner join contacemployee on contact.ContactID = contactemployee.ContactID ;

select*from contactemployee inner join  employee on contactemployee.ContactID = employee.EmployeeID1 ;




 
 
 


