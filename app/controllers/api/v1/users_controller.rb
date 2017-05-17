module Api::V1
  class RestaurantsController < ApiController
    before_action :get_json, only: [:create, :update]

    def index

    end

    def create

    end

    def show

    end

    def update

    end

    def destroy

    end

    private
      def get_json
        @json = JSON.parse(request.body.read)
      end
  end
end