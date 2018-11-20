class OrdersController < ApplicationController
    
    def new
        @order = Order.new
    end
    
    def create
        @order = Order.new(order_params)
        if @order.save
            flash[:success] = "Order Saved"
            redirect_to root_path
        else
            flash[:error] = @order.errors.full_messages.join(", ")
            redirect_to new_order_path
        end
    end
    
    private
    def order_params
        params.require(:order).permit(:n_workers_male, :n_workers_female, :n_office_staff, :project_id)
    end
    
end