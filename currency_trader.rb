require './currency'
require './currency_converter'

class CurrencyTrader

  attr_reader :cc_begin, :cc_end, :start_currency

  def initialize(cc_begin, cc_end, start_currency)
    start_curr = Currency.new(1000000, "USD")
    @cc_begin = cc_begin
    @cc_begin = CurrencyConverter.new{}
    @cc_end = cc_end
    @cc_end = CurrencyConverter.new{}
    @start_currency = start_currency
    @start_currency = Currency.new(@mount, @code)
  end

  def best_trade
    @cc_begin = CurrencyConverter.new({
                                     AUD: 1.4,
                                     CAD: 1.3,
                                     EUR: 0.8,
                                     USD: 1.0
                                     )}
    @cc_end  = CurrencyConverter.new({
                                      "AUD" => 1.2,
                                      "CAD" => 1.5,
                                      "EUR" => 0.6,
                                      "USD" => 1.0
                                     })
    compare = []
  #for each currency code,
  #divide its value in @cc_begin
  #into its value in @cc_end
  #and store those ratios in an array
  #
  #the highest ratio will be the
  #best value for the trade
  end
end
