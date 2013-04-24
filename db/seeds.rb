People.delete_all

People.create(first_name: 'Szabolcs',
  second_name: 'Examplename',
  home_country: 'Hungary',
  phone_number: '+36202211111',
  email_address: 'example@gmail.com',
  price_method: 'bank transfer',
  price_category: 'HUF',
  payment: 'reduced',
  child_care: 'no',
  child_age: 0,
  child_language: '',
  reference_number: 0001
)

People.create(first_name: 'Ludwig',
  second_name: 'Mysecondname',
  home_country: 'Germany',
  phone_number: '+49 11 2222',
  email_address: 'myexample@gmail.com',
  price_method: 'cash',
  price_category: 'EUR',
  payment: 'normal',
  child_care: 'yes',
  child_age: 3,
  child_language: 'German',
  reference_number: 0002
)

Program.delete_all

Program.create(program_name_hu: 'Lama Ole tanitas',
  program_name_en: 'Lama Ole Nydahl teaching',
  price_full: 3500,
  price_member: 3500,
  price_discount: 1800,
  exchange_rate: 280
)

Program.create(program_name_hu: 'Lama Sherab Gyaltsen Rinpoche tanitas',
  program_name_en: 'Lama Sherab Gyaltsen Rinpoche teaching',
  price_full: '3500',
  price_member: '3500',
  price_discount: '1800',
  exchange_rate: '280'
)

Program.create(program_name_hu: 'Beavatas',
  program_name_en: 'Empowerment',
  price_full: 7000,
  price_member: 7000,
  price_discount: 3500,
  exchange_rate: 280
)

