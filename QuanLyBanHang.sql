USE QuanLySinhVien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT *
FROM SUBJECT
WHERE credit = (select max(credit) from subject);
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select s.subid,s.subname,max(mark.mark) as "Highest Mark"
from subject s join mark on s.subid = mark.SubId
group by s.SubName;
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.studentid, s.studentname, s.address, s.phone, avg(mark.Mark) AvgMark
from student s join mark on s.StudentId = mark.StudentId
group by s.StudentName
order by (mark.mark) DESC;