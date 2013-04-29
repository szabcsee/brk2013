# . . .
Program.delete_all
Program.create(id: 1,
  program_name_hu: 'Lama Ole tanitas',
  program_name_en: 'Lama Ole Nydahl teaching',
  price_full: 3500,
  price_member: 3500,
  price_discount: 1800,
  exchange_rate: 280)
# . . .
Program.create(id: 2,
  program_name_hu: 'Lama Sherab Gyaltsen Rinpoche tanitas',
  program_name_en: 'Lama Sherab Gyaltsen Rinpoche teaching',
  price_full: '3500',
  price_member: '3500',
  price_discount: '1800',
  exchange_rate: '280')
# . . .
Program.create(id: 3,
  program_name_hu: 'Beavatas',
  program_name_en: 'Empowerment',
  price_full: 7000,
  price_member: 7000,
  price_discount: 3500,
  exchange_rate: 280)


Person.delete_all
# . . . Person_id 1
Person.create(id: 1,
  first_name: "Louise",
  second_name: 'Jenky',
  home_country: 'USA',
  phone_number: '+1 212-206-9922',
  email_address: 'example@googlemail.com',
  price_method: 'bank transfer',
  price_category: 'full',
  payment: 'EUR',
  child_care: 'no',
  child_age: 0,
  child_language: '',
  reference_number: '1')
# . . . Person_id 2
Person.create(id: 2, 
  first_name: "Jurgen",
  second_name: 'Washenmop',
  home_country: 'Germany',
  phone_number: '+1 212-206-9922',
  email_address: 'example@googlemail.com',
  price_method: 'at the course',
  price_category: 'full',
  payment: 'EUR',
  child_care: 'yes',
  child_age: 12,
  child_language: 'German',
  reference_number: '2',
  registration_id: 2)
# . . .

Registration.delete_all
# . . . Person_id 1
Registration.create(registration_date: '2013-07-09',
  person_id: 1,
  program_id: 1)
Registration.create(registration_date: '2013-07-09',
  person_id: 1,
  program_id: 2)
Registration.create(registration_date: '2013-07-09',
  person_id: 1,
  program_id: 3)
  
Registration.create(registration_date: '2013-07-10',
  person_id: 2,
  program_id: 1)
Registration.create(registration_date: '2013-07-10',
  person_id: 2,
  program_id: 2)
Registration.create(registration_date: '2013-07-10',
  person_id: 2,
  program_id: 3)
Registration.create(registration_date: '2013-07-09',
  person_id: 2,
  program_id: 1)
Registration.create(registration_date: '2013-07-09',
  person_id: 2,
  program_id: 2)
Registration.create(registration_date: '2013-07-09',
  person_id: 2,
  program_id: 3)
Registration.create(registration_date: '2013-07-10',
  person_id: 2,
  program_id: 1)
Registration.create(registration_date: '2013-07-10',
  person_id: 2,
  program_id: 2)
Registration.create(registration_date: '2013-07-10',
  person_id: 2,
  program_id: 3)
  
# . . .
Meal.delete_all
# person_id 1: food for every day on the course, but only dinner and vega
Meal.create(food_type: 'vega',
  meal_date: '2013-07-09',
  meal_type: 1,
  person_id: 1)
Meal.create(food_type: 'vega',
  meal_date: '2013-07-10',
  meal_type: 1,
  person_id: 1)
Meal.create(food_type: 'vega',
  meal_date: '2013-07-11',
  meal_type: 1,
  person_id: 1)
Meal.create(food_type: 'vega',
  meal_date: '2013-07-12',
  meal_type: 1,
  person_id: 1)
Meal.create(food_type: 'vega',
  meal_date: '2013-07-13',
  meal_type: 1,
  person_id: 1)
Meal.create(food_type: 'vega',
  meal_date: '2013-07-14',
  meal_type: 1,
  person_id: 1)
# person_id 2: food for every day on the course, but 3 times and non-vega
Meal.create(food_type: 'non-vega',
  meal_date: '2013-07-09',
  meal_type: 3,
  person_id: 2)
Meal.create(food_type: 'non-vega',
  meal_date: '2013-07-10',
  meal_type: 3,
  person_id: 2)
Meal.create(food_type: 'non-vega',
  meal_date: '2013-07-11',
  meal_type: 3,
  person_id: 2)
Meal.create(food_type: 'non-vega',
  meal_date: '2013-07-12',
  meal_type: 3,
  person_id: 2)
Meal.create(food_type: 'non-vega',
  meal_date: '2013-07-13',
  meal_type: 3,
  person_id: 2)
Meal.create(food_type: 'non-vega',
  meal_date: '2013-07-14',
  meal_type: 3,
  person_id: 2)
  