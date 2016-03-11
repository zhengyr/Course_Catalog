#This is the seed file where we get all the information from JSON file and then process it to put it in
#our database

Course.delete_all
Instructor.delete_all
Subject.delete_all
require 'json'
file = open('course.json')
f = file.read
course_list = JSON.parse(f)
file = open('instructor.json')
f = file.read
instructor_list = JSON.parse(f)
file = open('subject.json')
f = file.read
subject_list = JSON.parse(f)

course_list.each do |c|
  Course.create(name: c["name"],
                code: c["code"],
                subject_id: c["subjects"][0]["id"],
                subject_segment: c["subjects"][0]["segment"].to_i,
                credits: c["credits"].to_i,
                description: c["description"],
                requirements: c["requirements"].to_s)
end

instructor_list.each do |i|
  Instructor.create(first_name: i["first"],
                    middle_name: i["middle"],
                    last_name: i["last"],
                    email: i["email"],
                    instructor_id: i["id"].to_i)
end

subject_list.each do |s|
  Subject.create(name: s["name"],
                 abbreviation: s["abbreviation"],
                 subject_id: s["id"],)
end
