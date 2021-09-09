class Word
  def vowels_count(phrase)
    return phrase.scan(/[AaáãEeéIiíyOóoUu]/).count
  end

  def consonants_count(phrase)
    return phrase.scan(/[bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXzZ]/).count 
  end
end
