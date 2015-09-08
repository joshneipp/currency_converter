require './currency'

class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverter

  def initialize(currency_rates = {})
    @currency_rates =  {"AUD" => 1.44686,
                        "CAD" => 1.32795,
                        "EUR" => 0.89686,
                        "GBP" => 0.65948,
                        "INR" => 66.6865,
                        "JPY" => 118.958,
                        "NZD" => 1.59086,
                        "USD" => 1.00000,
                        "ZAR" => 13.8607
                       }
  end

  def convert(input, code)
    unless @currency_rates.has_key?(input.code) && @currency_rates.has_key?(code)
      raise UnknownCurrencyCodeError
    end
    if input.code == code
      @amount = input.amount
      @code = input.code
      Currency.new(@amount, @code)
    else
      @amount = (input.amount * (@currency_rates[code])/(@currency_rates[input.code]))
      @code = code
      @desired_code = @code
      Currency.new(@amount, @code)
    end
  end
end
