@data_tables
Feature: data_tables
  Scenario: TC01_musteri_giris_testi
    Given kullanici "https://www.bluerentalcars.com/login" gider
    # | | -> datatable olusturmak icin kullanilir. DataTABLES SCENARIO OUTLINE ILE DE KULLANILABILIR.
    # Ama datalar dataTABLES dan gelir. Cunku SCENARIO OUTLINE datalari kodlarin en altinda Exmaples: 'in altinda olur.
    When kullanici emaili ve sifresini girer
      | email                         | sifre     |
      | sam.walker@bluerentalcars.com | c!fas_art |
    Then close the application
