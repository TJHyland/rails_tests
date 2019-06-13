FactoryBot.define do
  factory :student, class: Student do
    name {"Zachary Coolboy"}
    student_number {1337}
    gpa {1.9}
    school
  end
end