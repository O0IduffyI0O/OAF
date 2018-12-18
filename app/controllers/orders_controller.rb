class OrdersController < ApplicationController
    
    def new
        @order = Order.new
    end
    
    def create
        # Ensure that we have the user who is filling out the form
        @project = Project.find( params[:project_id] )
        # Create profile linked to this specific user
        @order = @project.orders.build( order_params )
        if @order.save
            flash[:success] = "Order Saved"
            redirect_to project_path( params[:project_id] )
        else
            flash[:error] = @order.errors.full_messages.join(", ")
            redirect_to new_project_orders_path( params[:project_id] )
        end
    end
    
    private
    def order_params
        params.require(:order).permit(:n_workers_male, :n_workers_female, :n_office_staff)
    end
    
end