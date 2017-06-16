class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # before_action :set_comments, only: [:show]
  # before_action :set_subject, only: [:new, :create, :edit]
  # before_action :set_user, only: [:new, :create, :edit]

  require 'json'

  # GET /posts
  # GET /posts.json
  def index
    @posts  = Post.all

    # words_array = Array.new

    # # @posts.each do |post|
    # #   str = post.text.html_safe.downcase

    # #   words_array.push str.split(" ")
    # # end
    # words_array = "eu nao qero mais brincar disso, cansei".split(" ")

    # @word_cloud = words_array

    @tag_cloud = [
                 { text: "test", weight: 15},
                 { text: "Ipsum", weight: 9, link: "http://jquery.com/"},
                 { text: "Dolor", weight: 6, html: {title: "I can haz any html attribute"}},
                 { text: "Sit", weight: 7},  {text: "Amet", weight: 5}
              ]
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    # current_user.add_badge(1)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Postagem criada com sucesso.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Postagem atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # def delete_attachment
  #   attachment.clear
  # end


  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Postagem excluida com sucesso.' }
      format.json { head :no_content }
    end
  end

  def upvote 
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    redirect_to :back
  end  

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # def set_comments
    #   @comments = @post.comments.all
    # end

    # def set_subject
    #   @subject = Subject.find_by_id(1)
    # end

    # def set_user
    #   @user = User.find_by_id(1)
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :subject_id, :text, :user_id, :attachment)
    end
end
