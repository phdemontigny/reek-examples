require 'test/unit'
require_relative 'extract_method'

class ExtractMethodTest < Test::Unit::TestCase
  include ExtractMethod

  def test_rna_transcription
    assert_equal("", rna_transcription(""))
    assert_equal("CUCGGAUGAUUGCCCUA", rna_transcription("GAGCCTACTAACGGGAT"))
  end

  def test_rna_transcription_fixed
    assert_equal("", rna_transcription_fixed(""))
    assert_equal("CUCGGAUGAUUGCCCUA", rna_transcription_fixed("GAGCCTACTAACGGGAT"))
  end
end
