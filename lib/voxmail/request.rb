module Voxmail
  class Request
    attr_accessor :host, :publickey, :secretkey

    def initialize
        @host = ENV['VOXMAILHOST'] || 'voxmailgem.voxmail.it'
        @secretkey = ENV['VOXMAILSECRETKEY'] || 'ae041cf49a95854ffcfc9ab56cfdeb1e'
        @publickey = ENV['VOXMAILPUBLICKEY'] || 'b31d119a48a5e5fb57819312be55e83e'
        @args = []
        @client = XMLRPC::Client.new(host, "/services/xmlrpc", 80)
        #@client.http_header_extra = { 'Content-Type' => 'text/xml' }
    end

    def client(method, *args)
        digest = OpenSSL::Digest.new('sha256')
        ts = Time.now.to_i;
        nonce = rand(100000000).to_s;
        pk = publickey+";"+ts.to_s+";"+nonce+";"+method
        hash = OpenSSL::HMAC.hexdigest(digest,secretkey, pk)
        @client.call( method, "API"+publickey, ts, nonce, hash, *args )
    end
  end
end
