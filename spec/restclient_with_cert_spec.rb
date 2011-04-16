require File.join(File.dirname(__FILE__), 'spec_helper')

describe RestClient do
  before do
    class RestClient::Request
      def self.execute(options = {})
        if options[:verify_ssl] == OpenSSL::SSL::VERIFY_PEER
          :secure
        else
          :insecure
        end
      end
    end
  end

  [:get, :post, :put, :delete].each do |method|
    describe method.to_s.upcase do
      it 'should support SSL' do
        RestClient.send(method, 'https://example.com', {}).should == :secure
      end
    end
  end
end