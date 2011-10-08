require "chunky_png"
require 'rqrcode'

require "rqrcode_png/version"
require "rqrcode_png/image"
require "rqrcode_png/qrcode_extensions"

module RQRCodePng
  # Your code goes here...
end

RQRCode::QRCode.send :include, RQRCodePNG::QRCodeExtensions
