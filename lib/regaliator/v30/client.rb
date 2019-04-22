require 'regaliator/client'
require 'regaliator/v30/account'
require 'regaliator/v30/bill'
require 'regaliator/v30/biller'
require 'regaliator/v30/rate'
require 'regaliator/v30/transaction'
require 'regaliator/v30/address'


module Regaliator
  module V30
    class Client < Client
      def account
        Account.new(config)
      end

      def bill
        Bill.new(config)
      end

      def biller
        Biller.new(config)
      end

      def rate
        Rate.new(config)
      end

      def transaction
        Transaction.new(config)
      end

      def address
        Address.new(config)
      end
    end
  end
end
