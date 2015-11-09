require 'voxmail/version'
require 'xmlrpc/client'
require 'openssl'
require 'voxmail/request'

module Voxmail

  def self.lookup(method, *args)
    Request.new.client(method, *args)
  end

  def self.info
    args = []
    Request.new.client('voxmail.info', *args)
  end
end
