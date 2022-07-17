# DBI_202_SPRING_22 
# Quản Lí Điểm Flm Database System Report Assignment
## Bảng Thông Tin Các Điểm Thành Phần
###   ![image](https://user-images.githubusercontent.com/76523661/174473470-0efadd32-427b-475b-93a6-52d2a7179314.png)
###   Category (hạng mục)
          Mô Tả: Danh sách, Tên Các Đầu Điểm
               - Progress Tests 
               - Assignment
               - Labs
               - PE ( Practice Exam )
               - FE ( Final Exam )
###   Type(loại) 
          Mô Tả: Trạng Thái Và Loại Hình Kiểm Tra
               - Quiz 
               - On-going
               - PE ( Practice Exam )
               - FE ( Final Exam )
###   Part 
          Mô Tả: Số lượng các đầu điểm trên từng hạng mục - đầu điểm
###   Weight 
          Mô Tả: Trọng số trên từng hạng mục - đầu điểm
###   Completion Criteria 
          Mô Tả: Điều kiện để thi và điểm tối thiểu để pass 
###   Duration
          Mô Tả: Khoảng thời gian cần làm việc trong hạng mục
               - At home 
               - In lab session
###   Question Type( Loại câu hỏi )
          Mô Tả: Cách Triển Khai Lấy Đầu Điểm
               - Multichoices
               - Practices 
               - Design And Present
               - Scripts

###   No Question( Số câu hỏi )
          Mô Tả: Quy Định Về Số Lượng Câu Hỏi Trong Bài Kiểm Tra 
###   Knowledge and Skill
          Mô Tả: Yêu Cầu Tiêu Chuẩn Trong Kĩ Năng Và Kiến Thức Cần Đạt Trước Khi Tham Gia
               - Đầu Điểm Theo Từng Phân Mức Chương Trình Học
               - Kĩ Năng Thực Hành
               - Kiến Thức Tập Trung Quan Trọng
###   Grading Guide
          Mô Tả: Người Chịu Trách Nghiệm Hướng Dẫn Và Quy Định Cách Thực Hiện Trình Bày Để Đạt Được Các Tiêu Chí Trên Các Hạng Mục
###   Note
          Mô Tả: Tiêu Chí, Tỉ Trọng Và Hướng Dẫn Cho Điểm Trên Các Hạng Mục
--------------------------------------------------------------------------
## Bảng Môn Và Khóa Học 
### ![image](https://user-images.githubusercontent.com/76523661/174435441-24021f17-609a-4c3d-ac96-fc9184d21479.png)
### NO
          Mô Tả: Số Lượng Môn Học, Khóa Học
### Subject code 
          Mô Tả: Mã Code Tương Ứng Trên Từng Khóa Học
### Subject name 
          Mô Tả: Định Nghĩa Và Khai Quát Chung Về Môn Học
### Semester 
          Mô Tả: Thời Gian Và Kì Học
               - Seasons 
               - Years
### Group: Lớp học 
          Mô Tả: Tên Lớp Học Theo Khóa Và Kì Học
### StartDate
          Mô Tả: Thời điểm bắt đầu môn học
### EndDate
          Mô Tả: Thời điểm kết thúc môn học
### Average Mark
          Mô Tả: Điểm trung bình
### Status
          Mô Tả: Trạng Thái Bài Nộp Của Sinh Viên
               - Not Passed 
               - Passed 
               - Passed With Conditions
--------------------------------------------------------------------------
## Bảng Điểm Của Sinh Viên
### ![image](https://user-images.githubusercontent.com/76523661/174435461-09a9d235-f99f-4169-8c2a-cebee1f6d4e7.png)
### Grade category (hạng mục)
          Mô Tả: Danh sách, Tên Các Đầu Điểm
               - Progress Tests ( Quiz )
               - Assignment ( Person, Group )
               - Labs
               - PE ( Practice Exam )
               - FE ( Final Exam )
               - Final Exam Resit
### Grade Item ( hạng mục ) 
          Mô Tả: Tên Và Tổng Đầu Điểm 
               - Item
               - Total 
### Weight
          Mô Tả: Tỉ trọng điểm thành phần, cũng có ở bên FML table (%)
### Value
          Mô Tả: Điểm Sinh Viên Đạt Được Trên Thang Điểm Quy Chuẩn
--------------------------------------------------------------------------
# Xác Định Các Thực Thể Và Các Thông Tin Thuộc Tính 
##    Xác Định Các Thực Thể 
###         Thực Thể 1: Students
               - StudentID
               - First Name 
               - Last Name
               - Address
               - Gender
               - Date Of Birth
               - Email
###         Thực Thể 2: Group Students
               - GroupID
               - Major
###         Thực Thể 3: Courses
               - CourseID
               - CourseName
               - Course_Status ( Online, Offline)
###         Thực Thể 4: Lecturers
               - LectureID
               - First Name
               - Last Name
               - Gender
               - Phone
               - Date Of Birth
               - ReportTO
###         Thực Thể 5: Guide
               - GuideID
               - Details
###         Thực Thể 6: Class
               - ClassID
               - Status
               - Semester
               - Start Date
               - End Date
###         Thực Thể 7: Category
               - CatID
               - Category
               - Type
               - Part
               - Weight
               - Duration
               - Quest Type
               - Number Of Questions
               - Skill
               - Grading Guide
               - Note
###         Thực Thể 8: Assessment system
               - AssessmentID
               - CourseID
               - AssigmentID
               - Weight
###         Thực thể 9: Assignment
               - AssigmentID
               - AssigmentName
               
--------------------------------------------------------------------------
# Phân Chia Các Entities Và Relationships
##  Entity Students <-> Entity Groups
    Mô Tả:  Một Student có thể đăng kí học nhiều Courses Và 1 Courses có thể có nhiều Student đăng kí học.
    -> Xác Định Quan Hệ Giữa Entity Students Và Entity Groups là quan hệ nhiều nhiều ( n-n )
##  Entity Class <-> Entity Lecturers
    Mô Tả:  Một Class chỉ có thể được phụ trách bởi đúng 1 Lecturer và 1 Lecturer có thể phụ trách nhiều class.
    -> Xác Định Quan Hệ Giữa Entity Class Và Entity Lecturers là quan hệ một nhiều ( 1-n )
##  Entity Class <-> Entity Groups
    Mô Tả:  Một Class có thể được đăng kí bởi nhiều Groups và 1 Group có thể đăng kí nhiều Classes.
    -> Xác Định Quan Hệ Giữa Entity Classes Và Entity Groups là quan hệ nhiều nhiều ( n-n )
##  Entity Student <-> Entity Assessment System
    Mô Tả:  Một Student có thể có nhiều hệ thống đánh giá các đầu điểm và 1 Assessment System có thể phụ trách đầu điểm của nhiều Students.
    -> Xác Định Quan Hệ Giữa Entity Students Và Entity Assessment System là quan hệ nhiều nhiều ( n-n )
##  Entity Class <-> Entity Assessment System
    Mô Tả:  Một Class có thể có nhiều hệ thống đánh giá các đầu điểm và 1 Assessment System có thể phụ trách đầu điểm của nhiều Classes.
    -> Xác Định Quan Hệ Giữa Entity Class Và Entity Assessment System là quan hệ nhiều nhiều ( n-n )
##  Entity Class <-> Entity Students
    Mô Tả:  Một Class có thể có nhiều đầu điểm của Students và 1 Students có thể xem được đầu điểm của nhiều Classes.
    -> Xác Định Quan Hệ Giữa Entity Class Và Entity Students là quan hệ nhiều nhiều ( n-n )
##  Entity Courses <-> Entity Assessment System
    Mô Tả:  Một Course chỉ có thể có duy nhất 1 hệ thống đánh giá các đầu điểm  và 1 Assessment System có thể là hệ thống đánh giá của  nhiều Courses.
    -> Xác Định Quan Hệ Giữa Entity Assessment System Và Entity Courses là quan hệ một nhiều ( 1-n )
##  Entity Class <-> Entity Assignment
    Mô Tả:  Một Class chỉ nhận đúng 1 Assignment  và 1 Assignment có thể được giao cho nhiều Classes.
    -> Xác Định Quan Hệ Giữa Entity Class Và Entity Assignment là quan hệ một nhiều ( 1-n )
##  Entity Courses <-> Entity Assignment
    Mô Tả:  Một Courses chỉ có thể có đúng 1 Assigment và 1 Assigment có thể được lấy từ nhiều Courses.
    -> Xác Định Quan Hệ Giữa Entity Courses Và Entity Assigment là quan hệ một nhiều ( 1-n )
##  Entity Category <-> Entity Assignment Systems
    Mô Tả:  Một Category có thể tổng hợp từ nhiều Assignment Systems và 1 Assignment Systems chỉ có thể đưa vào 1 Category duy nhất.
    -> Xác Định Quan Hệ Giữa Entity Category Và Entity Assignment Systems là quan hệ một nhiều ( 1-n )
##  Entity Lecturers <-> Entity Assignment
    Mô Tả:  Một Assigment có thể có được từ nhiều Lecturers và 1 Lecturers chỉ có thể đưa ra đúng 1 Assignment.
    -> Xác Định Quan Hệ Giữa Entity Assigment Và Entity Lecturers là quan hệ một nhiều ( 1-n )


--------------------------------------------------------------------------
# ERD Diagram
## ![image](https://user-images.githubusercontent.com/76523661/177997507-60211233-ca77-4ccf-84e0-b03c1578fca4.png)

--------------------------------------------------------------------------
# Chuyển Đổi 
##   Phân Tách Các Quan Hệ < n-n > Và Tạo Table
    1. STUDENTS Và GROUPS 
        Quan hệ nhiều nhiều được biểu hiện qua Action "JOIN" 
        -> Tách và Tạo TABLE
            TABLE_STUDENTS <-> TABLE_JOIN( GrID, StudentID ) <-> TABLE_GROUPS
--------------------------------------------------------------------------
    2. CLASSES Và GROUPS 
        Quan hệ nhiều nhiều được biểu hiện qua Action "ENROLL" 
        -> Tách và Tạo TABLE 
            TABLE_CLASSES <-> TABLE_ENROLL( ClassID, GrID ) <-> TABLE_GROUPS
--------------------------------------------------------------------------
    3. CLASSES Và ASSESSMENT SYSTEM  
        Quan hệ nhiều nhiều được biểu hiện qua Action "ASSESS" 
        -> Tách và Tạo TABLE 
            TABLE_CLASSES <-> TABLE_ASSESS( ClassID, AssID ) <-> TABLE_ASSESSMENT_SYSTEM
--------------------------------------------------------------------------
    4. STUDENTS Và ASSESSMENT SYSTEM
        Quan hệ nhiều nhiều được biểu hiện qua Action "GRADE" 
        -> Tách và Tạo TABLE
            TABLE_STUDENTS <-> TABLE_GRADE( AssID, StudentID, Score, Date ) <-> TABLE_ASSESSMENT_SYSTEM
--------------------------------------------------------------------------
    5. STUDENTS Và CLASSES
        Quan hệ nhiều nhiều được biểu hiện qua Action "VIEW" 
        -> Tách và Tạo TABLE
            TABLE_STUDENTS <-> TABLE_VIEW( ClassID, StudentID, Average, Status ) <-> TABLE_GROUPS
##   Chuẩn Hóa Thuộc Tính Các Attribute Trên Từng Bảng 

1.  TABLE STUDENTS

| Attributes | Type |
|:---|:---|
| StudentID   |    Varchar  | 
| Last Name   |    NVarchar |
| First Name  |    NVarchar |
| Gender      |    Bit      |
| Email       |    Varchar  |
| DoB         |    Date     |

--------------------------------------------------------------------------

2. TABLE GROUPS

| Attributes | Type |
|:---|:---|
|    GrID        |    Varchar  |
|    Major       |    Varchar  |

--------------------------------------------------------------------------

3. TABLE JOIN

| Attributes | Type |
|:---|:---|
|    GrID        |    Varchar  |
|    StudentID   |    Varchar  |

--------------------------------------------------------------------------

4. TABLE LECTURERS

| Attributes | Type |
|:---|:---|
|    LecID       |    Varchar  |
|    Last Name   |    NVarchar |
|    First Name  |    NVarchar |
|    Gender      |    Bit      |
|    Email       |    Varchar  |
|    DoB         |    Date     |
|    Report      |    Varchar  |

--------------------------------------------------------------------------

5. TABLE CLASSES

| Attributes | Type |
|:---|:---|
|    ClassID     |    Varchar  |
|    Semester    |    Varchar  |
|    Start Date  |    Date     |
|    End Date    |    Date     |
|    AsgID       |    Varchar  |

--------------------------------------------------------------------------

6. TABLE VIEW

| Attributes | Type |
|:-----|:-----|
|    StudentID   |    Varchar  |
|    ClassID     |    Varchar  |
|    Average     |    Float    |
|    Status      |    Varchar  |

--------------------------------------------------------------------------
7. TABLE ENROLL

| Attributes | Type |
|:-----|:-----|
|    GrID        |    Varchar  |
|    ClassID     |    Varchar  |

--------------------------------------------------------------------------
8. TABLE GRADE

| Attributes | Type |
|:-----|:-----|
|    StudentID   |    Varchar  |
|    AssID       |    Varchar  |
|    Score       |    Float    |
|    Date        |    Date     |

--------------------------------------------------------------------------
9. TABLE ASSESSMENT_SYSTEM

| Attributes | Type |
|:-----|:-----|
|   AssID        |    Varchar  |
|   CatID        |    Varchar  |
|   CouID        |    Varchar  |
|   Weigh        |    Float    |
|   Number Quest |    Varchar  |
|   Duration     |    Varchar  |


--------------------------------------------------------------------------
10. TABLE ASSIGNMENT

| Attributes | Type |
|:-----|:-----|
|    AsgID       |    Varchar  |
|    LecID       |    Varchar  |
|    Major       |    Varchar  |

--------------------------------------------------------------------------
11. TABLE COURSE

| Attributes | Type |
|:-----|:-----|
|    CouID   |    Varchar  |
|    CName   |    Varchar  |
|    GuideID |    Varchar  |

--------------------------------------------------------------------------
12. TABLE GUIDE

| Attributes | Type |
|:-----|:-----|
|    GuideID     |    Varchar  |
|    Details     |    Text     |

--------------------------------------------------------------------------
13. TABLE CATEGORY

| Attributes | Type |
|:-----|:-----|
|    CatID       |    Varchar  |
|    Name        |    Varchar  |
|    Type        |    Varchar  |
|    Completion Criteria       |    Varchar  |
|    AssID       |    VarChar  |

--------------------------------------------------------------------------
14. TABLE ASSESS

| Attributes | Type |
|:-----|:-----|
|    AssID       |    Varchar  |
|    ClassID     |    Varchar  |

--------------------------------------------------------------------------
##   Xác Định Primary Key, Foriegn Key, Attributes Các TABLES

1.  TABLE STUDENTS

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
| StudentID   |    Varchar  | 50 | Not Null | Primary Key
| Last Name   |    NVarchar | 50 | Not Null |
| First Name  |    NVarchar | 50 | Not Null |
| Gender      |    Bit      |    |  Null    |
| Email       |    Varchar  | 50 | Not Null |
| DoB         |    Date     | yyyy/mm/dd | Null | 

--------------------------------------------------------------------------

2. TABLE GROUPS

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    GrID        |    Varchar  | 50 | Not Null | Primary Key
|    Major       |    Varchar  | 50 | Not Null | 

--------------------------------------------------------------------------

3. TABLE JOIN

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    GrID        |    Varchar  | 50 | Not Null | Primary_Foreign Key 
|    StudentID   |    Varchar  | 50 | Not Null | Primary_Foreign Key 

--------------------------------------------------------------------------

4. TABLE LECTURERS

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    LecID       |    Varchar  | 50 | Not Null | Primary Key
|    Last Name   |    NVarchar | 50 | Not Null |
|    First Name  |    NVarchar | 50 | Not Null |
|    Gender      |    Bit      |    | Null     |
|    Email       |    Varchar  | 50 | Not Null |
|    DoB         |    Date     | yyyy/mm/dd | Null |
|    Report      |    Varchar  | 50 | Null | Foreign Key

--------------------------------------------------------------------------

5. TABLE CLASSES

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    ClassID     |    Varchar  | 50 | Not Null | Primary Key
|    Semester    |    Varchar  | 50 | Not Null | Primary Key
|    Start Date  |    Date     | yyyy/mm/dd | Null | 
|    End Date    |    Date     | yyyy/mm/dd | Null |
|    AsgID       |    Varchar  | 50 | Not Null | Foreign Key

--------------------------------------------------------------------------

6. TABLE VIEW

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    StudentID   |    Varchar  | 50 | Not Null | Primary Key
|    ClassID     |    Varchar  | 50 | Not Null | Primary Key
|    Average     |    Float    | 15 | Not Null |
|    Status      |    Varchar  | 50 | Not Null |

--------------------------------------------------------------------------
7. TABLE ENROLL

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    GrID        |    Varchar  | 50 | Not Null | Primary Key
|    ClassID     |    Varchar  | 50 | Not Null | Primary Key

--------------------------------------------------------------------------
8. TABLE GRADE

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    StudentID   |    Varchar  | 50 | Not Null | Primary Key
|    AssID       |    Varchar  | 50 | Not Null | Primary Key
|    Score       |    Float    | 15 | Not Null |
|    Date        |    Date     | yyyy/mm/dd | Null | Primary Key

--------------------------------------------------------------------------
9. TABLE ASSESSMENT_SYSTEM

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|   AssID        |    Varchar  | 50  | Not Null | Primary Key
|   CatID        |    Varchar  | 50  | Not Null | Foreign Key
|   CouID        |    Varchar  | 50  | Not Null | Foreign Key
|   Weigh        |    Float    | 15  | Not Null |
|   Number Quest |    Varchar  | 50  | Not Null |
|   Duration     |    Varchar  | 150 | Not Null |


--------------------------------------------------------------------------
10. TABLE ASSIGNMENT

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    AsgID       |    Varchar  | 50 | Not Null | Primary Key
|    LecID       |    Varchar  | 50 | Not Null | Foreign Key
|    Major       |    Varchar  | 50 | Not Null | Poreign Key

--------------------------------------------------------------------------
11. TABLE COURSE

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    CouID   |    Varchar  | 50 | Not Null | Primary Key
|    CName   |    Varchar  | 50 | Not Null |
|    GuideID |    Varchar  | 50 | Not Null | Foreign Key

--------------------------------------------------------------------------
12. TABLE GUIDE

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    GuideID     |    Varchar  | 50  | Not Null | Primary Key
|    Details     |    Varchar  | 350 | Not Null |

--------------------------------------------------------------------------
13. TABLE CATEGORY

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    CatID       |    Varchar  | 50 | Not Null | Primary Key
|    Name        |    Varchar  | 50 | Not Null |
|    Type        |    Varchar  | 50 | Not Null |
|    Completion Criteria      |    Varchar  | 150 | Not Null |
|    AssID       |    Varchar  | 50 | Not Null | Foreign Key

--------------------------------------------------------------------------
14. TABLE ASSESS

| Attributes | Type |Format | Requires | Key 
|:---|:---|:---|:---|:---
|    AssID       |    Varchar  | 50 | Not Null | Primary Key
|    ClassID     |    Varchar  | 50 | Not Null | Primary Key

--------------------------------------------------------------------------

--------------------------------------------------------------------------
##   Database_Diagram
###     Hình Ảnh Và Mô Tả
![image](https://user-images.githubusercontent.com/76523661/178624618-3645fd18-17ef-41a5-b529-94526dae8446.png)

--------------------------------------------------------------------------
# Triển Khai DataBase_Diagram Trên Sql_Server
##   Creat Table And Attributes
###     Code sql
###     Image + Results
![image](https://user-images.githubusercontent.com/76523661/179021600-45402c51-c8ba-4bf6-8419-a8faf902daf9.png)
```       sql
create table Students(
  StudentID  Varchar(50) Not Null Primary Key,
  Last_Name    NVarchar(50 ) Not Null ,
  First_Name   NVarchar(50) Not Null,
  Gender      Bit      Null,
  Email       Varchar(50) Not Null,
  DoB         Date
)

create table Groups(
  GrID  Varchar(50) Not Null Primary Key,
  Major    NVarchar(50 ) Not Null
)

create table Lectures(
  LecID  Varchar(50) Not Null Primary Key,
  Last_Name    NVarchar(50 ) Not Null ,
  First_Name   NVarchar(50) Not Null,
  Gender      Bit      Null,
  Email       Varchar(50) Not Null,
  DoB         Date,
  Report Varchar(50),
  constraint FK_Lectures foreign key (Report) references Lectures(LecID)
)

create table Assignment(
AsgID varchar(50) not null primary key,
Major varchar(50) not null,
LecID varchar(50) not null foreign key references  Lectures(LecID)
)

create table Classes(
ClassID varchar(50) not null,
Semester varchar(50) not null,
Start_Date Date ,
End_date Date,
AsgID varchar(50) not null,
constraint PK_Classes primary key (ClassID),
constraint FK_Classes foreign key (AsgID) references Assignment(AsgID)
)

Create table Guide(
GuideID varchar(50) not null primary key,
Details Varchar(350)
)

create table Courses
(
CouID varchar(50) not null primary key,
CName varchar(50) not null,
GuideID varchar(50) not null foreign key references Guide(GuideID)
)

create table Categories(
CatID varchar(50) not null primary key,
Name varchar(50) not null,
Type varchar(50) not null,
Completion_Criteria varchar(50)
)

Create Table ASSESSMENT_SYSTEM
(
 AssID Varchar(50) not null primary key,
 CatID varchar(50) not null foreign key references Categories(CatID),
 CouID varchar(50) not null foreign key references Courses(CouID),
 Num_Of_Ques int,
 Duration varchar(50),
 Weigh    Float,
 GuideID varchar(50) not null foreign key references Guide(GuideID)

)

create table Assess
(
AssID varchar(50) not null foreign key references ASSESSMENT_SYSTEM(AssID),
ClassID varchar(50) not null foreign key references Classes(ClassID),
Constraint PK_Enroll primary key(AssID,ClassID),
)

create table Grade
(
StudentID varchar(50) not null foreign key references Students(StudentID),
AssID varchar(50) not null foreign key references ASSESSMENT_SYSTEM(AssID),
Score Float(15),
Date Date,
Constraint PK_Grade primary key(AssID,StudentID,Date)
)

create table ENROLL
(
GrID varchar(50) not null foreign key references Groups(GrID),
ClassID varchar(50) not null foreign key references Classes(ClassID),
Constraint PK_Enroll_ primary key(GrID,ClassID)
)

Create table View_Students_Classes(
StudentID varchar(50) not null,
ClassID varchar(50) not null,
Average Float(15) not null,
Status Varchar(50) not null,
constraint PK_View_Students_Classes Primary Key(StudentID,ClassID),
constraint FK_View_Students foreign key (StudentID) references Students(StudentID),
constraint FK_View_Classes foreign key (ClassID) references Classes(ClassID)
)

create table JOIN_Groups_Students (
  GrID  Varchar(50) Not Null,
  StudentID    Varchar(50 ) Not Null,
  constraint PK_JOIN primary key (GrID,StudentID),
  constraint FK_JOIN_Students foreign key (StudentID) references Students(StudentID),
  constraint FK_JOIN_Groups foreign key (GrID) references Groups(GrID)
)

```
##   Đưa Dữ Liệu Vào DataBase
###    Part Of Code sql 
``` sql
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00027', 'anv@fpt.edu.vn', 'A', N'Nguyễn Thị', 0, CAST('02-01-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00028', 'bnv@fpt.edu.vn', 'B', N'Nguyễn Thị', 0, CAST('02-02-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00029', 'cnv@fpt.edu.vn', 'C', N'Nguyễn Thị', 0, CAST('02-03-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00030', 'dnv@fpt.edu.vn', 'D', N'Nguyễn Thị', 0, CAST('02-04-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00031', 'env@fpt.edu.vn', 'E', N'Nguyễn Thị', 0, CAST('02-05-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00032', 'fnv@fpt.edu.vn', 'F', N'Nguyễn Thị', 0, CAST('02-06-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00033', 'gnv@fpt.edu.vn', 'G', N'Nguyễn Thị', 0, CAST('02-07-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00034', 'hnv@fpt.edu.vn', 'H', N'Nguyễn Thị', 0, CAST('02-08-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00035', 'inv@fpt.edu.vn', 'I', N'Nguyễn Thị', 0, CAST('02-09-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00036', 'knv@fpt.edu.vn', 'K', N'Nguyễn Thị', 0, CAST('02-11-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00037', 'lnv@fpt.edu.vn', 'L', N'Nguyễn Thị', 0, CAST('02-12-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00038', 'mnv@fpt.edu.vn', 'M', N'Nguyễn Thị', 0, CAST('02-13-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00039', 'nnv@fpt.edu.vn', 'N', N'Nguyễn Thị', 0, CAST('02-14-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00040', 'onv@fpt.edu.vn', 'O', N'Nguyễn Thị', 0, CAST('02-15-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00041', 'pnv@fpt.edu.vn', 'P', N'Nguyễn Thị', 0, CAST('02-16-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00042', 'qnv@fpt.edu.vn', 'Q', N'Nguyễn Thị', 0, CAST('02-17-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00043', 'rnv@fpt.edu.vn', 'R', N'Nguyễn Thị', 0, CAST('02-18-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00044', 'snv@fpt.edu.vn', 'S', N'Nguyễn Thị', 0, CAST('02-19-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00045', 'tnv@fpt.edu.vn', 'T', N'Nguyễn Thị', 0, CAST('02-20-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00046', 'unv@fpt.edu.vn', 'U', N'Nguyễn Thị', 0, CAST('02-21-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00047', 'vnv@fpt.edu.vn', 'V', N'Nguyễn Thị', 0, CAST('02-22-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00048', 'wnv@fpt.edu.vn', 'W', N'Nguyễn Thị', 0, CAST('02-23-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00049', 'xnv@fpt.edu.vn', 'X', N'Nguyễn Thị', 0, CAST('02-24-2002' AS DATE));
INSERT Students(StudentID, Email, [First_Name], [Last_Name], Gender, [DoB]) VALUES ('HE00050', 'ynv@fpt.edu.vn', 'Y', N'Nguyễn Thị', 0, CAST('02-25-2002' AS DATE));

```
``` sql

DECLARE @STUDENTID VARCHAR(50);
DECLARE @CLID VARCHAR(50);
DECLARE @AVG FLOAT; 
DECLARE @STATUS VARCHAR(50);

DECLARE Ins_View_Students_Classes_Cursor CURSOR FOR
SELECT J.StudentID, CA.ClassID, SUM(Score * [Weigh]) AS [Average]
FROM 
	(SELECT GrID FROM Groups WHERE GrID = 'IA1608') AS IA1608
		INNER join [JOIN_Groups_Students] AS J ON J.GrID = IA1608.GrID
		INNER join Enroll ON Enroll.GrID = IA1608.GrID
		INNER join 
			(SELECT Classes.ClassID, Classes.AsgID, [AS].AssID, [AS].CouID, [AS].CatID, [AS].[Weigh] 
			FROM 
				Classes INNER join Assess ON Classes.ClassID = Assess.ClassID
						INNER join [Assessment_System] AS [AS] ON [AS].AssID = Assess.AssID) AS CA
			ON Enroll.ClassID = CA.ClassID
		INNER join Grade ON CA.AssID = Grade.AssID AND  Grade.StudentID = J.StudentID  
GROUP BY J.StudentID, CouID, CA.ClassID
ORDER BY J.StudentID
OPEN Ins_View_Students_Classes_Cursor;
FETCH NEXT FROM Ins_View_Students_Classes_Cursor INTO @STUDENTID, @CLID, @AVG;
WHILE @@FETCH_STATUS = 0
BEGIN 
	IF @AVG >= 4.0
		BEGIN
			INSERT [View_Students_Classes](StudentID, ClassID, Average, [Status]) VALUES (@STUDENTID, @CLID, @AVG, 'PASSED')
		END 
	ELSE 
		BEGIN	
			INSERT [View_Students_Classes](StudentID, ClassID, Average, [Status]) VALUES (@STUDENTID, @CLID, @AVG, 'NOT PASSED')
		END
	FETCH NEXT FROM Ins_View_Students_Classes_Cursor INTO @STUDENTID, @CLID, @AVG;
END
CLOSE Ins_View_Students_Classes_Cursor
DEALLOCATE Ins_View_Students_Classes_Cursor

SELECT * FROM Grade 




```
###     Image + Results

![image](https://user-images.githubusercontent.com/76523661/179136915-2dcc4b67-3f05-4dc9-a2a9-348a3bafbea2.png)

![image](https://user-images.githubusercontent.com/76523661/179136990-b758a68e-bd30-4ca7-8aee-7b535c4677c7.png)

![image](https://user-images.githubusercontent.com/76523661/179137049-2f009125-5f91-4e68-9121-a11daadd7cc0.png)

--------------------------------------------------------------------------
# Kiểm tra, Truy Xuất Dữ Liệu Từ Database
--------------------------------------------------------------------------
# Query Requirements And Results
``` sql 
-- INDEXES --
CREATE INDEX Stu_Name ON Students([Last_Name], [First_Name])
CREATE INDEX Lec_Name ON Lectures([Last_Name], [First_Name])
SELECT * FROM Students WHERE [Last_Name] = N'Nguyễn Văn' AND [First_Name] = 'A'

CREATE VIEW View_Assess_AssessSystem AS
SELECT Classes.ClassID, Enroll.GrID, AsgID, Semester, [Start_Date], [End_Date], Assess.AssID, [AS].CouID, [AS].CatID, [Num_of_Ques], Duration, [Weigh]
FROM 
	Classes INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			INNER JOIN Assess ON Classes.ClassID = Assess.ClassID
			INNER JOIN [Assessment_System] AS [AS] ON [AS].AssID = Assess.AssID

SELECT * FROM View_Assess_AssessSystem

-- TRIGGER -- 

CREATE TRIGGER View_Average ON [View_Students_Classes]
AFTER INSERT, UPDATE
AS
	DECLARE @AVG FLOAT;
	DECLARE @CLASS VARCHAR(50);
	DECLARE @STU VARCHAR(50);
	DECLARE @AVERAGE FLOAT;
	DECLARE @STA VARCHAR(50);
	SELECT @STU = StudentID, @CLASS = ClassID, @AVG = Average, @STA = [Status] FROM inserted;

	SELECT @AVERAGE = SUM(Score * [Weigh])  
	FROM 
		JOIN_Groups_Students AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
					INNER JOIN [dbo].View_Assess_AssessSystem AS VAA ON VAA.ClassID = Enroll.ClassID AND VAA.GrID = J.GrID
					INNER JOIN Grade ON J.StudentID = Grade.StudentID AND Grade.AssID = VAA.AssID
	WHERE J.StudentID = @STU AND VAA.ClassID = @CLASS
	GROUP BY J.StudentID, VAA.ClassID, VAA.CouID, VAA.GrID
	IF @AVG <> @AVERAGE
	BEGIN
		PRINT 'Average score added to [View] was not corresponding to the average scored counted from [Grade]'
		ROLLBACK TRAN
	END
	ELSE IF (NOT @STA = 'PASSED') AND (NOT @STA = 'NOT PASSED')
	BEGIN
		PRINT 'Status must be passed or not passed'
		ROLLBACK TRAN
	END
	ELSE IF (@AVG <= 4 AND @STA = 'PASSED') OR (@AVG > 4 AND @STA = 'NOT PASSED')
	BEGIN
		PRINT 'Incorrect Status'
		ROLLBACK TRAN
	END
	
	UPDATE [View_Students_Classes] SET Average = 8.645, [Status] = 'ASDFK' WHERE StudentID = 'HE00001' AND ClassID = 'FA21APRO'

	SELECT * FROM [View_Students_Classes]

-- STORED PROCEDURE -- 

CREATE PROCEDURE Count_Student
	@GR VARCHAR(50),
	@COUNT INT OUT
AS
BEGIN
	SELECT @COUNT = COUNT(StudentID) FROM JOIN_Groups_Students WHERE GrID = @GR
END

DECLARE @NumOfStu INT = 0;
EXEC Count_Student @GR = 'IA1604', @COUNT = @NumOfStu OUT
PRINT @NumOfStu;


```
##   Query 1
``` sql
-- A QUERY THAT USES ORDER BY --

SELECT * FROM Students ORDER BY [First_Name], [Last_Name]

```
## Image Result
##   Query 2
``` sql
-- A QUERY THAT USES INNER JOIN --

SELECT Students.StudentID, [Last_Name], [First_Name], Classes.ClassID, AsgID, Semester, [Start_Date], [End_Date] 
FROM
	Students INNER JOIN JOIN_Groups_Students ON Students.StudentID = JOIN_Groups_Students.StudentID
			 INNER JOIN Enroll ON Enroll.GrID = JOIN_Groups_Students.GrID
			 INNER JOIN Classes ON Enroll.ClassID = Classes.ClassID
```
## Image Result
##   Query 3
``` sql
-- A QUERY THAT ESES AGGREGATE FUNCTION --

SELECT Lectures.LecID, [Last_Name], [First_Name], Semester, COUNT(Assignment.AsgID) AS Assigned 
FROM 
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Classes ON Assignment.AsgID = Classes.AsgID
GROUP BY Lectures.LecID, [Last_Name], [First_Name], Semester
```
## Image Result
##   Query 4
``` sql
--  A QUERY THAT USES GROUP BY AND HAVING -- 

SELECT Lectures.LecID, [Last_Name], [First_Name], Semester, Enroll.GrID, Enroll.ClassID, COUNT(StudentID) AS [Num of Students]    
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Classes ON Classes.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			  INNER JOIN JOIN_Groups_Students ON Enroll.GrID = JOIN_Groups_Students.GrID
GROUP BY Lectures.LecID, [Last_Name], [First_Name], Semester, Enroll.GrID, Enroll.ClassID
HAVING Lectures.LecID = 'GVA'

```
## Image Result
##   Query 5
``` sql
-- A QUERY THAT USES A SUB-QUERY AS A RELATION --

SELECT LEC.LecID, LEC.[Last_Name], LEC.[First_Name], Major, Semester, CouID, [AS].CatID,Details
FROM 
	(SELECT LecID,[Last_Name], [First_Name] FROM Lectures) AS LEC
		INNER JOIN 
			Assignment 
			ON Assignment.LecID = LEC.LecID
		INNER JOIN 
			(SELECT ClassID, AsgID, Semester FROM Classes) AS CLASS 
			ON Assignment.AsgID = CLASS.AsgID
		INNER JOIN 
			Assess 
			ON Assess.ClassID = CLASS.ClassID
		INNER JOIN
			(SELECT AssID, CouID, CatID,GuideID FROM [Assessment_System]) AS [AS]
			ON Assess.AssID = [AS].AssID
		INNER JOIN 
			Categories
			ON [AS].CatID = Categories.CatID
		INNER JOIN 
			Guide
			on [AS].GuideID = Guide.GuideID
ORDER BY LEC.LecID, Major, Semester, CatID

```
## Image Result
##   Query 6
``` sql
--  A QUERY THAT USES A SUB-QUERY IN THE WHERE CLAUSE --

SELECT J.StudentID, J.GrID, Enroll.ClassID, CONCAT([Last_Name], ' ', [First_Name]) AS Lecture, CouID, CatID, Score, [Date]  
FROM
	JOIN_Groups_Students AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
				INNER JOIN View_Assess_AssessSystem AS VAA ON Enroll.ClassID = VAA.ClassID AND Enroll.GrID = VAA.GrID
				INNER JOIN Assignment ON Assignment.AsgID = VAA.AsgID 
				INNER JOIN Lectures ON Assignment.LecID = Lectures.LecID
				INNER JOIN Grade ON Grade.StudentID = J.StudentID AND Grade.AssID = VAA.AssID 
WHERE J.StudentID = (SELECT StudentID FROM Students WHERE [First_Name] = 'A' AND [Last_Name] = N'Nguyễn Văn')

```
## Image Result
##   Query 7
``` sql
--  A QUERY THAT USES PARTIAL MATCHING IN THE WHERE CLAUSE --

SELECT J.StudentID, CONCAT([Last_Name], ' ', [First_Name]) AS [Student Name], ClassID, Average, [Status]
FROM 
	Students INNER JOIN JOIN_Groups_Students AS J ON Students.StudentID = J.StudentID 
			 INNER JOIN [View_Students_Classes] AS V ON J.StudentID = V.StudentID
WHERE ClassID LIKE 'FA21%'

```
## Image Result
##   Query 8
``` sql
-- A QUERY THAT USES A SELF-JOIN --

SELECT Lectures.LecID, Lectures.Email, CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, CONCAT(LEADER.[Last_Name], ' ', LEADER.[First_Name]) AS [Leader] 
FROM Lectures LEFT JOIN Lectures AS [LEADER] ON Lectures.Report = LEADER.LecID
```
## Image Result
##   Query 9
``` sql
SELECT Lectures.LecID, Lectures.Email, CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, Report, Major, Courses.[CName], Semester, Students.StudentID, CONCAT(Students.[Last_Name], ' ', Students.[First_Name]) AS [Student Name], Students.Email, Students.Gender
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN Courses ON Courses.CouID = Assignment.Major
			  INNER JOIN Classes ON Classes.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			  INNER JOIN JOIN_Groups_Students ON JOIN_Groups_Students.GrID = Enroll.GrID
			  INNER JOIN Students ON Students.StudentID = JOIN_Groups_Students.StudentID
ORDER BY Lectures.LecID, Semester, Students.StudentID, Major
```
## Image Result
##   Query 10
``` sql
SELECT Lectures.LecID, Lectures.Email AS [LecID Email], CONCAT(Lectures.[Last_Name], ' ', Lectures.[First_Name]) AS Lecture, J.GrID, CouID, J.StudentID, CONCAT(Students.[Last_Name], ' ', Students.[First_Name]) AS [Student Name], CatID, Score, [Date]
FROM
	Lectures INNER JOIN Assignment ON Lectures.LecID = Assignment.LecID
			  INNER JOIN View_Assess_AssessSystem AS VAA ON VAA.AsgID = Assignment.AsgID
			  INNER JOIN Enroll ON Enroll.ClassID = VAA.ClassID
			  INNER JOIN JOIN_Groups_Students AS J ON J.GrID = Enroll.GrID
			  INNER JOIN Students ON Students.StudentID = J.StudentID
			  INNER JOIN Grade ON J.StudentID = Grade.StudentID AND VAA.AssID = Grade.AssID
```
## Image Result
###     Image + Results

--------------------------------------------------------------------------
# Tổng Kết Và Tài Liệu 
    Như vậy, Cơ bản cở sở dữ liệu đánh giá và truy xuất thông tin quản lí điểm sinh viên đã được hoàn thành. Cách xây dựng cơ sở dữ liệu này đã đáp ứng được các yêu cầu như: thêm, sửa, xóa, truy xuất và dễ dàng theo dõi được hệ thống điểm của từng sinh viên, lớp học và đảm bảo tính chính xác trong từng thời gian chỉnh sửa. Tuy vậy, cơ sở dữ liệu này vẫn chưa được đánh giá và trình bày một cách khoa học để có thể được kế thừa và phát triển ở các lĩnh vực khác. Cảm ơn mọi người đã theo dõi và lắng nghe tiến trình xây dựng cơ sở dữ liệu " Quản Lí Điểm FLM ". 
                                                                Xin trân thành cảm ơn.
                                                                    Người phát triển
                                                                 Nguyễn Văn Đức - HE160307
                                                                        IA1604
## File < Link Files > SQL Của Database
## FIle < Link Files > SQL Queries Requirements

