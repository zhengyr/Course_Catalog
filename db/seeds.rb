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

subject_list.each do |s|
  Subject.create(name: s["name"],
                 abbreviation: s["abbreviation"],
                 subject_id: s["id"].delete("-").to_i)
end

instructor_list.each do |i|
  Instructor.create(first_name: i["first"],
                    middle_name: i["middle"],
                    last_name: i["last"],
                    email: i["email"],
                    instructor_id: i["id"].to_i)
end

course_list.each do |c|
  current = Course.create(name: c["name"],
                code: c["code"],
                credits: c["credits"].to_i,
                description: c["description"],
                requirements: c["requirements"].to_s)
  if not c["subjects"].nil?
    c["subjects"].each do |s|
      sub_id_ori = s["id"].delete("-").to_i
      sub = Subject.find_by subject_id: sub_id_ori
      if not sub.nil?
        SubjectCourse.create(course_name: current["name"],
                            course_id: current["id"],
                            subject_id: sub["id"],
                            subject_name: sub["name"])
      end
    end
  end
end
