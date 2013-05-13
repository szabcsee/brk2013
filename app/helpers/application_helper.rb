module ApplicationHelper
 def countries_list 
    I18n.t(:home_country).map { |key, value| [ value, key ] } 
end
end