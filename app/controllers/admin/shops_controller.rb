class Admin::ShopsController < ApplicationController
    before_action :set_shop, only: [:edit, :update, :destroy]

    def index
      @shops = Shop.all
    end

    def new
      @shop = Shop.new
    end

    def create
      @shop = Shop.new(shop_params)
      if @shop.save
        redirect_to admin_shops_path, notice: '店舗が追加されました'
      else
        render :new
      end
    end

    def edit
    end

    def update
      holidays = params[:shop][:holidays].join(",") if params[:shop][:holidays] # 選択された定休日をカンマ区切りの文字列に変換
      if @shop.update(shop_params.merge(holiday: holidays))
        redirect_to admin_shops_path, notice: '店舗情報が更新されました'
      else
        render :edit
      end
    end

    def destroy
      @shop.destroy
      redirect_to admin_shops_path, notice: '店舗情報を削除しました。'
    end

    def show
    end

    private

    def set_shop
      @shop = Shop.find(params[:id])
    end

    def shop_params
      params.require(:shop).permit(:name, :opening_time, :closing_time, :holiday, :url, tag_ids: []) # 必要な属性を追加
    end
  end
