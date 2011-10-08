# rqrcode_png

## Overview
rQRcode is a great library that generates the 2D sequence of a QR code, and chunky_png is a great pure ruby library for generating and manipulating images.

rqrcode_png ties the two libraries together. rqrcode_png assumes as little as possible.

## Usage
qrqcode_png extends RQRCode::QRCode with one simple method, #to_img.

#to_img returns an instance of ChunkyPNG. The image itself is 37x37 pixels which includes a 2 pixel border, which can easily be resized and saved.

```ruby
qr = RQRCode::QRCode.new( 'my string to generate', :size => 4, :level => :h )
png = qr.to_img
png.resize(90, 90).save("really_cool_qr_image.png")			# ChunkyPNG methods
```

## Contributing
* Fork the project
* Send a pull request
* Don't touch the .gemspec, I'll do that when I release a new version

## Copyright

MIT Licence (http://www.opensource.org/licenses/mit-license.html)

