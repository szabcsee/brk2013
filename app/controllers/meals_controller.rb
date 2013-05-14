class MealsController < ApplicationController
  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meals }
    end
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    @meal = Meal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal }
    end
  end

  # GET /meals/new
  # GET /meals/new.json
  def new
    @meal = Meal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal }
    end
  end

  # GET /meals/1/edit
  def edit
    @meal = Meal.find(params[:id])
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.new(params[:meal])

    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal, notice: 'Meal was successfully created.' }
        format.json { render json: @meal, status: :created, location: @meal }
      else
        format.html { render action: "new" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meals/1
  # PUT /meals/1.json
  def update
    @meal = Meal.find(params[:id])

    respond_to do |format|
      if @meal.update_attributes(params[:meal])
        format.html { redirect_to @meal, notice: 'Meal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy

    respond_to do |format|
      format.html { redirect_to meals_url }
      format.json { head :no_content }
    end
  end

  def report
    @meals = Meal.all
    @breakfast = []
    @lunch = []
    @dinner = []
    @meals.each do |meal|
      case meal.first_day_meal_type 
        when 1
          @lunch[0] += 1
        when 3
          @breakfast[0] += 1
          @lunch[0] += 1
          @dinner[0] += 1
      end
      case meal.second_day_meal_type 
        when 1
          @lunch[1] += 1
        when 3
          @breakfast[1] += 1
          @lunch[1] += 1
          @dinner[1] += 1
      end
      case meal.third_day_meal_type
        when 1
          @lunch[2] += 1
        when 3
          @breakfast[2] += 1
          @lunch[2] += 1
          @dinner[2] += 1
      end
      case meal.fourth_day_meal_type
        when 1
          @lunch[3] += 1
        when 3
          @breakfast[3] += 1
          @lunch[3] += 1
          @dinner[3] += 1
      end
      case meal.fifth_day_meal_type
        when 1
          @lunch[4] += 1
        when 3
          @breakfast[4] += 1
          @lunch[4] += 1
          @dinner[4] += 1
      end
      case meal.sixth_day_meal_type
        when 1
          @lunch[5] += 1
        when 3
          @breakfast[5] += 1
          @lunch[5] += 1
          @dinner[5] += 1
      end
    end
  end
end
