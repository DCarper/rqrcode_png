require "rqrcode_png/version"
require_relative "rqrcode_png/image"
require_relative "rqrcode_png/qrcode_extensions"

module RQRCodePng
  # Your code goes here...
end

RQRCode::QRCode.send :include, RQRCodePNG::QRCodeExtensions
