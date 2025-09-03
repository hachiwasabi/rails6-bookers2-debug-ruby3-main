class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:followed_id])
    current_user.following << @user
    redirect_to request.referer, notice: "ユーザーをフォローしました"
  rescue ActiveRecord::RecordInvalid
    redirect_to request.referer, notice: "フォローに失敗しました"
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.following.delete(@user)
    redirect_to request.referer, notice: "フォローを解除しました"
  end



end
