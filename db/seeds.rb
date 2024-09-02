# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#Creating the companies
akhtaboot = Company.create!(name: "Akhtaboot")
zenhr = Company.create!(name: "ZenHR")

#Creating the branches
amman_branch = zenhr.branches.create!(name: "Amman Branch")
dubai_branch = zenhr.branches.create!(name: "Dubai Branch")

#Creating 3 employees for Amman Branch
employee_1_amman = amman.branch.employees.create!(name: "Fadi Nasser", email: "nassar+1@zenhr.com", hire_date: "2022-01-01", employment_number: "1")
employee_2_amman = amman.branch.employees.create!(name: "Malik Nimri", email: "nassar+2@zenhr.com", hire_date: "2022-01-01", employment_number: "2")
employee_terminated_amman = amman.branch.employees.create!(name: "Ramzi Haddad", email: "nassar+3@zenhr.com", hire_date: "2022-01-01", employment_number: "3")

#Creating 3 employees for Dubai Branch
employee_1_dubai = dubai.branch.employees.create!(name: "Hunny Sabbagh", email: "nassar+4@zenhr.com", hire_date: "2022-01-01", employment_number: "4")
employee_2_dubai = dubai.branch.employees.create!(name: "Qusai Andrawes", email: "nassar+5@zenhr.com", hire_date: "2022-01-01", employment_number: "5")
employee_2_dubai = dubai.branch.employees.create!(name: "Saif Ammari", email: "nassar+6@zenhr.com", hire_date: "2022-01-01", employment_number: "6")

#Terminate employee: Employee Terminated Amman as of: 31-Dec-2024
Termination.create!(date: "2024-31-12" , employee: employee_terminated_amman)

#Creating employee_1 with 2 financial packages
employee_1_amman.financial_packages.create!(from_date "2023-01-01", to_date: "2023-12-31", amount: 500)
employee_1_amman.financial_packages.create!(from_date "01-01-2024", to_date: "2024-12-31" , amount: 600)

#Creating an employee_2 with 2 financial packages
employee_2_amman.financial_packages.create!(from_date "2023-01-01", to_date: "2023-12-31", amount: 500)
employee_2_amman.financial_packages.create!(from_date "2024-01-01", to_date: "2024-12-31", amount:600)

#Creating two rooms for amman branch
amman_meeting_room_1 = amman.branch.rooms.create!(name: "Amman Meeting Room 1")
amman_meeting_room_2 = amman.branch.rooms.create!(name: "Amman Meeting Room 2")

#Room Placement
employee_1_amman.rooms << amman_meeting_room_1
employee_2_amman.rooms << (amman_meeting_room_1, amman_meeting_room_2)









