@failed_scenario
Feature: hooks_test
  Background: googlea_git
    Given kullanici google'a gider
#  Bu scenariolar bilerek fail ettik.
# Raporlarda Fail durumunda ekran goruntusu eklenmis olacakdir

  @smoke
  Scenario: TC01_google_iphone_arama
    When kullanici "iphone" icin arama yapar
    Then sonuclarin "karpuz" icerdigini dogrular
    Then close the application

    @smoke
  Scenario: TC02_google_tesla_arama
    When kullanici "tesla" icin arama yapar
    Then sonuclarin "tesla" icerdigini dogrular
    Then ekran goruntusu al
    Then close the application