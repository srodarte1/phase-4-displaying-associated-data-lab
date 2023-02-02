class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items, include: :user, status: :ok
        # render json: items, only: [:description, :name, :price],
        # include: [user: {only: [:username, :city]}], status: :ok
    end
end
