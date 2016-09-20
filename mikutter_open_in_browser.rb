Plugin.create(:mikutter_open_in_browser) {
  command(:open_in_browser,
          name: 'open in browser',
          condition: Plugin::Command[:HasOneMessage],
          visible: true,
          role: :timeline) { |opt|
    opt.messages.map(&:perma_link).each { |link| Gtk::openurl(link) }
  }
}
