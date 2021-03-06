require 'test_helper'

module Regaliator
  module V30
    class TransactionTest < Minitest::Test
      def setup
        @config = Configuration.new.tap do |config|
          config.version    = API_VERSION
          config.api_key    = 'api-key'
          config.secret_key = 'secret-key'
          config.host       = 'api.regalii.dev'
          config.use_ssl    = false
        end
      end

      def test_list
        VCR.use_cassette('v30/transaction/list') do |cassette|
          response = Regaliator.new(@config).transaction.list

          assert response.success?
          assert_equal extract_hsh(cassette), response.data
        end
      end

      def test_with_search
        VCR.use_cassette('v30/transaction/search') do |cassette|
          response = Regaliator.new(@config).transaction.list('q[id_eq]' => 1)

          assert response.success?
          assert_equal extract_hsh(cassette), response.data
        end
      end
    end
  end
end
