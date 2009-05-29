require(File.join(File.dirname(__FILE__), 'test_helper'))

class RanglicizeTest < Test::Unit::TestCase
  def setup
    @ranglicizer = Ranglicize.new
  end

  def test_should_replace_proper_lowercase_a_characters
    %w(ͣ ª ᵃ ₐ ᾶ ᾷ ᾰ ᾱ ᾲ ᾳ ᾴ ᾀ ᾁ ᾂ ᾃ ᾄ ᾅ ᾆ ᾇ ὰ ά ἀ ἁ ἂ ἃ ἄ ἅ ἆ ἇ ᵃ
       ᵄ ᵅ à á â ã ä å ǟ ǡ ǻ ȁ ȃ α ά а ᶏ ḁ ạ ả ấ ầ ẩ ẫ ậ ắ 
       ằ ẳ ẵ ặ ᾰ ᾱ ᾲ ᾳ ᾴ ᾶ ᾷ ḁ ɐ ä).each do |chr|
      assert_anglicized chr, "a"
    end
  end

  def test_should_replace_proper_uppercase_a_characters
    %w(Ⱥ Å Ᾰ Ᾱ Ὰ Ά ᾼ ᾈ ᾉ ᾊ ᾋ ᾌ ᾍ ᾎ ᾏ Ἀ Ἁ Ἂ Ἃ Ἄ Ἅ Ἆ Ἇ ᴬ ᴀ À Á
       Â Ã Ä Å Ā Ă Ą Ǟ Ǡ Ǻ Ȁ Ȃ Ȧ Ⱥ Ά Α А Ӑ Ӓ Ꭺ Ḁ Ạ Ả Ấ Ầ Ẩ Ẫ 
       Ậ Ắ Ằ Ẳ Ẵ Ặ Ᾰ Ᾱ Ὰ Ά ᾼ Ḁ Ä).each do |chr|
      assert_anglicized chr, "A"
    end
  end

  def test_should_replace_proper_lowercase_b_characters
    %w(б ƀ Ƃ ƃ Ƅ ƅ ḃ ḅ ḇ ᶀ ᵬ ᵇ Ҍ ҍ Ѣ ѣ þ ɓ Ϧ Б Ъ Ы Ь).each do |chr|
      assert_anglicized chr, "b"
    end
  end

  def test_should_replace_proper_uppercase_b_characters
    %w(ϐ Ɓ Ḃ Ḅ Ḇ ᴮ ᴯ в Β Ƀ ʙ В ᴃ ℬ).each do |chr|
      assert_anglicized chr, "B"
    end
  end

  def test_should_replace_proper_lowercase_c_characters
    %w(ͨ Ϛ ϛ ς ȼ ç ḉ ᴄ ᴐ ᶜ с ͻ ϲ ƈ ć ĉ ċ č ɔ ᵓ ᴒ ҫ ¢).each do |chr|
      assert_anglicized chr, "c"
    end
  end

  def test_should_replace_proper_uppercase_c_characters
    %w(Ȼ ʗ © Ḉ ℂ Ͻ Ͼ Ͽ Č Ĉ Ċ Ć Ɔ Ƈ Ϲ С Ҫ ℃).each do |chr|
      assert_anglicized chr, "C"
    end
  end

  def test_should_replace_proper_lowercase_d_characters
    %w(д ͩ ᵈ ȡ ḍ ḋ ḏ ḑ ḓ ď ᶁ Ƌ ƌ ɖ ɗ ᶑ ᵟ).each do |chr|
      assert_anglicized chr, "d"
    end
  end

  def test_should_replace_proper_uppercase_d_characters
    %w(Д Ḋ Ḍ  Ḏ Ḑ Ḓ ᴅ ᴆ ᴰ Ď Đ Ð Ɖ Ɗ δ).each do |chr|
      assert_anglicized chr, "D"
    end
  end
  
  def test_should_replace_proper_lowercase_e_characters
    %w(ͤɇ ₔ ₑ ℯ ℮ ᵉ ᵊ ē ĕ ė ę ě Ə ǝ ȅ ȇ ȩ ɇ ɘ ə ɚ е ѐ ё ȅ 
       ҽ Ҿ ҿ ӗ Ә ә Ӛ ӛ ᶒ ᶕ ḕ ḗ ḙ ḛ ḝ ẹ ẻ ẽ ế ề ể ễ ệ ℮ ℯ ᶱ).each do |chr|
      assert_anglicized chr, "e"
    end
  end

  def test_should_replace_proper_uppercase_e_characters
    %w(ℇ ℈ ℨ ℰ Ɇ Є ℰ є ℇ ℈ ᶔ Ὲ Έ ὲ έ Ἐ Ἑ Ἒ Ἓ Ἔ Ἕ ϶ ἐ ἑ ἒ ἓ ἔ ἕ 
       ᴇ ᴈ ɛ ɜ ɝ ε ϵ È É Ê Ë Ē Ĕ Ė Ę Ě Ǝ Ȅ Ȇ Ȩ Ɇ Έ Ε ε έ ϵ Ѐ Ё 
       Є Е Ӗ Ԑ Ꭼ ᴱ Ḕ Ḗ Ḙ Ḛ Ḝ € £ ͼ ͽ э ᵨ).each do |chr|
      assert_anglicized chr, "E"
    end
  end
  
  def test_should_replace_proper_lowercase_f_characters
    %w(ẛᶠ ḟ ᵮ ᶂ ᶡ ƒ Ɉ ƒ ф Ф ᶲ ɟ).each do |chr|
      assert_anglicized chr, "f"
    end
  end

  def test_should_replace_proper_uppercase_f_characters
    %w(ϝ Ƒ ℉ Ⅎ Ϝ Ḟ ℱ).each do |chr|
      assert_anglicized chr, "F"
    end
  end


  def test_should_replace_proper_lowercase_g_characters
    %w(ᵍ ǵ ġ ģ ᶃ ᵷ ᶢ ḡ ℊ г ѓ ĝ ğ ƍ ǥ ǧ ɠ ɡ).each do |chr|
      assert_anglicized chr, "g"
    end
  end

  def test_should_replace_proper_uppercase_g_characters
    %w(Ҁ ҁ ᴳ Ǵ Г Ѓ Ɠ Ǥ Ġ Ģ Ḡ Ĝ Ğ Ǧ ɢ ʛ).each do |chr|
      assert_anglicized chr, "G"
    end
  end
  
  def test_should_replace_proper_lowercase_h_characters
    %w(Ћ ͪ ẖ ђ Ђ ћ Ҕ ҕ Ӵ ӵ ℎ ℏ ḣ ḥ ḧ ḩ ḫ ɥ ɦ ɧ ʮ ʯ ʰ ʱ ĥ Ч Ҷ ҷ Ҹ ҹ Һ һ Ӌ ӌ ).each do |chr|
      assert_anglicized chr, "h"
    end
  end

  def test_should_replace_proper_uppercase_h_characters
    %w(ᵸ Ȟ ȟ Ƕ Ἠ Ἡ Ἢ Ἣ Ἤ Ἥ Ἦ Ἧ ℋ ℌ ℍ Ḣ Ḥ Ḧ Ḩ Ḫ ᴴ Н н Ή ʜ Ĥ Ħ ħ Η Ң ң Ҥ ҥ Ӈ ӈ Ӊ ӊ Ὴ Ή ῌ).each do |chr|
      assert_anglicized chr, "H"
    end
  end
  
  def test_should_replace_proper_lowercase_i_characters
    %w(ι ͥ ℹ ῖ ĭ ῗ ῐ ῑ ῒ ΐ ὶ ί ἰ ἱ ἲ ἳ ἴ ἵ ἶ ἷ ᵢ ᵎ ì ᴉ í î ï ĩ ī ĭ į ı 
       ǐ ȉ ȋ ɨ ΐ ί ϊ і ї Ꭵ ᶖ ᶤ ḭ ḯ ỉ ị ɨ).each do |chr|
      assert_anglicized chr, "i"
    end
  end

  def test_should_replace_proper_uppercase_i_characters
    %w(ℑᶖ І Ї ℭ Ῐ Ῑ Ὶ Ί Ἰ Ἱ Ἲ Ἳ Ἴ Ἵ Ἶ Ἷ Ì Í Î Ï Ĩ Ī Ĭ Į İ Ǐ Ȉ Ȋ ɪ Ι Ϊ І Ї 
       Ӏ Ꮀ ᴵ Ḭ Ḯ Ỉ Ị Ɨ ǀ).each do |chr|
      assert_anglicized chr, "I"
    end
  end

  def test_should_replace_proper_lowercase_j_characters
    %w(ʲɉᶨ ᵎ ᶘ ɩ ʝ ј ϳ).each do |chr|
      assert_anglicized chr, "j"
    end
  end

  def test_should_replace_proper_uppercase_j_characters
    %w(ᴊ ᴶ Ј Ĵ ℐ ȷ ǰ ĵ).each do |chr|
      assert_anglicized chr, "J"
    end
  end
  
  def test_should_replace_proper_lowercase_k_characters
    %w(ḱ ḳ ḵ ᶄ ҡ ķ ƙ ǩ ʞ ҟ ᵏ).each do |chr|
      assert_anglicized chr, "k"
    end
  end

  def test_should_replace_proper_uppercase_k_characters
    %w(Ḱ ĸ κ Ḳ Ḵ K ᴋ Ҡ К Ķ Ƙ Ǩ Ќ к Қ қ Ҝ ҝ Ҟ Ӄ ӄ ᴷ K ќ Κ).each do |chr|
      assert_anglicized chr, "K"
    end
  end
  
  
  def test_should_replace_proper_lowercase_l_characters
    %w(ᴫ ӆ ḷ ḹ Ḻ ḻ ḽ ᶘ ᶅ ĺ ļ ľ ŀ Ł ł Ɩ ɫ ɭ ˡ ℓ).each do |chr|
      assert_anglicized chr, "l"
    end
  end

  def test_should_replace_proper_uppercase_l_characters
    %w(ᶫ Ӆ Ľ Ḷ Ḹ Ḽ ᴦ ᴸ Ĺ Ļ Ŀ Γ ℒ ʟ ᴌ Ƚ).each do |chr|
      assert_anglicized chr, "L"
    end
  end
  
  def test_should_replace_proper_lowercase_m_characters
    %w(ͫ ᵐ ᴟ ṁ ṃ ḿ  ᶆ ᶬ ᶭ ᵯ ɯ ɰ ɱ).each do |chr|
      assert_anglicized chr, "m"
    end
  end

  def test_should_replace_proper_uppercase_m_characters
    %w(Ṁ Ṃ Ḿ ᴍ ᴹ М м  Ӎ ӎ Μ Ϻ ϻ ʍ  ℳ).each do |chr|
      assert_anglicized chr, "M"
    end
  end

  def test_should_replace_proper_lowercase_n_characters
    %w(ᵙ Ƞ ᵰ ᴝ ᴞ п η ή ṅ ṇ ṉ ṋ ᶮ ᶯ ᶰ ᶇ ἠ ἡ ἢ ἣ ἤ ἥ ἦ ἧ ὴ ή ᾐ ᾑ ᾒ ᾓ ᾔ ᾕ ᾖ ᾗ ῂ 
       ῃ ῄ ῆ ῇń ņ ň ŉ ŋ ƞ ǹ ɲ ɳ ӣ ӥ ñ).each do |chr|
      assert_anglicized chr, "n"
    end
  end

  def test_should_replace_proper_uppercase_n_characters
    %w(ѝ Ҋ ҋ Ӣ Ӥ Ñ ℕ ℵ Ṅ Ṇ Ṉ Ṋ ᴎ ᴺ ᴻ И Й Ν Ń и й Ņ Ŋ Ɲ Ǹ ɴ Ň Ѝ Ñ).each do |chr|
      assert_anglicized chr, "N"
    end
  end
  def test_should_replace_proper_lowercase_o_characters
    %w(ö ϴ Ϭ ϭ ϕ о Φ ᴑ ᴓ ѳ ѻ ͦ ₒ ὸ ό ὀ ὁ ὂ ὃ ὄ ὅ ò ó ô õ ö ø ō ŏ ő ǒ ǿ ȍ ȏ ȫ ȭ ȯ ȱ ɵ οо ӧ ө ӫ 
       ᶱ ṍ ṏ ṑ ṓ ọ ỏ ố ồ ổ ỗ ộ ο).each do |chr|
      assert_anglicized chr, "o"
    end
  end

  def test_should_replace_proper_uppercase_o_characters
    %w(Ö Ѳ Ѻ ʘ Ὸ Ό Ὀ Ὁ Ὂ Ὃ Ὄ Ὅ ᵒ Ò Ó Ô Õ Ö Ø Ō Ŏ Ő Ɵ Ǒ Ǿ Ȍ Ȏ Ȫ Ȭ Ȯ Ȱ ʘ Ό Θ Ο 
       О Ѳ Ѻ Ӧ Ө Ӫ Ꮎ ᴏ ᴼ Ṍ Ṏ Ṑ Ṓ Ọ Ỏ Ố Ồ Ổ Ỗ Ộ ҈҉  Ɵ Ω Ὠ Ὡ Ὢ Ὣ Ὤ Ὥ Ὦ Ὧ Ω Ὼ Ώ ῼ Ώ).each do |chr|
      assert_anglicized chr, "O"
    end
  end

  def test_should_replace_proper_lowercase_p_characters
    %w(ᴨ П ℘ ṕ ṗ ᶈ ᵖ ᵽ π ᵱ ҏ р ῤ ῥ ъ ы ь ρ ƥ Ƿ Ϸ ϸ Л л ƿ Þ ϱ).each do |chr|
      assert_anglicized chr, "p"
    end
  end

  def test_should_replace_proper_uppercase_p_characters
    %w(Ῥ ℗ ℙ Ṕ Ṗ ᴘ ᴾ ᴩ Ҏ Р Ρ Ƥ Π).each do |chr|
      assert_anglicized chr, "P"
    end
  end
  
  def test_should_replace_proper_lowercase_q_characters
    %w(ʠ ᶐ ơ ƣ ɋ ϼ Ϥ ϥ).each do |chr|
      assert_anglicized chr, "q"
    end
  end

  def test_should_replace_proper_uppercase_q_characters
    %w( Ƣ ℚ Ơ Ɋ).each do |chr|
      assert_anglicized chr, "Q"
    end
  end
  
  def test_should_replace_proper_lowercase_r_characters
    %w(ᵣ ᶉ ʳ ʴ ʵ ᵲ ᵳ ṙ ṛ ṝ ṟ ŕ ŗ ř ȑ ȓ ɍ ɹ ɺ ɻ ɼ ɽ ɾ ɿ ͬ).each do |chr|
      assert_anglicized chr, "r"
    end
  end

  def test_should_replace_proper_uppercase_r_characters
    %w(ʶ я ᴿ ℛ ℜ ℝ ℟ Ṙ Ṛ Ṝ Ṟ ᴙ ᴚ Я Ŕ Ŗ Ř Ʀ Ȑ Ȓ Ȣ ȣ Ɍ ʀ ʁ ᴕ ᴽ ®).each do |chr|
      assert_anglicized chr, "R"
    end
  end
  
  def test_should_replace_proper_lowercase_s_characters
    %w(ȿ ᵴ ṡ ṣ ṥ ṧ ṩ š š ᶳ ṡ ṣ ṥ ṧ ṩ ᶊ ᴤ ѕ ϧ ś ŝ ş ƨ ș ʂ ˢ ƽ σ).each do |chr|
      assert_anglicized chr, "s"
    end
  end

  def test_should_replace_proper_uppercase_s_characters
    %w(Ṡ Ṣ Ṥ Ṧ Ṩ Š Š Ṡ Ṣ Ṥ Ṧ Ṩ Ϩ ϩ Ś Ŝ Ş Ƨ Ș Σ Ѕ Ƽ).each do |chr|
      assert_anglicized chr, "S"
    end
  end
  
  def test_should_replace_proper_lowercase_t_characters
    %w(ᵵ ᵗ ṫ ṭ ṯ ṱ ẗ ᶵ Ϯ ϯ ˖ ʇ ʈ ţ ť Ŧ ŧ ƫ ț † ‡ ͭ ᵼ).each do |chr|
      assert_anglicized chr, "t"
    end
  end

  def test_should_replace_proper_uppercase_t_characters
    %w(Ⱦ ᴛ ᵀ Ṫ Ṭ Ṯ Ṱ Τ Т т Ҭ ҭ τ Ţ Ť Ƭ Ʈ Ț ˔ ˕ ℸ).each do |chr|
      assert_anglicized chr, "T"
    end
  end

  def test_should_replace_proper_lowercase_u_characters
    %w(ü ᶙ μ ͧ ʉ ʊ µ ᵘ ᵤ ù ú û ü ũ ū ŭ ů ű ų ǔ ǖ ǘ ǚ ǜ ȕ ȗ ʉ ʊ μ ụ ứ ᶸ ṳ ử ṵ ṷ ữ ṹ ṻ ṳ ṵ ṷ 
       ṹ ṻ ụ ủ ứ ừ ử ữ ự ừ ự ủ ʊ ῠ ῡ ῢ ΰ ῦ ῧ ℧ ύ ᵾ ᵿ).each do |chr|
      assert_anglicized chr, "u"
    end
  end

  def test_should_replace_proper_uppercase_u_characters
    %w(Ü Ʉ ᵁ ᴜ Ù Ú Û Ü Ũ Ū Ŭ Ů Ű Ų Ư Ǔ Ǖ Ǘ Ǚ Ǜ Ȕ Ȗ Ʉ Ҵ Ṳ Ṵ Ṷ Ṹ Ṻ Ụ Ủ Ứ Ừ Ử Ữ Ự Ụ Ủ Ứ Ừ Ử Ữ Ự).each do |chr|
      assert_anglicized chr, "U"
    end
  end
  
  def test_should_replace_proper_lowercase_v_characters
    %w(ʋ ᵥ ᶺ ѵ ѷ ʌ ˄ ˅ ν ͮ ᵛ ᶌ).each do |chr|
      assert_anglicized chr, "v"
    end
  end

  def test_should_replace_proper_uppercase_v_characters
    %w(Ѵ Ѷ Ʌ ℣ Ṽ ṽ Ṿ ṿ ᴠ ᴧ Λ Ʋ).each do |chr|
      assert_anglicized chr, "V"
    end
  end


  def test_should_replace_proper_lowercase_w_characters
    %w(ʷ ὼ ώ ᾠ ᾡ ᾢ ᾣ ᾤ ᾥ ᾦ ᾧ ῲ ῳ ῴ ῶ ῷ ѽ ѿ ѡ ш щ ϣ ω ώ ŵ ϖ ὠ ὡ ὢ ὣ ὤ ὥ ὦ ὧ ᵚ).each do |chr|
      assert_anglicized chr, "w"
    end
  end

  def test_should_replace_proper_uppercase_w_characters
    %w(Ẁ Ẃ Ẅ Ẇ Ẉ Ѽ ẉ ẘ ẁ ẃ ẇ ẅ ᴡ ᵂ  Ѿ Ѡ Ш Щ Ϣ Ŵ Ɯ).each do |chr|
      assert_anglicized chr, "W"
    end
  end

  def test_should_replace_proper_lowercase_x_characters
    %w(͓ ̽ ẋ ẍ ᶍ ҳ ϫ ϰ ϗ ͯ ˣ × ᵡ ˟ ᵪ х).each do |chr|
      assert_anglicized chr, "x"
    end
  end

  def test_should_replace_proper_uppercase_x_characters
    %w(Ξ Х Ҳ Ẋ Ẍ χ Χ Ϫ).each do |chr|
      assert_anglicized chr, "X"
    end
  end
  def test_should_replace_proper_lowercase_y_characters
    %w(Ў ẙ ʸ у ɏ ƴ ȳ ᵧ ᵞ ỳ ỵ ỷ ỹ ẏ ӯ ӱ ӳ Ӯ Ӱ Ӳ ў ү ұ ʎ У ÿ ý).each do |chr|
      assert_anglicized chr, "y"
    end
  end

  def test_should_replace_proper_uppercase_y_characters
    %w(Ý Ῠ Ῡ Ὺ Ύ Ὑ Ὓ Ὕ Ὗ Ẏ Ỳ Ỵ Ỷ Ỹ Ү Ұ ʏ Ύ Ȳ Ƴ Ÿ ¥ Ŷ ŷ Ÿ Ɣ Ɏ ƛ ϒ ϓ ϔ Ψ Ϋ λ Υ џ γ).each do |chr|
      assert_anglicized chr, "Y"
    end
  end  
  
  def test_should_replace_proper_lowercase_z_characters
    %w(ζ ẑ ẓ ẕ ᶎ ᶻ ᶼ ᴢ ӂ җ ж ѫ  ѭ ʐ ʑ ɀ ź ż ž ƶ ž ȥ ᵶ).each do |chr|
      assert_anglicized chr, "z"
    end
  end

  def test_should_replace_proper_uppercase_z_characters
    %w(Ѫ Ζ Ẕ Ẓ Ẑ ℤ Ж Ӂ Җ Ѭ Ź Ż Ž Ƶ Ȥ ).each do |chr|
      assert_anglicized chr, "Z"
    end
  end

  def test_should_replace_proper_1_characters
    %w(¹ ).each do |chr|
      assert_anglicized chr, "1"
    end
  end

  def test_should_replace_proper_2_characters
    %w(²).each do |chr|
      assert_anglicized chr, "2"
    end
  end

  def test_should_replace_proper_3_characters
    %w(³ Ǯ ǯ Ȝ ȝ Ҙ ҙ ᴣ ᶚ ᶾ).each do |chr|
      assert_anglicized chr, "3"
    end
  end

  def test_should_replace_proper_4_characters
    %w().each do |chr|
      assert_anglicized chr, "4"
    end
  end
  
  def test_should_replace_proper_5_characters
    %w().each do |chr|
      assert_anglicized chr, "5"
    end
  end
  
  def test_should_replace_proper_6_characters
    %w().each do |chr|
      assert_anglicized chr, "6"
    end
  end
  
  def test_should_replace_proper_7_characters
    %w().each do |chr|
      assert_anglicized chr, "7"
    end
  end
  
  def test_should_replace_proper_8_characters
    %w().each do |chr|
      assert_anglicized chr, "8"
    end
  end
  
  def test_should_replace_proper_9_characters
    %w().each do |chr|
      assert_anglicized chr, "9"
    end
  end
  
  def test_should_replace_proper_0_characters
    %w(º °).each do |chr|
      assert_anglicized chr, "0"
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
    assert_anglicized "ß", "ss"
    assert_anglicized "β", "ss"
    assert_anglicized "ᵦ", "ss"
    assert_anglicized "ᵝ", "ss"
    assert_anglicized "Ĳ", "IJ"
    assert_anglicized "ĳ", "ij"
    assert_anglicized "Œ", "OE"
    assert_anglicized "œ", "oe"
    assert_anglicized " Ѹ", "OY"
    assert_anglicized " ѹ", "oy"
    assert_anglicized "ᴂ", "eu"
    assert_anglicized "ᵫ", "ue"
    assert_anglicized "℠", "sm"
    assert_anglicized "℡", "tel"
    assert_anglicized "™", "tm"
    assert_anglicized "Ѥ", "IE"
    assert_anglicized "ѥ", "ie"
    assert_anglicized "ᾈ", "Ai"
    assert_anglicized "ᾉ", "Ai"
    assert_anglicized "ᾊ", "Ai"
    assert_anglicized "ᾋ", "Ai"
    assert_anglicized "ᾌ", "Ai"
    assert_anglicized "ᾍ", "Ai"
    assert_anglicized "ᾎ", "Ai"
    assert_anglicized "ᾏ", "Ai"
    assert_anglicized "℞", "px"
    assert_anglicized "™", "tm"
    assert_anglicized "Ǆ", "DZ"
    assert_anglicized "ǅ", "Dz"
    assert_anglicized "ǆ", "dz"
    assert_anglicized "Ǉ", "LJ"
    assert_anglicized "ǈ", "Lj"
    assert_anglicized "ǉ", "lj"
    assert_anglicized "Ǌ", "NJ"
    assert_anglicized "ǋ", "Nj"
    assert_anglicized "ǌ", "nj"
    assert_anglicized "§", "SS"
    assert_anglicized "Ǳ", "DZ"
    assert_anglicized "ǲ", "Dz"
    assert_anglicized "ǳ", "dz"
    assert_anglicized "ʣ", "dz"
    assert_anglicized "ʤ", "uas"
    assert_anglicized " ʥ", "dz"
    assert_anglicized "ʦ", "ts"
    assert_anglicized "ʧ", "tl"
    assert_anglicized "ʩ", "fn"
    assert_anglicized "ʪ", "ls"
    assert_anglicized "ʫ", "lz"
    assert_anglicized "ʬ", "ww"
    assert_anglicized " Ѹ", "Oy"
    assert_anglicized " ѹ", "oy"
    assert_anglicized "№", "No"
    assert_anglicized "℀", "a/c"
    assert_anglicized "℁", "a/s"
    assert_anglicized "℄", "cL"
    assert_anglicized "℅", "c/o"
    assert_anglicized "℆", "c/u"
    assert_anglicized "℔", "tb"
    assert_anglicized "¶", "PP"
    assert_anglicized "¼", "1/4"
    assert_anglicized "½", "1/2"
    assert_anglicized "¾", "3/4"
    assert_anglicized "¿", "?"
    assert_anglicized " ᾘ", "Hi"
    assert_anglicized " ᾙ", "Hi"
    assert_anglicized " ᾚ", "Hi"
    assert_anglicized " ᾛ", "Hi"
    assert_anglicized " ᾜ", "Hi"
    assert_anglicized " ᾝ", "Hi"
    assert_anglicized " ᾞ", "Hi"
    assert_anglicized " ᾟ", "Hi"
    assert_anglicized "ψ", "Ps"
    assert_anglicized "Ѱ", "Ps"
    assert_anglicized "ѱ", "ps"
    assert_anglicized "ᴪ", "ps"
    assert_anglicized "ᴪ", "ps"
    assert_anglicized "Ѱ", "Ps"
    assert_anglicized " ᾨ", "Oi"
    assert_anglicized " ᾩ", "Oi"
    assert_anglicized " ᾪ", "Oi"
    assert_anglicized " ᾫ", "Oi"
    assert_anglicized " ᾬ", "Oi"
    assert_anglicized " ᾭ", "Oi"
    assert_anglicized " ᾮ", "Oi"
    assert_anglicized " ᾯ", "Oi"
    assert_anglicized "ξ", "xi"
    assert_anglicized "φ", "Phi"
    assert_anglicized "ᵩ", "phi"
    assert_anglicized "ᵠ", "phi"
    assert_anglicized "Ѯ", "Ksi"
    assert_anglicized "ѯ", "ksi"
    assert_anglicized "Ц", "Ts"
    assert_anglicized "Џ", "Ts"
    assert_anglicized "ц", "ts"
    assert_anglicized "ч", "Ch"
    assert_anglicized "ᶣ", "ch"
    assert_anglicized "ᵺ", "th"
    assert_anglicized "Ю", "Yu"
    assert_anglicized "ю", "yu"
    assert_anglicized "ϑ", "theta"
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