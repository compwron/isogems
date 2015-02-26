wikipage = 'http://en.wikipedia.org/wiki/List_of_International_Organization_for_Standardization_standards'
html = `curl #{wikipage}`
# <a href="/wiki/ISO_3394" title="ISO 3394" class="mw-redirect">ISO 3394</a>
isos = html.split("\n").select {|i| i.match /.*title=.+ISO \d+/}
puts isos
# html.select {|i| i.match /^[0-9]$/}