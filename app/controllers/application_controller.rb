class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :find, except: [:index, :new, :create]

   private

     def find
       #byebug
       controller_name.classify.constantize.find(params[:id])
       end
      # def strong_params(*args)
      #   byebug
      #   x = controller_name.singularize.to_sym
      #   params.require(x).permit(args[x].keys.map(&:to_sym))
      # end
    def strong_params(*args)
      #byebug
      params.require(controller_name.singularize.to_sym).permit(*args)
    end
end
