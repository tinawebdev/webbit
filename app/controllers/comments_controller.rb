class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:edit, :update, :show, :destroy, :upvote, :downvote]
  before_action :set_submission
  before_action :find_comment, only: [:upvote, :downvote]

  def new
  end

  def create
    @comment = @submission.comments.create(params[:comment].permit(:reply, :submission_id))
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save        
        format.html { redirect_to submission_path(@submission) }
        format.js # renders create.js.erb in app/views/comments/
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { redirect_to submission_path(@submission), notice: "Your comment did not save. Please try again."}
        format.js
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to submission_path(@submission), noticed: "Comment was successfully updated." }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy
    redirect_to submission_path(@submission)
  end

  def upvote
    respond_to do |format|
      unless current_user.voted_for? @comment
        format.html { redirect_back(fallback_location: root_path) }
        format.json { head :no_head }
        format.js { flash.now[:notice] = "Successfully upvoted comment" }
        @comment.upvote_by current_user
      else
        format.html { redirect_back(fallback_location: root_path) }
        format.json { head :no_content }
        format.js { flash.now[:notice] = "You already voted for this comment" }
      end
    end
  end

  def downvote
    respond_to do |format|
      unless current_user.voted_for? @comment
        format.html { redirect_back(fallback_location: root_path) }
        format.json { head :no_head }
        format.js { flash.now[:notice] = "Successfully down voted comment" }
        @comment.downvote_by current_user
      else
        format.html { redirect_back(fallback_location: root_path) }
        format.json { head :no_content }
        format.js { flash.now[:notice] = "You already voted for this comment" }
      end
    end
  end

  private

    def set_submission
      @submission = Submission.find(params[:submission_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def find_comment
      @comment = @submission.comments.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:reply)
    end
end
