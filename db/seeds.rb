Program.delete_all
# . . .
Program.create(id: 1,
  program_name_hu: 'Utazotanito (Tommy B.) - tanitas napkozben',
  program_name_en: 'Traveling teacher (Tommy B.) - teaching during the day',
  price_full: 1200,
  price_full_eur: 5,
  price_discount_eur: 2,
  price_discount: 600,
  exchange_rate: 280,
  event_date: DateTime.strptime("07/09/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 2,
  program_name_hu: 'Lama Ole Nydahl - tanitas este',
  program_name_en: 'Lama Ole Nydahl - evening lecture',
  price_full: 3500,
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: 1800,
  exchange_rate: 280,
  event_date: DateTime.strptime("07/09/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 3,
  program_name_hu: 'Utazotanito (Pedro) - tanitas napkozben',
  program_name_en: 'Travelling teacher (Pedro) - teaching during the day',
  price_full: 1200,
  price_full_eur: 5,
  price_discount_eur: 2,
  price_discount: 600,
  exchange_rate: 280,
  event_date: DateTime.strptime("07/10/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 4,
  program_name_hu: 'Lama Ole Nydahl - tanitas este',
  program_name_en: 'Lama Ole Nydahl - evening lecture',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("07/10/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 5,
  program_name_hu: 'Sherab Gyaltsen Rinpoche - A kagyu vonal es a Karmapak',
  program_name_en: 'Lama Sherab Gyaltsen Rinpoche - Teachings about the Kagyu Lineage, especially Karmapas',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("07/11/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 6,
  program_name_hu: 'Lama Ole Nydahl - tanitas este',
  program_name_en: 'Lama Ole Nydahl - evening lecture',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("07/11/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 7,
  program_name_hu: 'Sherab Gyaltsen Rinpoche - A menedekfa tanitoi',
  program_name_en: 'Lama Sherab Gyaltsen Rinpoche - The Teachers in the Refuge Tree',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("07/12/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 8,
  program_name_hu: 'Lama Ole Nydahl - tanitas este',
  program_name_en: 'Lama Ole Nydahl - evening lecture',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("07/12/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 9,
  program_name_hu: 'Sherab Gyaltsen Rinpoche - Szobeli atadas (lungok)',
  program_name_en: 'Lama Sherab Gyaltsen Rinpoche - Oral tranmission (lungs)',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("07/13/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 10,
  program_name_hu: 'Lama Ole Nydahl - tanitas este',
  program_name_en: 'Lama Ole Nydahl - evening lecture',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("07/13/2013", "%m/%d/%Y")
  )
# . . .
Program.create(id: 11,
  program_name_hu: 'Serab Gyalcen rinpocse - Karma Paksi (2. Karmapa)-beavatas',
  program_name_en: 'Sherab Gyaltsen Rinpoche - Karmapa Pakshi (2nd Karmapa) empowerment in the morning',
  price_full: 7000,
  price_full_eur: 25,
  price_discount_eur: 12.5,
  price_discount: 3500,
  exchange_rate: 280,
  event_date: DateTime.strptime("09/14/2009", "%m/%d/%Y")
  )
# . . .

=begin
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
=end