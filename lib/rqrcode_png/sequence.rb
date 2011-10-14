module RQRCodePNG

	class Sequence
		
		def initialize(qr_code)
			@qr_code = qr_code
		end

		#
		# This method yields the vertices of the dark squares
		#
		def dark_squares_only(&block)
			@qr_code.modules.each_index do |row|
				@qr_code.modules.each_index do |column|
					if @qr_code.dark?(row, column)
						yield row, column
					end
				end 
			end

		end

	end
end
