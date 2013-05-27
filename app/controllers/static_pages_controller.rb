class StaticPagesController < ApplicationController
  def home
    @menu_enabled = true
  end

  def guru_yoga
    @menu_enabled = true
  end

  def karma_paksi
    @menu_enabled = true
  end

  def programs
    @menu_enabled = true
    @programs = Program.all
  end

  def information
    @menu_enabled = true
  end
end
