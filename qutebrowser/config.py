config.load_autoconfig()

# window related stuff
c.window.hide_decoration = True

#command menu stuff
c.completion.height = "15%"
c.colors.completion.item.selected.bg = "#4261a1"
c.colors.completion.item.selected.fg = "#ffffff"
c.colors.completion.match.fg = "#5cceff"
c.colors.completion.category.bg = "#1e1e1e"
c.colors.completion.category.bg = "#696969"

# dark mode stuff
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = "lightness-cielab"
c.colors.webpage.darkmode.policy.images = "never"
c.colors.webpage.darkmode.policy.page = "smart"

#status bar is bottom bar
c.colors.statusbar.normal.bg = "#404040"
c.colors.statusbar.insert.bg = "green"
c.colors.statusbar.command.bg = "#303030"
c.colors.statusbar.url.fg = "#9edbff"

c.colors.statusbar.url.success.https.fg = "#59d3ff"
c.colors.statusbar.url.success.http.fg = "#59d3ff"

c.colors.messages.error.bg = "#ba2d2d"
c.colors.messages.warning.bg = "#bf7128"
c.colors.messages.info.bg = "#a3bd20"

#tabs management
c.colors.tabs.odd.bg = "#3a3a3a"
c.colors.tabs.even.bg = "#3a3a3a"

c.colors.tabs.selected.even.bg = "#515151"
c.colors.tabs.selected.odd.bg = "#515151"

c.colors.tabs.odd.fg = "#ffffff"
c.colors.tabs.even.fg = "#ffffff"
c.colors.tabs.selected.odd.fg = "#ffffff"
c.colors.tabs.selected.even.fg = "#ffffff"

# fonts management
c.fonts.default_family = "Monospace"
c.fonts.statusbar = "10pt Monospace"
c.fonts.tabs.selected = "14pt Monospace"
c.fonts.tabs.unselected = "14pt Monospace"

# search management
c.url.start_pages = ["https://startpage.com"]

c.url.searchengines = {
    'DEFAULT': 'https://www.startpage.com/sp/search?query={}',
    'ddg': 'https"//duckduckgo.com/?q={}',
    'wiki': 'https://en.wikipedia.org/wiki/Special:Search?search={}'
}
