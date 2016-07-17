class InShoppingCartsController < ApplicationController
	def create 
		#add to a shopping_cart
		in_shopping_cart = InShoppingCart.new(product_id: params[:product_id],shopping_cart: @shopping_cart)
		if in_shopping_cart.save
			redirect_to carrito_path, notice: "Guardamos el producto en tu carrito"
		else
			redirect_to products_path(id: params[:product_id]), notice: "No pudimos agregar al carrito, intenta de nuevo"
		end
	end

	def destroy
		#eliminate from shopping_cart
		@in_shopping_cart = InShoppingCart.find(params[:id])

		@in_shopping_cart.destroy

		redirect_to carrito_path
	end
end
