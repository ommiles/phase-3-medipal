ActivitiesPatient.destroy_all
Activity.destroy_all
AppointmentsPrescription.destroy_all
Appointment.destroy_all
Caregiver.destroy_all
CaregiversPatient.destroy_all
Patient.destroy_all
Pharmacy.destroy_all
Physician.destroy_all
Prescription.destroy_all

ap = ActivitiesPatient.create(id: 1, activity_id: 1, patient_id: 1, activity_points: 3)
act = Activity.create(id: 1, activity_name: "Yoga", activity_frequency: 2)
appt_rx = AppointmentsPrescription.create(id: 1, appointment_id: 1, prescription_id: 1)
appt = Appointment.create(id: 1, physician_id: 1, user_id: 1, appointment_date: "Mon, 17 Dec 2012 00:00:00 +0000")
caregivr = Caregiver.create(id: 1, caregiver_name: "Tommy the Caregiver")
care_pat = CaregiversPatient.create(id: 1, caregiver_id: 1, patient_id: 1)
patient = Patient.create(id: 1, first_name: "Test First", last_name: "Test Last", age: 30, street_address: "123 Test Address Road", city: "Long Beach", state: "California", postcode: 90210)
pharm = Pharmacy.create(id: 1, name: "CVS", pharmacy_phone_number: 5647652893, street_address: "241 7th Ave.", city: "Long Beach", state: "California", postcode: 95346)
phys = Physician.create(id: 1, first_name: "Bob", last_name: "Gorks", specialty: "Oncology", physician_phone_number: 12345678901, street_address: "233 Some Street Ave.", city: "Long Beach", state: "California", postcode: 90854)
rx = Prescription.create(id: 1, brand_name: "Brand Test", technical_name: "Technical Name Test", purpose: "upset stomach", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)

Prescription.create(brand_name: "Lorcet", technical_name: "Hydrocodone & Acetaminophen", purpose: "pain relief", dosage: "5mg/300mg", dosage_times: "As Directed by Doctor", size: "15 mm", shape: "capsule-shape",  color: "pink", side_effects: "drowsiness, relaxed and calm feeling, and sleepiness", refill_number: 0112536)
Prescription.create(brand_name: "Norco", technical_name: "Hydrocodone & Acetaminophen", purpose: "pain relief", dosage: "5mg/300mg", dosage_times: "As Directed by Doctor", size: "15 mm", shape: "capsule-shape",  color: "pink", side_effects: "drowsiness, relaxed and calm feeling, and sleepiness", refill_number: 0112536)
Prescription.create(brand_name: "Vicodin", technical_name: "Hydrocodone & Acetaminophen", purpose: "pain relief", dosage: "5mg/300mg", dosage_times: "As Directed by Doctor", size: "15 mm", shape: "capsule-shape",  color: "pink", side_effects: "drowsiness, relaxed and calm feeling, and sleepiness", refill_number: 0112536)
Prescription.create(brand_name: "Zocor", technical_name: "Simvastin", purpose: "cholesterol", dosage: "10 mg", dosage_times: "Bedtime", size: "55 mm", shape: "u-shape",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Qbrelis", technical_name: "Lisinopril", purpose: "hypertension", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Zestril", technical_name: "Lisinopril", purpose: "hypertension", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Prinivil", technical_name: "Lisinopril", purpose: "hypertension", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Synthroid", technical_name: "Levothyroxine", purpose: "hypothyroidism", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Norvasc", technical_name: "Amlodipine Besylate", purpose: "blood pressure", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Prilosec OTC", technical_name: "Omeprazole", purpose: "acid reflux & frequent heartburn", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Zegerid", technical_name: "Omeprazole", purpose: "acid reflux & frequent heartburn", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Zegerid OTC", technical_name: "Omeprazole", purpose: "acid reflux & frequent heartburn", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "AzaSite", technical_name: "Azithromycin", purpose: "bacterial infections", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Zmax", technical_name: "Azithromycin", purpose: "bacterial infections", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Zithromax", technical_name: "Azithromycin", purpose: "bacterial infections", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Glumetza", technical_name: "Metformin", purpose: "diabetes", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Fortamet", technical_name: "Metformin", purpose: "diabetes", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Glucophage", technical_name: "Metformin", purpose: "diabetes", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
Prescription.create(brand_name: "Microzide", technical_name: "Hydrochlorothiazide", purpose: "hypertension", dosage: "125 mg", dosage_times: "Morning", size: ".5 mm", shape: "oval",  color: "blue", side_effects: "whatever side effects", refill_number: 0112536)
