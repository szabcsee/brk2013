module ApplicationHelper
  def countries_list 
    I18n.t(:home_country).map { |key, value| [ value, key ] } 
  end
  def price_category_list
    I18n.t(:price_category).map { |key, value| [ value, key ] }
  end
  def price_method_list
    I18n.t(:price_method).map { |key, value| [ value, key ] }
  end
  def first_day_meal_type_list
    I18n.t(:first_day_meal_type).map { |key, value| [ value, key ] }
  end
end