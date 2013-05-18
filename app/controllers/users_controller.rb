class UsersController < ApplicationController
  # GET /users
  # GET /users.json

  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(current_user.id)
    @registrations = Registration.where(:user_id => @user.id)
    @travels = @user.travels.all
    @meals = @user.meals.all
    @children = Child.where(:user_id => @user.id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @meal_dates = ["2013-07-08","2013-07-09","2013-07-10","2013-07-11","2013-07-12","2013-07-13","2013-07-14"]
    @child = @user.children.build
    @meals = @user.meals.build
    @travels = @user.travels.build
    @registration = @user.registrations.build
    @programs = Program.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @programs = Program.all
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    @meal_dates = ["2013-07-09","2013-07-10","2013-07-11","2013-07-12","2013-07-13","2013-07-14"]
    @programs = Program.all
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        UserMailer.confirmation_email_en(@user).deliver
        
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @User, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @User.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to Users_url }
      format.json { head :no_content }
    end
  end

end
