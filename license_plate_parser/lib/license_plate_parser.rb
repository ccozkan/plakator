require "license_plate_parser/version"
require 'json'

module LicensePlateParser
  class Error < StandardError; end
  # Your code goes here...

  class Plate
    def self.parse(plate)
      plates = JSON.parse(File.read('lib/plate_data.json'))
      city_hash = plates.select {|p| p['plaka'] == plate.to_i}

      city_hash.first == nil ? 'bilemiyorum' : city_hash.first['il']
    #  unless city_hash.first == nil
    #    city_hash.first['il']
    #  else
    #     'bilmiyorum'
    #  end

    end
  end
end
