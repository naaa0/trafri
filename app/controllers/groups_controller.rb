class GroupsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @group = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:image, :name, :introduction, :prefecture_id, :city).merge(user_id: current_user.id)
  end

end
