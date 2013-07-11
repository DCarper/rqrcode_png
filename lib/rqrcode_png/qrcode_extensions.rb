module RQRCodePNG
  module QRCodeExtensions 
    # This method returns a 33x33 .png of the code
    def to_img(border_width=nil)
      return Image.new(self, border_width).render()
    end
  end
end

