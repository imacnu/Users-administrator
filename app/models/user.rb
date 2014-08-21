class User < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader

	validates :name , presence: {message: "El campo nombre es requerido"}
	
	def self.to_csv
	    CSV.generate do |csv|
	      csv << column_names
		      all.each do |product|
		        csv << product.attributes.values_at(*column_names)
		      end
	    end
  	end
	#def self.to_csv(options = {})
	 #   CSV.generate(options) do |csv|
	  #    csv << column_names
		#      all.each do |product|
		 #       csv << product.attributes.values_at(*column_names)
		  #    end
	    #end
  	#end
	
end
