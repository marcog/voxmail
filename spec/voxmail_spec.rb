require 'spec_helper'

describe Voxmail do
   it "checks connection" do
      method = "voxmail.info"
      args = ''
      puts Voxmail.lookup(method, *args)
    end

    it 'list sent newsletters' do
      method = "voxmail.newsletter.list"
      args = [status:'sent']
      puts Voxmail.lookup(method, *args)
    end

    it 'loads a newsletter' do
      method = "voxmail.newsletter.load"
      args = ['qa0jb', 'permlink']
      puts Voxmail.lookup(method, *args)
    end

    it 'subscribe a user' do
      method = "voxmail.user.subscribe"
      args = [mail:'test17@test.it', privacy:'1']
      puts args
      puts Voxmail.lookup(method, *args)
    end
end
