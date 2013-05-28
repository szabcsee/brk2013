# encoding: UTF-8
Program.delete_all
# . . .
Program.create(id: 1,
  program_name_hu: 'Tommy Boggs elöadása',
  program_name_en: 'Tommy Boggs travelling teacher',
  price_full: 1200,
  price_full_eur: 5,
  price_discount_eur: 2,
  price_discount: 600,
  exchange_rate: 280,
  event_date: DateTime.strptime("2013-07-09 15:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 2,
  program_name_hu: 'Láma Ole Nydahl tanítása',
  program_name_en: 'Lama Ole Nydahl\'s lecture',
  price_full: 3500,
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: 1800,
  exchange_rate: 280,
  event_date: DateTime.strptime("2013-07-09 20:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 3,
  program_name_hu: 'Pedro Gomez elöadása',
  program_name_en: 'Pedro Gomez travelling teacher',
  price_full: 1200,
  price_full_eur: 5,
  price_discount_eur: 2,
  price_discount: 600,
  exchange_rate: 280,
  event_date: DateTime.strptime("2013-07-10 15:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 4,
program_name_hu: 'Láma Ole Nydahl tanítása',
  program_name_en: 'Lama Ole Nydahl\'s lecture',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("2013-07-10 20:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 5,
  program_name_hu: 'Serab Gyalcen rinpocse - A kagyü vonal és a Karmapák',
  program_name_en: 'Sherab Gyaltsen Rinpoche - Teachings about the Kagyu Lineage, especially Karmapas',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("2013-07-11 15:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 6,
  program_name_hu: 'Láma Ole Nydahl tanítása',
  program_name_en: 'Lama Ole Nydahl\'s lecture',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("2013-07-11 20:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 7,
  program_name_hu: 'Serab Gyalcen rinpocse - Tanítók a menedékfán',
  program_name_en: 'Sherab Gyaltsen Rinpoche - The Teachers in the Refuge Tree',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("2013-07-12 15:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 8,
  program_name_hu: 'Láma Ole Nydahl tanítása (20pm)',
  program_name_en: 'Lama Ole Nydahl\'s lecture',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("2013-07-12 20:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 9,
  program_name_hu: 'Serab Gyalcen rinpocse - Szóbeli átadas (lungok)',
  program_name_en: 'Sherab Gyaltsen Rinpoche - Oral tranmission (lungs)',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("2013-07-13 15:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 10,
  program_name_hu: 'Láma Ole Nydahl tanítása',
  program_name_en: 'Lama Ole Nydahl\'s lecture',
  price_full: '3500',
  price_full_eur: 12.5,
  price_discount_eur: 6.5,
  price_discount: '1800',
  exchange_rate: '280',
  event_date: DateTime.strptime("2013-07-13 20:00+02:00", '%Y-%m-%d %H:%M%z')
  )
# . . .
Program.create(id: 11,
  program_name_hu: 'Serab Gyalcen rinpocse - 2. Karmapa Karma Paksi-beavatás (11am)',
  program_name_en: 'Sherab Gyaltsen Rinpoche - Karmapa Pakshi (2nd Karmapa) empowerment',
  price_full: 7000,
  price_full_eur: 25,
  price_discount_eur: 12.5,
  price_discount: 3500,
  exchange_rate: 280,
  event_date: DateTime.strptime("2013-07-14 11:00+02:00", '%Y-%m-%d %H:%M%z')
  )