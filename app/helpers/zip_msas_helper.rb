module ZipMsasHelper
  
  def market_size_status(msa_market_size)
    if msa_market_size.class == String
      msa_market_size
    else
      number_with_delimiter(msa_market_size.round(0))
    end
  end
end
