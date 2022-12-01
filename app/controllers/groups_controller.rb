class GroupsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :find_group, only: [:show, :edit, :update, :destroy]
  before_action :correct_group, only: [:edit, :destroy]

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

  def show
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to group_path(@group.id)
    else
      render action: :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to root_path
  end

  private

  def group_params
    params.require(:group).permit(:image, :name, :introduction, :prefecture_id, :city).merge(user_id: current_user.id)
  end

  def find_group
    @group = Group.find(params[:id])
  end

  def correct_group
    redirect_to root_path unless @group.user.id == current_user.id
  end
end
