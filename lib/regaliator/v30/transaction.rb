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

      #This endpoint returns the details of a specific check transaction.
      def check_transaction_details(id, params = {})
        request("/transactions/#{id}/check", params).get
      end

      #Downloads the PDF file of a specific check transaction
      def check_transaction_pdf(id, params = {})
        request("/transactions/#{id}/check.pdf", params).get
      end
    end
  end
end
