class GroupsController < ApplicationController
  def index
    @groups = current_user.groups.ordered_by_name
  end

  def show
    @group = Group.find(params[:id])
    @books = @group.books.includes(:author)
    @amount = @books.sum(:amount)
  end

  def new
    @group = current_user.groups.build
  end

  def create
    @group = current_user.groups.build(group_params)

    if @group.save
      redirect_to @group
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to @group
    else
      render :edit
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to user_groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
