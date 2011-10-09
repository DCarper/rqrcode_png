# rqrcode_png

## Overview
**Problem:** You need to generate your own supercool QR code images
**Solution:** rqrcode_png

rQRcode is a great library that generates the 2D sequence of a QR code, and chunky_png is a great pure ruby library for generating and manipulating images.

rqrcode_png ties the two libraries together. rqrcode_png assumes as little as possible.

## Usage
qrqcode_png extends RQRCode::QRCode with one simple method, #to_img.

\#to_img returns an instance of ChunkyPNG. The image itself is an easily manipulated  which includes a 2 pixel border.

```ruby
require 'rqrcode_png'

qr = RQRCode::QRCode.new( 'my string to generate', :size => 4, :level => :h )
png = qr.to_img
png.resize(90, 90).save("really_cool_qr_image.png")			# ChunkyPNG methods
```

## Rails

### With Dragonfly

```ruby
# app/models/product.rb
class Product < ActiveRecord::Base
  image_accessor :qr_code
end
```

```ruby
# somewhere
qr_code_img = RQRCode::QRCode.new('http://www.google.com/').to_img
@product.update_attribute :qr_code, qr_code_img.to_string
```

```ruby
# app/controllers/products.rb
def show
	@product = Product.find(params[:id])
end
```

```ruby
# app/views/products/show.html.erb
<%= image_tag @product.qr_code.url %>
```

## Contributing
* Fork the project
* Send a pull request
* Don't touch the .gemspec, I'll do that when I release a new version

## Copyright

MIT Licence (http://www.opensource.org/licenses/mit-license.html)

