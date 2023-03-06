@personel_olusturma
Feature: personel_olusturma
  @testrunner
  Scenario Outline: TC01_personel_olustur
    Given kullanici "https://editor.datatables.net/" giderr
    When kullanici new butonuna tiklar
    And kullanici first name "<firstname>" girer
    And kullanici last name "<lastname>" girer
    And kullanici positions "<positions>" girer
    And kullanici office "<office>" girer
    And kullanici extension "<extension>" girer
    And kullanici start_date "<start_date>" girer
    And kullanici salary "<salary>" girer
    And kullanici create buttonuna basar
    When kullanici firstname ile "<firstname>" arar
    Then firstname "<firstname>" in olustugunu test et
    Then close the application
      Examples: personel_bilgileri
        | firstname | lastname | positions    | office   | extension | start_date | salary |
        | fatih     | yilmaz   | QA           | Istanbul | 345       | 2023-04-25 | 20000  |
        | zeynep    | white    | developer    | Ankara   | 34523     | 2023-03-25 | 80000  |
        | ali       | min      | BA           | Izmir    | 34423     | 2023-03-28 | 100000 |
        | feyza     | helal    | PO           | Tokat    | 342523    | 2023-06-25 | 90000  |
        | sakir     | kilmaz   | SDET         | ankara   | 34523     | 2023-07-25 | 80000  |
        | mahmut    | kinik    | Scrum Master | Manisa   | 342523    | 2023-03-24 | 120000 |