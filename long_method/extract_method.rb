def rna_transcription(dna)
  dna.split("").map { |nucleotide|
    case nucleotide
      when "G"
        "C"
      when "C"
        "G"
      when "T"
        "A"
      when "A"
        "U"
      else
        ""
    end
  }.join("")
end

def rna_transcription_fixed(dna)
  dna.split("").map { |nucleotide| rna_translation[nucleotide] }.join("") 
end

def rna_translation
  {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U",
  }
end
