module Api::V1
  class RestaurantsController < PublicController
    before_action :get_json, only: [:create, :update]

    def index
      @restaurants = Restaurant.all.order(:name)
      if @restaurants
        render status: :ok, json: @restaurants
      else
        render status: :not_found
      end
    end

    def create
      @restaurant = Restaurant.find_by(name: @json['name'])
      if @restaurant
        render status: :already_reported
      else
        @restaurant = Restaurant.create(@json)
        if @restaurant
          render status: :ok, json: @restaurant
        else
          render status: :unprocessable_entity
        end
      end
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      if @restaurant
        render status: :ok, json: @restaurant
      else
        render status: :not_found
      end
    end

    def update
      @restaurant = Restaurant.find(params[:id])
      if @restaurant.update(@json)
        render status: :ok, json: @json
      else
        render status: :unprocessable_entity
      end 
    end

    def destroy
      @restaurant = Restaurant.find(params[:id])
      if @restaurant.update(active: false, deleted_at: Time.now)
        render status: :ok, json: @restaurant
      else
        render status: :unprocessable_entity
      end
    end

    private
      def get_json
        @json = JSON.parse(request.body.read)
      end
  end
end