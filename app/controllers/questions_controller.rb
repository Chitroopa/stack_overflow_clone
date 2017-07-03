class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @current_user = current_user
    @question = Question.new(question_params)
    @question.user_id = @current_user.id
    if @question.save
      flash[:notice] = "New question added successfully!"
      redirect_to  question_path(@question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
  end

  private

  def question_params
    params.require(:question).permit(:title,:content,:tags, :user_id)
  end

end
