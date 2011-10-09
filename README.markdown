# rqrcode_png

## Overview
**Problem:** You need to generate your own supercool QR code images  
**Solution:** rqrcode_png

## Usage

```ruby
require 'rqrcode_png'

qr = RQRCode::QRCode.new( 'my string to generate', :size => 4, :level => :h )
png = qr.to_img																					# instance of chunky_png methods
png.resize(90, 90).save("really_cool_qr_image.png")
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

