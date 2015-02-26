a = `curl https://api.github.com/search/repositories?q=iso+language:ruby&per_page=100`
require 'json'
b = JSON.parse(a)
items = b["items"]
names = b["items"].map {|i| i["full_name"]}



# ["tigrish/iso", "jbarnette/isolate", "rails/iso-3166-country-select", "arnau/ISO8601", "alexrabarts/iso_country_codes", "lukes/ISO-3166-Countries-with-Regional-Codes", "koke/iso_countries", "isotope11/jenkins-isotope-style", "elado/isotope", "alphabetum/iso-639", "ginatrapani/isosceles", "apeiros/iso-iban", "hexorx/countries", "axsh/isono", "qertoip/transaction_isolation", "a2800276/8583", "eduardordm/iso7812", "costan/smartcard", "flazz/schematron", "johndavid400/Isotope11_traffic_lights", "theforeman/foreman_bootdisk", "vandrijevik/iso3166", "danwrong/iso_codes", "keita/ruby-iso4217", "scsmith/language_list", "HoyaBoya/country_codes", "mm1/country-list", "a2800276/7816", "corntrace/rspec-isolation", "ruby-rdf/rdf-isomorphic"] 

&per_page=100