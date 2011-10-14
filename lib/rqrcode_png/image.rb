module RQRCodePNG
	class Image
		BORDER				 = 2
		IMG_SIZE			 = 33
		TOTAL_IMG_SIZE = IMG_SIZE + BORDER * 2
		BLACK					 = ::ChunkyPNG::Color::BLACK
		WHITE					 = ::ChunkyPNG::Color::WHITE

		def initialize(qr_code)
			@sequence = Sequence.new(qr_code)
		end

		#
		# Returns an image file of the QR Code
		#
		def render
			png = blank_img()

			@sequence.dark_squares_only do |x, y|
				png[y + BORDER, x + BORDER] = BLACK
			end

			return png
		end

		private

		#
		# Returns an appropriately sized, blank (white) image
		#
		def blank_img
			::ChunkyPNG::Image.new( TOTAL_IMG_SIZE,
															TOTAL_IMG_SIZE,
															WHITE )
		end
	end
end
