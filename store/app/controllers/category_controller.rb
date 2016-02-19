class CategoryController < ApplicationController

  def index
    @category = Category.all
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  def show
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  def new
    @category = Category.new
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  def edit
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  def create
    @categories = Category.all.map {|c| [c.name, c.id]}
    @category = Category.new(categorys_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @categories = Category.all.map {|c| [c.name, c.id]}
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @categories = Category.all.map {|c| [c.name, c.id]}
    @category.destroy
    respond_to do |format|
      format.html { redirect_to category_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
