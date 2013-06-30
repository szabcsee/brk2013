ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       column do
         panel "Special Reports" do
           ul do
               li link_to('Meal Reports', '/admin/users/meal_report/')
               li link_to('Travel Reports', '/admin/users/travel_report')
               li link_to('Children Reports', '/admin/users/child_report/')
           end
         end
         panel "Front End User Management" do
           ul do
               li link_to('New User', '/hu/users/new/')
               li link_to('Quick Query User', '/login/')
           end
         end
       end

       column do
         panel "Info" do
           para "Welcome to Becske Course Management."
           para "On the left you can see the overall reports for meals, travels and children, you can add quickly a user or query one."
         end
       end
     end
  end # content
end
