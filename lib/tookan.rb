require 'tookan/version'
require 'dotenv/load'
require 'tookan/configuration'
require 'tookan/error'
require 'tookan/api'
require 'tookan/client'

module Tookan
  extend Configuration

  def self.client(options={})
    Tookan::Client.new(options)
  end

  # Delegate to Tookan::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  # Delegate to Tookan::Client
  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end

  #       order_id:                       SecureRandom.hex,
  #       job_description:                "groceries delivery",
  #       job_pickup_phone:               "+1201555555",
  #       job_pickup_name:                "7 Eleven Store",
  #       job_pickup_email:               "",
  #       job_pickup_address:             "114, sansome street, San Francisco",
  #       job_pickup_latitude:            "30.7188978",
  #       job_pickup_longitude:           "76.810296",
  #       job_pickup_datetime:            DateTime.now.iso8601,
  #       pickup_custom_field_template:   "Template_1",
  #       pickup_meta_data:               [{label: "Price", data: "100"}, {label: "Quantity", data: "100"}],
  #       team_id:                        "",
  #       auto_assignment:                "0",
  #       has_pickup:                     "1",
  #       has_delivery:                   "0",
  #       layout_type:                    "0",
  #       tracking_link:                  1,
  #       timezone:                       "300",
  #       fleet_id:                       "",
  #       p_ref_images:                   [],
  #       notify:                         1,
  #       tags:                           "ruby_wrapper",
  #       geofence:                       0
end
