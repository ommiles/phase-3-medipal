AppointmentsPrescription.destroy_all
CaregiversPatient.destroy_all
ActivitiesPatient.destroy_all
Appointment.destroy_all
Activity.destroy_all
Caregiver.destroy_all
Patient.destroy_all
Pharmacy.destroy_all
Physician.destroy_all
Prescription.destroy_all

california_cities = ["San Jose", "Sacramento", "Long Beach", "Berkeley", "San Francisco", "Compton"]

5.times do 
    Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(65...110), street_address: "#{Faker::Address.street_address} #{Faker::Address.street_suffix}", city: california_cities.sample, state: "California", postcode: Faker::Address.zip)
end

specialty = ["Cardiology", "Nephrology", "Oncology", "Rheumatology", "Psychiatry", "Rheumatology", "Geriatrics"]

5.times do
    Physician.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: specialty.sample, physician_phone_number: Faker::PhoneNumber.cell_phone_in_e164, street_address: "#{Faker::Address.street_address} #{Faker::Address.street_suffix}", city: california_cities.sample, state: "California", postcode: Faker::Address.zip)
end

10.times do
    Appointment.create(physician_id: Physician.ids.sample, patient_id: Patient.ids.sample, appointment_date: Faker::Date.between(from: '2021-06-15', to: '2021-07-15'))
end

15.times do
    Pharmacy.create(name: "CVS", pharmacy_phone_number: Faker::PhoneNumber.cell_phone_in_e164, street_address: "#{Faker::Address.street_address} #{Faker::Address.street_suffix}", city: california_cities.sample, state: "California", postcode: Faker::Address.zip)
    Pharmacy.create(name: "Rite-Aid", pharmacy_phone_number: Faker::PhoneNumber.cell_phone_in_e164, street_address: "#{Faker::Address.street_address} #{Faker::Address.street_suffix}", city: california_cities.sample, state: "California", postcode: Faker::Address.zip)
    Pharmacy.create(name: "Walgreens", pharmacy_phone_number: Faker::PhoneNumber.cell_phone_in_e164, street_address: "#{Faker::Address.street_address} #{Faker::Address.street_suffix}", city: california_cities.sample, state: "California", postcode: Faker::Address.zip)
end

shapes = ["round", "square", "rectangle", "capsule", "almond", "pentagon", "lozenge", "diamond", "triangle", "core rod", "heart"]
dosage_times = ["Morning", "Afternoon", "Evening", "Bedtime", "With Meals"]
color = ["brick red", "pink", "white", "yellow", "blue", "grey", "yellow", "green"]

Prescription.create(brand_name: "Lorcet", technical_name: "Hydrocodone & Acetaminophen", purpose: "pain relief", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "As Directed by Doctor", size: "15 mm", shape: "capsule-shape",  color: "pink", side_effects: "drowsiness, relaxed and calm feeling, and sleepiness", refill_number: 0112536)
Prescription.create(brand_name: "Norco", technical_name: "Hydrocodone & Acetaminophen", purpose: "pain relief", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "As Directed by Doctor", size: "15 mm", shape: "capsule-shape",  color: "pink", side_effects: "drowsiness, relaxed and calm feeling, and sleepiness", refill_number: 0112536)
Prescription.create(brand_name: "Vicodin", technical_name: "Hydrocodone & Acetaminophen", purpose: "pain relief", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "As Directed by Doctor", size: "15 mm", shape: "capsule-shape",  color: "pink", side_effects: "drowsiness, relaxed and calm feeling, and sleepiness", refill_number: 0112536)
Prescription.create(brand_name: "Zocor", technical_name: "Simvastin", purpose: "cholesterol", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "55 mm", shape: "u-shape",  color: color.sample, side_effects: "muscle soreness or tiredness", refill_number: 0112536)
Prescription.create(brand_name: "Qbrelis", technical_name: "Lisinopril", purpose: "hypertension", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "#{rand(1...15).round(-1, half: :up)}" + " mm", shape: "diamond",  color: color.sample, side_effects: "cough, diarrhea or constipation, dizziness or lightheadedness, erection problems, feeling nervous", refill_number: 0112536)
Prescription.create(brand_name: "Zestril", technical_name: "Lisinopril", purpose: "hypertension", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "#{rand(1...15).round(-1, half: :up)}" + " mm", shape: shapes.sample,  color: color.sample, side_effects: "cough, diarrhea or constipation, dizziness or lightheadedness, erection problems, feeling nervous", refill_number: 0112536)
Prescription.create(brand_name: "Prinivil", technical_name: "Lisinopril", purpose: "hypertension", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "#{rand(1...15).round(-1, half: :up)}" + " mm", shape: "triangle",  color: color.sample, side_effects: "cough, diarrhea or constipation, dizziness or lightheadedness, erection problems, feeling nervous", refill_number: 0112536)
Prescription.create(brand_name: "Synthroid", technical_name: "Levothyroxine", purpose: "hypothyroidism", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "Afternoon", size: "#{rand(1...15).round(-1, half: :up)}" + " mm", shape: shapes.sample,  color: color.sample, side_effects: "muscle weakness, headache, leg cramps, nervousness, trouble sleeping, diarrhea, skin rash, partial hair loss", refill_number: 0112536)
Prescription.create(brand_name: "Norvasc", technical_name: "Amlodipine Besylate", purpose: "blood pressure", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "#{rand(1...15).round(-1, half: :up)}" + " mm", shape: shapes.sample,  color: color.sample, side_effects: "anemia, constipation, dizziness, lightheadedness, or weakness when standing up", refill_number: 0112536)
Prescription.create(brand_name: "Prilosec OTC", technical_name: "Omeprazole", purpose: "acid reflux & frequent heartburn", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "With Meals", size: "5 mm", shape: shapes.sample,  color: color.sample, side_effects: "headache, abdominal pain, diarrhea, nausea, vomiting, flatulence", refill_number: 0112536)
Prescription.create(brand_name: "Zegerid", technical_name: "Omeprazole", purpose: "acid reflux & frequent heartburn", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "With Meals", size: "5 mm", shape: shapes.sample,  color: color.sample, side_effects: "headache, abdominal pain, diarrhea, nausea, vomiting, flatulence", refill_number: 0112536)
Prescription.create(brand_name: "Zegerid OTC", technical_name: "Omeprazole", purpose: "acid reflux & frequent heartburn", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "With Meals", size: "#{rand(1...15).round(-1, half: :up)}" + " mm", shape: shapes.sample,  color: color.sample, side_effects: "headache, abdominal pain, diarrhea, nausea, vomiting, flatulence", refill_number: 0112536)
Prescription.create(brand_name: "AzaSite", technical_name: "Azithromycin", purpose: "bacterial infections", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "15 mm", shape: shapes.sample,  color: color.sample, side_effects: "stomach upset, diarrhea, loose stools, nausea, vomiting, abdominal pain", refill_number: 0112536)
Prescription.create(brand_name: "Zmax", technical_name: "Azithromycin", purpose: "bacterial infections", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "15 mm", shape: shapes.sample,  color: color.sample, side_effects: "stomach upset, diarrhea, loose stools, nausea, vomiting, abdominal pain", refill_number: 0112536)
Prescription.create(brand_name: "Zithromax", technical_name: "Azithromycin", purpose: "bacterial infections", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "#{rand(1...15).round(-1, half: :up)}" + " mm", shape: shapes.sample,  color: color.sample, side_effects: "stomach upset, diarrhea, loose stools, nausea, vomiting, abdominal pain", refill_number: 0112536)
Prescription.create(brand_name: "Glumetza", technical_name: "Metformin", purpose: "diabetes", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "With Meals", size: "5 mm", shape: shapes.sample,  color: color.sample, side_effects: "heartburn, stomach pain, nausea, vomiting bloating", refill_number: 0112536)
Prescription.create(brand_name: "Fortamet", technical_name: "Metformin", purpose: "diabetes", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "With Meals", size: "7 mm", shape: shapes.sample,  color: color.sample, side_effects: "heartburn, stomach pain, nausea, vomiting bloating", refill_number: 0112536)
Prescription.create(brand_name: "Glucophage", technical_name: "Metformin", purpose: "diabetes", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: "With Meals", size: "9 mm", shape: shapes.sample,  color: color.sample, side_effects: "heartburn, stomach pain, nausea, vomiting bloating", refill_number: 0112536)
Prescription.create(brand_name: "Microzide", technical_name: "Hydrochlorothiazide", purpose: "hypertension", dosage: "#{rand(5...125).round(-1, half: :up)}" + " mg", dosage_times: dosage_times.sample, size: "#{rand(1...15).round(-1, half: :up)}" + " mm", shape: shapes.sample,  color: color.sample, side_effects: "cough, diarrhea or constipation, dizziness or lightheadedness, erection problems, feeling nervous", refill_number: 0112536)

15.times do
    AppointmentsPrescription.create(appointment_id: Appointment.ids.sample, prescription_id: Prescription.ids.sample)
end

10.times do
    Caregiver.create(caregiver_name: Faker::Name.name)
end

activities = ["Stretch", "Walk", "Tai Chi", "Aerobics", "Resistance Bands", "Meditation", "Therapy", "Sleep", "Swimming", "Animal Therapy", "Balance Activities", "Strength Training", "Silver Sneakers Dance Class"]

10.times do
    Activity.create(activity_name: activities.sample, activity_frequency: rand(1...10))
end

5.times do
    CaregiversPatient.create(caregiver_id: Caregiver.ids.sample, patient_id: Patient.ids.sample)
end

10.times do
    ActivitiesPatient.create(activity_id: Activity.ids.sample, patient_id: Patient.ids.sample, activity_points: rand(1...6))
end