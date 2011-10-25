# rqrcode_png
**Problem:** You need to generate your own QR code images  
**Solution:** rqrcode_png

## Overview
rqrcode_png extends [rqrcode](https://github.com/whomwah/rqrcode), adding one simple method to instances of QRCode, **\#to_img**. [ChunkyPNG](https://github.com/wvanbergen/chunky_png) is used to generate the image itself in pure Ruby. As few assumptions are made as possible regarding the image itself.


## Usage

```ruby
require 'rqrcode_png'

qr = RQRCode::QRCode.new( 'my string to generate', :size => 4, :level => :h )
png = qr.to_img												# returns an instance of ChunkyPNG
png.resize(90, 90).save("really_cool_qr_image.png")
```

*NOTE:* For now, the :size of the QR code has to be 14 or less. Working on this.

### Bundler
```ruby
gem 'rqrcode_png'
```

### Rails

#### With [DragonFly](https://github.com/markevans/dragonfly)

```ruby
# app/models/product.rb
class Product < ActiveRecord::Base
  image_accessor :qr_code
end
```

```ruby
# somewhere
qr_code_img = RQRCode::QRCode.new('http://www.google.com/', :size => 4, :level => :h ).to_img
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

