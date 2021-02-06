class GoodsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    # @goods = Good.all.order(id: "DESC")
    @goods = Good.search(params[:search]).order(id:"DESC").page(params[:page]).per(15)

  end

  def show
    @good = Good.find(params[:id])
  end

  def new
    @good = Good.new
  end

  def create
    @good = Good.new(good_params)
    @good.user_id = current_user.id
    if @good.save
      redirect_to good_path(@good), notice:"投稿に成功しました"
    else
      render :new
    end


  end

  def edit
    @good = Good.find(params[:id])
    if @good.user!=current_user
      redirect_to goods_path,alert: "不正なアクセスです。"
    end
  end

  def update
    @good = Good.find(params[:id])
    if @good.update(good_params)
    redirect_to good_path(@good),notice:"更新に成功しました"
    else
      render :edit
    end

  end

  def destroy
    good = Good.find(params[:id])
    good.destroy
    redirect_to goods_path

  end

  private
  def good_params
    params.require(:good).permit(:title, :body, :image)
  end

end
