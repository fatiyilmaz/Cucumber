@google_search
Feature: ilk feature file

  Background: Google_sayfasina_git
    Given kullanici google'a gider
  @iphone
  Scenario: TC01_google_iphone_arama
    #Describe the behaviour
//  Given kullanici google'a gider
  When kullanici iphone icin arama yapar
  Then sonuclarda iphone oldugunu dogrular
  And close the application

    @tesla
  Scenario: TC02_google_iphone_arama
//  Given kullanici google'a gider
  When kullanici tesla icin arama yapar
  Then sonuclarda tesla oldugunu dogrular
  Then close the application

# 1.Her feature file, Feature: kelimesi ile baslamak zorundadir. Feature = Epic
# 2.Her bir file da, yalniz bir Feature: kullanilabilir.
# 3.Seneryo(TEST CASE) olusturmak icin Scenario kelimesi kullanilir.
# 4.Birden fazla Scenario: kullanilabilir.
# 5.Her bir adim Given,When,And,Then,But,* kelimelerinden biriyle baslamalidir.
# 6.Given -> Genelde ilk satirlarda, pre condition stepleri icin kullanilir
# 7.Then -> Genelde son satirlarda, verification stepleri icin kullanilir.
# 8.And,When -> Genelde ara adimlarda baglar olarak kullanilir.
# NOTE: Teknik olarak istenilen kelime istenilen step de kullanilabilir,
#       ama anlam karmasasi olmamasi icin bu adimlar takip edilir.
#  9. Belirli Scenario lari calistirmak icin cucumber tags ler kullanilir,
#     tag ler Fetuature, Scenario, Scerio Outline, Examples kelimeleri ile birlikte kullanilabilir.
# 10.Background: Her bir Scenario kelimesinden ONCE tek bir sefer calisir.