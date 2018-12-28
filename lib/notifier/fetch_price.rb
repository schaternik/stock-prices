# frozen_string_literal: true

require 'http'

class FetchPrice
  def call(ticker)
    HTTP.get(url(ticker)).yield_self do |response|
      response.to_s.to_f
    end
  end

  private

  def url(ticker)
    "https://api.iextrading.com/1.0/stock/#{ticker.upcase}/price"
  end
end
