module RQRCodePNG
  module QRCodeExtensions 
    # This method returns a 33x33 .png of the code
    def to_img
      return Image.new(self).render()
    end
  end
end

