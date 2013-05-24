module ApplicationHelper
  @@selected_currency = ""
  
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
  def second_day_meal_type_list
    I18n.t(:second_day_meal_type).map { |key, value| [ value, key ] }
  end
  def third_day_meal_type_list
    I18n.t(:third_day_meal_type).map { |key, value| [ value, key ] }
  end
  def fourth_day_meal_type_list
    I18n.t(:fourth_day_meal_type).map { |key, value| [ value, key ] }
  end
  def fifth_day_meal_type_list
    I18n.t(:fifth_day_meal_type).map { |key, value| [ value, key ] }
  end
  def sixth_day_meal_type_list
    I18n.t(:sixth_day_meal_type).map { |key, value| [ value, key ] }
  end
  def seventh_day_meal_type_list
    I18n.t(:seventh_day_meal_type).map { |key, value| [ value, key ] }
  end
  def food_type_list
    I18n.t(:food_type).map { |key, value| [ value, key ] }
  end
  def show_meal_type(meal_type)
      if meal_type.to_i == 1
        t 'lunch'
      elsif meal_type.to_i == 3
        t 'three_time'
      else
        t 'no_food'
      end
  end
  def show_food_type(food_type)
      if food_type == "vegetarian"
        t 'vegetarian'
      else
        t 'meat'
      end
  end
  def show_child_care(child_care)
      if child_care == true
        t 'child_care_true'
      else
        t 'child_care_false'
      end
  end
end