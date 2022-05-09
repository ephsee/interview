class OrdersController < ApplicationController

    def index
        render json: Order.all.limit(10), status: :ok
    end

    # def paginate
    #     render json: Order.all.limit(10), status: :ok
    # end

    def create
        order = Order.create!(order_params)
        render json: order, status: :created
    end

    def show
        order = Order.find(params[:id])
        render json: order, status: :ok
    end

    def update
        order = Order.find(params[:id])
        order.update!(order_params)
        render json: {message: "order has been updated"}, status: :accepted
    end 

    def destroy
        order = Order.find(params[:id])
        order.destroy!
        render json: {message: "order has been deleted"}, status: :gone
    end

    private

    def order_params
        params.permit(:id, :store_id, :customer_id, :price)
    end

end
