require '.currency'
require '.currency_converter'

class CurrencyTrader

  def initialize(start_currency, cc_begin, cc_end)
    start_curr = Currency.new(1000000, "USD")
    cc_begin = CurrencyConverter.new
    cc_end = CurrencyConverter.new
  end
end
