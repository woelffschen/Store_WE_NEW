class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  # GET /articles/new
  def new
    @article = Article.new
    #neuer Versuch Category einzubinden
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  # GET /articles/1/edit
  def edit
    #um Category einzubinden
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  # POST /articles
  # POST /articles.json
  def create
    @categories = Category.all.map {|c| [c.name, c.id]}
    @article = Article.new(article_params)
    #um Category einzubinden
    @article.category_id = params[:category_id]
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @categories = Category.all.map {|c| [c.name, c.id]}
    #um Category einzubinden
    @article.category_id = params[:category_id]

    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @categories = Category.all.map {|c| [c.name, c.id]}
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description, :image_url, :colour, :size, :price)
    end
end
