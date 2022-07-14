﻿# DBI_202_sp22
*** Phân Tích Quản Lý Điểm FLM ***
# Xác Định Và Tổng Hợp Các Dữ Liệu 
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
 Duration time,
 Weigh    Float,
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
##   Đưa Dữ Liệu Vào DataBase
###     Code sql
###     Image + Results
--------------------------------------------------------------------------
# Kiểm tra, Truy Xuất Dữ Liệu Từ Database
--------------------------------------------------------------------------
# Query Requirements And Results
##   Query1 :
###     Code sql
###     Image + Results

##   Query2 :
###     Code sql
###     Image + Results


##   Query3 :
###     Code sql
###     Image + Results

--------------------------------------------------------------------------
# Tổng Kết Và Tài Liệu 
## ....
## File < Link Files > SQL Của Database
## FIle < Link Files > SQL Queries Requirements

