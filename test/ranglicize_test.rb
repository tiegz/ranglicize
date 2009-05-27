require(File.join(File.dirname(__FILE__), 'test_helper'))

class RanglicizeTest < Test::Unit::TestCase
  def setup
    @ranglicizer = Ranglicize.new
  end

  def test_should_replace_proper_lowercase_a_characters
    %w(ᵃ ₐ ᾶ ᾷ ᾰ ᾱ ᾲ ᾳ ᾴ ᾀ ᾁ ᾂ ᾃ ᾄ ᾅ ᾆ ᾇ ὰ ά ἀ ἁ ἂ ἃ ἄ ἅ ἆ ἇ ᵃ
       ᵄ ᵅ à á â ã ä å ǟ ǡ ǻ ȁ ȃ α ά а ᶏ ḁ ạ ả ấ ầ ẩ ẫ ậ ắ 
       ằ ẳ ẵ ặ).each do |chr|
      assert_anglicized chr, "a"
    end
  end

  def test_should_replace_proper_uppercase_a_characters
    %w(Å Ᾰ Ᾱ Ὰ Ά ᾼ ᾈ ᾉ ᾊ ᾋ ᾌ ᾍ ᾎ ᾏ Ἀ Ἁ Ἂ Ἃ Ἄ Ἅ Ἆ Ἇ ᴬ ᴀ À Á
       Â Ã Ä Å Ā Ă Ą Ǟ Ǡ Ǻ Ȁ Ȃ Ȧ Ⱥ Ά Α А Ӑ Ӓ Ꭺ Ḁ Ạ Ả Ấ Ầ Ẩ Ẫ 
     Ậ Ắ Ằ Ẳ Ẵ Ặ).each do |chr|
      assert_anglicized chr, "A"
    end
  end
  
  def test_should_replace_proper_lowercase_e_characters
    %w(ₔ ₑ ℯ ℮ ᵉ ᵊ ē ĕ ė ę ě Ə ǝ ȅ ȇ ȩ ɇ ɘ ə ɚ е ѐ ё ȅ 
       ҽ Ҿ ҿ ӗ Ә ә Ӛ ӛ ᶒ ᶕ ḕ ḗ ḙ ḛ ḝ ẹ ẻ ẽ ế ề ể ễ ệ).each do |chr|
      assert_anglicized chr, "e"
    end
  end

  def test_should_replace_proper_uppercase_e_characters
    %w(ℰ є ℇ ℈ ᶔ Ὲ Έ ὲ έ Ἐ Ἑ Ἒ Ἓ Ἔ Ἕ ϶ ἐ ἑ ἒ ἓ ἔ ἕ ᴇ ᴈ ɛ ɜ ɝ ε ϵ È É Ê Ë Ē Ĕ Ė Ę 
       Ě Ǝ Ȅ Ȇ Ȩ Ɇ Έ Ε ε έ ϵ Ѐ Ё Є Е Ӗ Ԑ Ꭼ ᴱ Ḕ Ḗ Ḙ Ḛ Ḝ).each do |chr|
      assert_anglicized chr, "E"
    end
  end

  def test_should_replace_proper_lowercase_i_characters
    %w(ῖ ĭ ῗ ῐ ῑ ῒ ΐ ὶ ί ἰ ἱ ἲ ἳ ἴ ἵ ἶ ἷ ᵢ ᵎ ì ᴉ í î ï ĩ ī ĭ į ı 
       ǐ ȉ ȋ ɨ ΐ ί ϊ і ї Ꭵ ᶖ ᶤ ḭ ḯ ỉ ị).each do |chr|
      assert_anglicized chr, "i"
    end
  end

  def test_should_replace_proper_uppercase_i_characters
    %w(Ῐ Ῑ Ὶ Ί Ἰ Ἱ Ἲ Ἳ Ἴ Ἵ Ἶ Ἷ Ì Í Î Ï Ĩ Ī Ĭ Į İ Ǐ Ȉ Ȋ ɪ Ι Ϊ І Ї 
       Ӏ Ꮀ ᴵ Ḭ Ḯ Ỉ Ị).each do |chr|
      assert_anglicized chr, "I"
    end
  end

  def test_should_replace_proper_lowercase_o_characters
    %w(ₒ ὸ ό ὀ ὁ ὂ ὃ ὄ ὅ ò ó ô õ ö ø ō ŏ ő ǒ ǿ ȍ ȏ ȫ ȭ ȯ ȱ ɵ οо ӧ ө ӫ 
       ᶱ ṍ ṏ ṑ ṓ ọ ỏ ố ồ ổ ỗ ộ).each do |chr|
      assert_anglicized chr, "o"
    end
  end

  def test_should_replace_proper_uppercase_o_characters
    %w(Ὸ Ό Ὀ Ὁ Ὂ Ὃ Ὄ Ὅ ᵒ Ò Ó Ô Õ Ö Ø Ō Ŏ Ő Ɵ Ǒ Ǿ Ȍ Ȏ Ȫ Ȭ Ȯ Ȱ ʘ Ό Θ Ο 
       О Ѳ Ѻ Ӧ Ө Ӫ Ꮎ ᴏ ᴼ Ṍ Ṏ Ṑ Ṓ Ọ Ỏ Ố Ồ Ổ Ỗ Ộ).each do |chr|
      assert_anglicized chr, "O"
    end
  end


  def test_should_replace_proper_lowercase_u_characters
    %w(ᵘ ᵤ ù ú û ü ũ ū ŭ ů ű ų ǔ ǖ ǘ ǚ ǜ ȕ ȗ ʉ ʊ μ ᶸ ṳ ṵ ṷ ṹ ṻ ṳ ṵ ṷ 
       ṹ ṻ ụ ủ ứ ừ ử ữ ự).each do |chr|
      assert_anglicized chr, "u"
    end
  end

  def test_should_replace_proper_uppercase_u_characters
    %w(ᵁ ᴜ Ù Ú Û Ü Ũ Ū Ŭ Ů Ű Ų Ư Ǔ Ǖ Ǘ Ǚ Ǜ Ȕ Ȗ Ʉ Ҵ Ṳ Ṵ Ṷ Ṹ Ṻ Ụ Ủ Ứ Ừ Ử Ữ Ự).each do |chr|
      assert_anglicized chr, "U"
    end
  end

  def test_should_replace_proper_combination_characters
    assert_anglicized "æ", "ae"
    assert_anglicized "ǽ", "ae"
    assert_anglicized "ǣ", "ae"
    assert_anglicized "ӕ", "ae"
    assert_anglicized "Ǽ", "AE"
    assert_anglicized "Æ", "AE"
    assert_anglicized "ᴭ", "AE"
    assert_anglicized "ᴁ", "AE"
    assert_anglicized "Ӕ", "AE"
    assert_anglicized "Ǣ", "AE"
    assert_anglicized "ß", "ss"
    assert_anglicized "Ĳ", "IJ"
    assert_anglicized "ĳ", "ij"
    assert_anglicized "Œ", "OE"
    assert_anglicized "œ", "oe"
    assert_anglicized " Ѹ", "OY"
    assert_anglicized " ѹ", "oy"
    assert_anglicized "ᴂ", "eu"
    assert_anglicized "ᵫ", "ue"
  end

  def test_should_replace_all_characters_in_a_word
    assert_anglicized  "ĳӔÜß".strip, "ijAEUss"
  end

  protected
  def assert_anglicized(char="", expected="", message = "")
    real = @ranglicizer.anglicize(char.to_s.strip)
    message = build_message(message, "<?> expected from <?> but was <?>", expected, char, real)
    assert_block message do
      expected == real
    end 
  end

end