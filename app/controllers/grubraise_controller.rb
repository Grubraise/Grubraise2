class GrubraiseController < ApplicationController
	def new
	end
	
	def index
  	end
	
	def show
    	@page_name = params[:page_name].to_s.gsub(/\W/,'')
    	unless partial_exists?(@page_name)
      		raise ActionController::RoutingError.new('Not Found')
    	end
 	end

 	private

  def partial_exists?(partial)
    ValidPartials.include?(partial)
  end

  def self.find_partials
    Dir.glob(Rails.root.join('app', 'views',  'grubraise', '_*.erb')).map do |file|
      file = Pathname.new(file).basename.to_s
      # Strip leading _ and then everything from the first . to the end of the name
      file.sub(/^_/, '').sub(/\..+$/, '')
    end
  end

  # Do this once on boot
  ValidPartials = GrubraiseController.find_partials

end
