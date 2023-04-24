require 'rails_helper'

describe "doctors show page" do
  before :each do
    @doctor1 = Doctor.create!(name: "Meredith Grey", specialty: "General Surgery", university: "Harvard University")
    @doctor2 = Doctor.create!(name: "Alex Karev", specialty: "Pediatric Surgery", university: "Johns Hopkins University")
    @doctor3 = Doctor.create!(name: "Miranda Bailey", specialty: "General Surgery", university: "Stanford University")
    @doctor4 = Doctor.create!(name: "Derek McDreamy Shepherd", specialty: "Attending Surgeon", university: "University of Pennsylvania")

    @hospital1 = Hospital.create!(name: "Grey Sloan Memorial Hospital")
    @hospital2 = Hospital.create!(name: "Seaside Health & Wellness Center")

    @patient1 = Patient.create!(name: "Katie Bryce", age: "24")
    @patient2 = Patient.create!(name: "Denny Duquette", age: "39")
    @patient3 = Patient.create!(name: "Rebecca Pope", age: "32")
    @patient4 = Patient.create!(name: "Zola Shepherd", age: "2")
  end
 
  it 'shows the fields within doctor table' do
    visit doctor_path(@doctor1)

    expect(page).to have_content(@doctor1.name)
    expect(page).to have_content(@doctor1.specialty)
    expect(page).to have_content(@doctor1.university)
    expect(page).to have_no_content(@doctor2.name)

  end

  it 'shows name of hospital where doctor works' do
    visit doctor_path(@doctor1)

    expect(page).to have_content(@hospital1.name)
    expect(page).to have_no_content(@hospital2.name)

  end

  it 'shows names of patients doctor has' do
    visit doctor_path(@doctor1)

    expect(page).to have_content(@patient1.name)
    expect(page).to have_content(@patient2.name)
    expect(page).to have_no_content(@patient3.name)
  end
  
end