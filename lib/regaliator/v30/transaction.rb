require 'regaliator/endpoint'

module Regaliator
  module V30
    class Transaction < Endpoint
      def list(params = {})
        request('/transactions', params).get
      end

      def show(id, params = {})
        request("/transactions/#{id}", params).get
      end

      # for xpay billers
      def create(params = {})
        request('/transactions', params).post
      end
    end
  end
end
