require 'rails_helper'

RSpec.describe Student, type: :model do
  let(:student) { FactoryBot.create(:student)}

  describe "attributes" do
    it 'has a name' do
      expect(student.name).to eq(student.name)
    end
    
    it 'has a student number' do
      expect(student.student_number).to eq(student.student_number)
    end

    it 'has a gpa' do
      expect(student.gpa).to eq(student.gpa)
    end

    it 'has a school id' do
      expect(student.school_id).to eq(student.school_id)
    end

  end

  describe "validations" do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:student_number)}
    it { should validate_presence_of(:gpa)}

    # one test for student_id and one test for gpa
    describe "Numericality" do
      it { should validate_numericality_of(:student_number)}
      it { should validate_numericality_of(:gpa)}
    end

  it "has a student number lower bound" do
    should validate_numericality_of(:student_number).is_greater_than_or_equal_to(0)
  end

  it "has a student number upper bound" do
    should validate_numericality_of(:student_number).is_less_than_or_equal_to(10000)
  end

  end

  describe "association" do
  it { should belong_to(:school)}
  end

  describe "uniqueness" do
    FactoryBot.create(:student)
    subject {FactoryBot.create(:student)}
    it { should validate_uniqueness_of(:name) }
  end

end 