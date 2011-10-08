module RQRCodePNG
	
	module QRCodeExtensions 
		# This method returns a 33x33 .png of the code
		#
		def to_img
			return Image.new(self).render()
		end

		#
		# This method yields the vertices of the dark squares
		#
		def dark_squares_only(&block)
			self.modules.each_index do |row|
				self.modules.each_index do |column|
					if self.dark?(row, column)
						yield row, column
					end
				end 
			end

		end
	
	end
end
