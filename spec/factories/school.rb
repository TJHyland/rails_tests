FactoryBot.define do
  factory :school, class: School do
    name {"Cool Kid High"}
    address {"1234 Fingerless Gloves Road"}
    principal {"Hulk Hogan"}
    capacity {9001}
    private_school {true}
  end
end