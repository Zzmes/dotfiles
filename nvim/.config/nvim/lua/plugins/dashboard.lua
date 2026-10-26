-- Stationary portrait with rounded pupils; blink is clipped to the two exposed eye openings.
local artwork = {
  { width = 14, height = 6, rows = {
    { { "   ", hl = "MikasaHair" }, { "⣠⣴⣾⣿⣿⣿⣶⣦⣄", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢀⣾⣿⣿⣿⣿⣿⢻⣿⣿⣻⣧", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⣾⣿⣿⣿⡟", hl = "MikasaHair" }, { "⠠⠾⢷", hl = "MikasaSkin" }, { "⣿⡟⢻⣿⣇", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢀⣄⣲⣏⣴", hl = "MikasaSkin" }, { "⢾", hl = "MikasaInk" }, { "⡄", hl = "MikasaEye" }, { "⣿⡟", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠘⠻⢿⣿", hl = "MikasaHair" }, { "⠺⠿⠿⠿⣿⠿", hl = "MikasaSkin" }, { "⣶⠏⠁", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⠈⠛⠻⠿⣿⣿⠿⠇", hl = "MikasaScarf" }, { "⠁", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
  }, blink = {
    { { "   ", hl = "MikasaHair" }, { "⣠⣴⣾⣿⣿⣿⣶⣦⣄", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢀⣾⣿⣿⣿⣿⣿⢻⣿⣿⣻⣧", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⣾⣿⣿⣿⡟", hl = "MikasaHair" }, { "⣠⣾⣷", hl = "MikasaSkin" }, { "⣿⡟⢻⣿⣇", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢀⣖⣲⣏⣴⢚", hl = "MikasaSkin" }, { "⡂", hl = "MikasaEye" }, { "⣿⡟", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠘⠻⢿⣿", hl = "MikasaHair" }, { "⠺⠿⠿⠿⣿⠿", hl = "MikasaSkin" }, { "⣶⠏⠁", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⠈⠛⠻⠿⣿⣿⠿⠇", hl = "MikasaScarf" }, { "⠁", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
  } },
  { width = 18, height = 8, rows = {
    { { "    ", hl = "MikasaHair" }, { "⢀⣤⣶⣶⣿⣿⣿⣷⣦⣤⡀", hl = "MikasaHair" }, { "   ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢀⣾⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣼", hl = "MikasaSkin" }, { "⣿⣿⣿⣶⣭⣵", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⠏", hl = "MikasaHair" }, { "⠐⠛⠻", hl = "MikasaSkin" }, { "⢸⣿⠟", hl = "MikasaHair" }, { "⣇", hl = "MikasaSkin" }, { "⣿⣿⣇", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢸⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢰⣀", hl = "MikasaSkin" }, { "⢠", hl = "MikasaEye" }, { "⣼⢃⣴", hl = "MikasaSkin" }, { "⢾", hl = "MikasaInk" }, { "⢠", hl = "MikasaEye" }, { "⢸⣿⡿", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠈⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣷⣿⣿⣿⢿⣿⣶⠇", hl = "MikasaSkin" }, { "⣼⣿", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⠉⠿⠟⠻", hl = "MikasaHair" }, { "⣶⣶⣦⣤⣤", hl = "MikasaScarf" }, { "⠛", hl = "MikasaSkin" }, { "⠶⡿⠟", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⠉⠛⠻⠿⢿⣿⡿⠿⠃", hl = "MikasaScarf" }, { "    ", hl = "MikasaHair" } },
  }, blink = {
    { { "    ", hl = "MikasaHair" }, { "⢀⣤⣶⣶⣿⣿⣿⣷⣦⣤⡀", hl = "MikasaHair" }, { "   ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢀⣾⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣼", hl = "MikasaSkin" }, { "⣿⣿⣿⣶⣭⣵", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⠏", hl = "MikasaHair" }, { "⣰⣿⣻", hl = "MikasaSkin" }, { "⢸⣿⠟", hl = "MikasaHair" }, { "⣇", hl = "MikasaSkin" }, { "⣿⣿⣇", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢸⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢸⣮", hl = "MikasaSkin" }, { "⢭", hl = "MikasaEye" }, { "⣽⢃⣴", hl = "MikasaSkin" }, { "⠺", hl = "MikasaInk" }, { "⠶", hl = "MikasaSkin" }, { "⢸⣿⡿", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠈⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣷⣿⣿⣿⢿⣿⣾⠇", hl = "MikasaSkin" }, { "⣼⣿", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⠉⠿⠟⠻", hl = "MikasaHair" }, { "⣶⣶⣦⣤⣤", hl = "MikasaScarf" }, { "⠛", hl = "MikasaSkin" }, { "⠶⡿⠟", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⠉⠛⠻⠿⢿⣿⡿⠿⠃", hl = "MikasaScarf" }, { "    ", hl = "MikasaHair" } },
  } },
  { width = 22, height = 11, rows = {
    { { "      ", hl = "MikasaHair" }, { "⣀⣤⣶⣶⣿⣿⣿⣷⣶⣤⣀", hl = "MikasaHair" }, { "     ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣟⣛⠽⡷⡀", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣾", hl = "MikasaSkin" }, { "⢸⣿⣿⣿⢿⣿⣾⣷", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⣸⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⡠", hl = "MikasaEye" }, { "⠐⠛⠻⣿", hl = "MikasaSkin" }, { "⣿⣿⡟", hl = "MikasaHair" }, { "⣧", hl = "MikasaSkin" }, { "⣿⣿⣿⡇", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢳⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⢇", hl = "MikasaEye" }, { "⡗", hl = "MikasaInk" }, { "⡀⣾", hl = "MikasaEye" }, { "⡿", hl = "MikasaSkin" }, { "⣿", hl = "MikasaHair" }, { "⡰", hl = "MikasaEye" }, { "⠉⢉", hl = "MikasaSkin" }, { "⡀", hl = "MikasaEye" }, { "⣿⣿⢿", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢸⢿⣿⣿⣿⣿⣿⡇", hl = "MikasaHair" }, { "⣼⣷⣾⣿⣡⣾⣷⣐", hl = "MikasaSkin" }, { "⣸", hl = "MikasaEye" }, { "⣿⣿⣿⠘", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠈⠘⢿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢼⣿⣿⣿⣿⣟⣿⣿⣿", hl = "MikasaSkin" }, { "⣼⣿⡿⡙", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⠿⠟", hl = "MikasaHair" }, { "⣦⣸⣿⣶⣶⣶⣶⣦⣤", hl = "MikasaScarf" }, { "⠺⡻⠛⠁", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "      ", hl = "MikasaHair" }, { "⠉⠙⠻⠿⣿⣿⣿⣿⣿⡿⠇", hl = "MikasaScarf" }, { "     ", hl = "MikasaHair" } },
    { { "            ", hl = "MikasaHair" }, { "⠉⠁", hl = "MikasaScarf" }, { "        ", hl = "MikasaHair" } },
  }, blink = {
    { { "      ", hl = "MikasaHair" }, { "⣀⣤⣶⣶⣿⣿⣿⣷⣶⣤⣀", hl = "MikasaHair" }, { "     ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣟⣛⠽⡷⡀", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣾", hl = "MikasaSkin" }, { "⢸⣿⣿⣿⢿⣿⣾⣷", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⣸⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⣠", hl = "MikasaEye" }, { "⣐⣻⣻⣿", hl = "MikasaSkin" }, { "⣿⣿⡟", hl = "MikasaHair" }, { "⣧", hl = "MikasaSkin" }, { "⣿⣿⣿⡇", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢳⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⢯", hl = "MikasaEye" }, { "⣭⣉", hl = "MikasaSkin" }, { "⣭", hl = "MikasaEye" }, { "⡿", hl = "MikasaSkin" }, { "⣿", hl = "MikasaHair" }, { "⡰", hl = "MikasaEye" }, { "⣿⣿⡄", hl = "MikasaSkin" }, { "⣿⣿⢿", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢸⢿⣿⣿⣿⣿⣿⡇", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣡⣾⣷⣒", hl = "MikasaSkin" }, { "⣶", hl = "MikasaEye" }, { "⣿⣿⣿⠘", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠈⠘⢿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢼⣿⣿⣿⣿⣟⣿⣿⣿", hl = "MikasaSkin" }, { "⣼⣿⡿⡙", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⠿⠟", hl = "MikasaHair" }, { "⣦⣸⣿⣶⣶⣶⣶⣦⣤", hl = "MikasaScarf" }, { "⠺⡻⠛⠁", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "      ", hl = "MikasaHair" }, { "⠉⠙⠻⠿⣿⣿⣿⣿⣿⡿⠇", hl = "MikasaScarf" }, { "     ", hl = "MikasaHair" } },
    { { "            ", hl = "MikasaHair" }, { "⠉⠁", hl = "MikasaScarf" }, { "        ", hl = "MikasaHair" } },
  } },
  { width = 27, height = 13, rows = {
    { { "        ", hl = "MikasaHair" }, { "⣀⣤⣶⣶⣶⣿⣿⣿⣷⣶⣦⣄⡀", hl = "MikasaHair" }, { "      ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄", hl = "MikasaHair" }, { "    ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣻⢿⣷⡀", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢸⣿⣿⣿⣷⣮⣭⣛⣱⡀", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣼⣯⣧", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⢻⣿⣿⣿⣷", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢠⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⠒⠛⠛⠛⢿", hl = "MikasaSkin" }, { "⣸⣿⣿", hl = "MikasaHair" }, { "⣴⣷", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⡇", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⡆⣿⣿⣿⣿⣿⣿⣿⣿⢯", hl = "MikasaHair" }, { "⢠", hl = "MikasaEye" }, { "⢾", hl = "MikasaInk" }, { "⢀⣀⡿", hl = "MikasaEye" }, { "⣿", hl = "MikasaSkin" }, { "⣿", hl = "MikasaHair" }, { "⢀", hl = "MikasaSkin" }, { "⡌", hl = "MikasaEye" }, { "⠉⢉", hl = "MikasaSkin" }, { "⡂", hl = "MikasaEye" }, { "⢸⣿⣿⢳", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢱⣸⣷⣤⣼⣿⢃", hl = "MikasaSkin" }, { "⠏", hl = "MikasaHair" }, { "⣿", hl = "MikasaSkin" }, { "⡇⠠⣸⠃", hl = "MikasaEye" }, { "⢸⣿⣿⠘", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⠇⣿⣿⣿⣿⣿⣿⣟⡇", hl = "MikasaHair" }, { "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⡏", hl = "MikasaSkin" }, { "⣤⣼⡿⡏⠈", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⠈⠙⠻⢿⣿⣿⣿", hl = "MikasaHair" }, { "⠹⠻⠿⠿⠿⠿⠷⣿⣿⠿", hl = "MikasaSkin" }, { "⣰⣿⣿⡿⠁", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "      ", hl = "MikasaHair" }, { "⠉", hl = "MikasaHair" }, { "⢴⣾⣷⣬⣿⣿⣿⣿⣿⣿⣿⣷⣶⡆", hl = "MikasaScarf" }, { "⠝⠉", hl = "MikasaHair" }, { "    ", hl = "MikasaHair" } },
    { { "        ", hl = "MikasaHair" }, { "⠈⠉⠛⠿⠿⣿⣿⣿⣿⣿⡿⠟⠂", hl = "MikasaScarf" }, { "      ", hl = "MikasaHair" } },
    { { "               ", hl = "MikasaHair" }, { "⠉⠁", hl = "MikasaScarf" }, { "          ", hl = "MikasaHair" } },
  }, blink = {
    { { "        ", hl = "MikasaHair" }, { "⣀⣤⣶⣶⣶⣿⣿⣿⣷⣶⣦⣄⡀", hl = "MikasaHair" }, { "      ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄", hl = "MikasaHair" }, { "    ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣻⢿⣷⡀", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢸⣿⣿⣿⣷⣮⣭⣛⣱⡀", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣼⣯⣧", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⢻⣿⣿⣿⣷", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢠⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⣶⣿⣿⣿⢿", hl = "MikasaSkin" }, { "⣸⣿⣿", hl = "MikasaHair" }, { "⣴⣷", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⡇", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⡆⣿⣿⣿⣿⣿⣿⣿⣿⢯", hl = "MikasaHair" }, { "⢨", hl = "MikasaEye" }, { "⣍⣙⣛⡛⣿", hl = "MikasaSkin" }, { "⣿", hl = "MikasaHair" }, { "⢀", hl = "MikasaSkin" }, { "⣬", hl = "MikasaEye" }, { "⣿⣯", hl = "MikasaSkin" }, { "⡆", hl = "MikasaEye" }, { "⢸⣿⣿⢳", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢱⣸⣿⣿⣽⣿⢃", hl = "MikasaSkin" }, { "⠏", hl = "MikasaHair" }, { "⣿", hl = "MikasaSkin" }, { "⡗", hl = "MikasaEye" }, { "⣭", hl = "MikasaSkin" }, { "⣭", hl = "MikasaEye" }, { "⠁", hl = "MikasaSkin" }, { "⢸⣿⣿⠘", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⠇⣿⣿⣿⣿⣿⣿⣟⡇", hl = "MikasaHair" }, { "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⡏", hl = "MikasaSkin" }, { "⣤⣼⡿⡏⠈", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⠈⠙⠻⢿⣿⣿⣿", hl = "MikasaHair" }, { "⠹⠻⠿⠿⠿⠿⠷⣿⣿⠿", hl = "MikasaSkin" }, { "⣰⣿⣿⡿⠁", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "      ", hl = "MikasaHair" }, { "⠉", hl = "MikasaHair" }, { "⢴⣾⣷⣬⣿⣿⣿⣿⣿⣿⣿⣷⣶⡆", hl = "MikasaScarf" }, { "⠝⠉", hl = "MikasaHair" }, { "    ", hl = "MikasaHair" } },
    { { "        ", hl = "MikasaHair" }, { "⠈⠉⠛⠿⠿⣿⣿⣿⣿⣿⡿⠟⠂", hl = "MikasaScarf" }, { "      ", hl = "MikasaHair" } },
    { { "               ", hl = "MikasaHair" }, { "⠉⠁", hl = "MikasaScarf" }, { "          ", hl = "MikasaHair" } },
  } },
  { width = 32, height = 15, rows = {
    { { "          ", hl = "MikasaHair" }, { "⣀⣤⣶⣶⣶⣾⣿⣿⣿⣶⣶⣦⣄⡀", hl = "MikasaHair" }, { "        ", hl = "MikasaHair" } },
    { { "       ", hl = "MikasaHair" }, { "⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀", hl = "MikasaHair" }, { "     ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣧⡀", hl = "MikasaHair" }, { "   ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣓⡺⠭⣿⠿⡄", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟", hl = "MikasaHair" }, { "⣾", hl = "MikasaSkin" }, { "⢸⣿⣿⣿⣿⣿⣿⣷⣦⣷⣾⡀", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⡿", hl = "MikasaHair" }, { "⣴⣿⣾⣿", hl = "MikasaSkin" }, { "⢷⣿⣿⣿⣟⢸⣿⣿⣿⣿⣷", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢀", hl = "MikasaEye" }, { "⠚⠋⠉⠙⠛⢿", hl = "MikasaSkin" }, { "⢸⣿⣿⡿", hl = "MikasaHair" }, { "⣾⣿", hl = "MikasaSkin" }, { "⢿⣿⣿⣿⣿⡆", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠘⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯", hl = "MikasaHair" }, { "⠸", hl = "MikasaEye" }, { "⢾⡗", hl = "MikasaInk" }, { "⢀⢰⡿", hl = "MikasaEye" }, { "⣿⠃", hl = "MikasaSkin" }, { "⡇", hl = "MikasaHair" }, { "⣠⠊", hl = "MikasaEye" }, { "⠉⠉", hl = "MikasaSkin" }, { "⡣", hl = "MikasaEye" }, { "⢸⣿⣿⣿⢧", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠂⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢧", hl = "MikasaSkin" }, { "⢸", hl = "MikasaEye" }, { "⣧⣄", hl = "MikasaSkin" }, { "⣉", hl = "MikasaEye" }, { "⣾⣾⡏⢀⣴⣇", hl = "MikasaSkin" }, { "⢾", hl = "MikasaInk" }, { "⣠⣸⠏", hl = "MikasaEye" }, { "⣇⣿⣿⡿⢸", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢻⢹⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢸⣷⣿⣿⣿⣿⣿⣶⣿⣿⣿⣧⣤⣶", hl = "MikasaSkin" }, { "⠿⠿⣿⣿⡇⠈", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⠈⠈⠟⢿⣿⣿⣿⣿⣿⣧", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⣿⣟⣻⣿⣿⣿⡿", hl = "MikasaSkin" }, { "⣼⣿⣿⡟⠹⠁", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "      ", hl = "MikasaHair" }, { "⠈⢹⣿⣿⠻⢿", hl = "MikasaHair" }, { "⢴⣶⣶⣶⣶⣤⣤⣤⣤", hl = "MikasaScarf" }, { "⠿⠟", hl = "MikasaSkin" }, { "⣶⣾⢿⣿⠻⠁", hl = "MikasaHair" }, { "   ", hl = "MikasaHair" } },
    { { "       ", hl = "MikasaHair" }, { "⠈⠻⠿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃", hl = "MikasaScarf" }, { "⠊", hl = "MikasaHair" }, { "      ", hl = "MikasaHair" } },
    { { "           ", hl = "MikasaHair" }, { "⠉⠙⠻⠿⢿⣿⣿⣿⣿⣿⠿⠿⠛", hl = "MikasaScarf" }, { "        ", hl = "MikasaHair" } },
    { { "                 ", hl = "MikasaHair" }, { "⠈⠉⠁", hl = "MikasaScarf" }, { "            ", hl = "MikasaHair" } },
  }, blink = {
    { { "          ", hl = "MikasaHair" }, { "⣀⣤⣶⣶⣶⣾⣿⣿⣿⣶⣶⣦⣄⡀", hl = "MikasaHair" }, { "        ", hl = "MikasaHair" } },
    { { "       ", hl = "MikasaHair" }, { "⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀", hl = "MikasaHair" }, { "     ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣧⡀", hl = "MikasaHair" }, { "   ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣓⡺⠭⣿⠿⡄", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟", hl = "MikasaHair" }, { "⣾", hl = "MikasaSkin" }, { "⢸⣿⣿⣿⣿⣿⣿⣷⣦⣷⣾⡀", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⡿", hl = "MikasaHair" }, { "⣴⣿⣾⣿", hl = "MikasaSkin" }, { "⢷⣿⣿⣿⣟⢸⣿⣿⣿⣿⣷", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢠⣾⣯⣭⣽⣿⢿", hl = "MikasaSkin" }, { "⢸⣿⣿⡿", hl = "MikasaHair" }, { "⣾⣿", hl = "MikasaSkin" }, { "⢿⣿⣿⣿⣿⡆", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠘⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯", hl = "MikasaHair" }, { "⠨", hl = "MikasaEye" }, { "⣍⣛⣛⣛⡛⣿⠃", hl = "MikasaSkin" }, { "⡇", hl = "MikasaHair" }, { "⣠⣮", hl = "MikasaEye" }, { "⣽⣭", hl = "MikasaSkin" }, { "⡧", hl = "MikasaEye" }, { "⢸⣿⣿⣿⢧", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⠂⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢧", hl = "MikasaSkin" }, { "⢸", hl = "MikasaEye" }, { "⣯⣿", hl = "MikasaSkin" }, { "⣛", hl = "MikasaEye" }, { "⣿⣿⡏⢀⣴⣇⢭⣙⣛", hl = "MikasaSkin" }, { "⠋", hl = "MikasaEye" }, { "⣇⣿⣿⡿⢸", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢻⢹⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⢸⣷⣿⣿⣿⣿⣿⣶⣿⣿⣿⣧⣭⣷", hl = "MikasaSkin" }, { "⠿⠿⣿⣿⡇⠈", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⠈⠈⠟⢿⣿⣿⣿⣿⣿⣧", hl = "MikasaHair" }, { "⣼⣿⣿⣿⣿⣿⣿⣟⣻⣿⣿⣿⡿", hl = "MikasaSkin" }, { "⣼⣿⣿⡟⠹⠁", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "      ", hl = "MikasaHair" }, { "⠈⢹⣿⣿⠻⢿", hl = "MikasaHair" }, { "⢴⣶⣶⣶⣶⣤⣤⣤⣤", hl = "MikasaScarf" }, { "⠿⠟", hl = "MikasaSkin" }, { "⣶⣾⢿⣿⠻⠁", hl = "MikasaHair" }, { "   ", hl = "MikasaHair" } },
    { { "       ", hl = "MikasaHair" }, { "⠈⠻⠿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃", hl = "MikasaScarf" }, { "⠊", hl = "MikasaHair" }, { "      ", hl = "MikasaHair" } },
    { { "           ", hl = "MikasaHair" }, { "⠉⠙⠻⠿⢿⣿⣿⣿⣿⣿⠿⠿⠛", hl = "MikasaScarf" }, { "        ", hl = "MikasaHair" } },
    { { "                 ", hl = "MikasaHair" }, { "⠈⠉⠁", hl = "MikasaScarf" }, { "            ", hl = "MikasaHair" } },
  } },
  { width = 36, height = 17, rows = {
    { { "           ", hl = "MikasaHair" }, { "⢀⣠⣤⣶⣶⣶⣾⣿⣿⣿⣷⣶⣦⣤⣀", hl = "MikasaHair" }, { "          ", hl = "MikasaHair" } },
    { { "        ", hl = "MikasaHair" }, { "⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀", hl = "MikasaHair" }, { "      ", hl = "MikasaHair" } },
    { { "       ", hl = "MikasaHair" }, { "⣴⣿⣽⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀", hl = "MikasaHair" }, { "    ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⣛⡿⢿⣿⡄", hl = "MikasaHair" }, { "   ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣾", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⣷⣦⣬⣍⡛⢋⢙⡄", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏", hl = "MikasaHair" }, { "⡿⢿", hl = "MikasaSkin" }, { "⢻⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⡄", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠟", hl = "MikasaHair" }, { "⣾⣿⣿⣿⣧", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⣇", hl = "MikasaSkin" }, { "⣽⣿⣿⣿⣿⣷", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⡞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇", hl = "MikasaHair" }, { "⡐", hl = "MikasaEye" }, { "⠋⠉⠉⠉", hl = "MikasaSkin" }, { "⡙", hl = "MikasaEye" }, { "⢻⣿", hl = "MikasaSkin" }, { "⣿⣿⣿⡟", hl = "MikasaHair" }, { "⣾⣿⡄", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⣿⡆", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢰⢡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸", hl = "MikasaHair" }, { "⣇", hl = "MikasaEye" }, { "⢾⡗", hl = "MikasaInk" }, { "⢀⢀⡗", hl = "MikasaEye" }, { "⣼⡿", hl = "MikasaSkin" }, { "⣿⣿", hl = "MikasaHair" }, { "⣠", hl = "MikasaEye" }, { "⠛⠉⠉⠓", hl = "MikasaSkin" }, { "⡄", hl = "MikasaEye" }, { "⣿⣿⣿⣿⣧", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇", hl = "MikasaHair" }, { "⡄⢻⣆⣀", hl = "MikasaSkin" }, { "⢋⣼", hl = "MikasaEye" }, { "⣼⣿⠃", hl = "MikasaSkin" }, { "⠟", hl = "MikasaHair" }, { "⣾", hl = "MikasaSkin" }, { "⢸", hl = "MikasaEye" }, { "⢾", hl = "MikasaInk" }, { "⢀⢠⡗", hl = "MikasaEye" }, { "⣿⣿⣿⣿⡏⢸", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢸⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇", hl = "MikasaHair" }, { "⣿⣸⣿⣿⣿⣿⣿⣧⣴⣿⣿⣷⣄", hl = "MikasaSkin" }, { "⣋⣼⠃", hl = "MikasaEye" }, { "⣿⢹⣿⣿⡇⠘", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⠘⠄⢿⢿⣿⣿⣿⣿⣿⣿⣿⠻", hl = "MikasaHair" }, { "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟", hl = "MikasaSkin" }, { "⣶⣶⣾⡿⢹⠁", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⠈⠊⠫⠻⣿⣿⣿⣿⣿⣇", hl = "MikasaHair" }, { "⠿⠿⠿⣿⣿⣿⣿⣿⣶⣿⣿⣿⡿⠛", hl = "MikasaSkin" }, { "⣿⣿⣿⡿⠁⠃", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "        ", hl = "MikasaHair" }, { "⠘⠿⠿", hl = "MikasaHair" }, { "⣶⣦", hl = "MikasaScarf" }, { "⢷", hl = "MikasaHair" }, { "⢿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤", hl = "MikasaScarf" }, { "⠛⠿⢻⡿⠋⠁", hl = "MikasaHair" }, { "    ", hl = "MikasaHair" } },
    { { "         ", hl = "MikasaHair" }, { "⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaScarf" }, { "⠂⠁", hl = "MikasaHair" }, { "       ", hl = "MikasaHair" } },
    { { "             ", hl = "MikasaHair" }, { "⠁", hl = "MikasaHair" }, { "⠙⠛⠿⠿⣿⣿⣿⣿⣿⡿⠿⠟⠋", hl = "MikasaScarf" }, { "         ", hl = "MikasaHair" } },
    { { "                    ", hl = "MikasaHair" }, { "⠁", hl = "MikasaHair" }, { "⠁", hl = "MikasaScarf" }, { "              ", hl = "MikasaHair" } },
  }, blink = {
    { { "           ", hl = "MikasaHair" }, { "⢀⣠⣤⣶⣶⣶⣾⣿⣿⣿⣷⣶⣦⣤⣀", hl = "MikasaHair" }, { "          ", hl = "MikasaHair" } },
    { { "        ", hl = "MikasaHair" }, { "⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀", hl = "MikasaHair" }, { "      ", hl = "MikasaHair" } },
    { { "       ", hl = "MikasaHair" }, { "⣴⣿⣽⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀", hl = "MikasaHair" }, { "    ", hl = "MikasaHair" } },
    { { "     ", hl = "MikasaHair" }, { "⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⣛⡿⢿⣿⡄", hl = "MikasaHair" }, { "   ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿", hl = "MikasaHair" }, { "⣾", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⣷⣦⣬⣍⡛⢋⢙⡄", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "   ", hl = "MikasaHair" }, { "⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏", hl = "MikasaHair" }, { "⡿⢿", hl = "MikasaSkin" }, { "⢻⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⡄", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠟", hl = "MikasaHair" }, { "⣾⣿⣿⣿⣧", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⣿", hl = "MikasaHair" }, { "⣇", hl = "MikasaSkin" }, { "⣽⣿⣿⣿⣿⣷", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⡞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇", hl = "MikasaHair" }, { "⣴", hl = "MikasaEye" }, { "⣿⣿⣿⣿", hl = "MikasaSkin" }, { "⣽", hl = "MikasaEye" }, { "⣿⣿", hl = "MikasaSkin" }, { "⣿⣿⣿⡟", hl = "MikasaHair" }, { "⣾⣿⡄", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⣿⡆", hl = "MikasaHair" } },
    { { " ", hl = "MikasaHair" }, { "⢰⢡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸", hl = "MikasaHair" }, { "⣏", hl = "MikasaEye" }, { "⣙⣛⡛⢛⣛⣿⡿", hl = "MikasaSkin" }, { "⣿⣿", hl = "MikasaHair" }, { "⣠", hl = "MikasaEye" }, { "⣿⣭⣭⣗", hl = "MikasaSkin" }, { "⡄", hl = "MikasaEye" }, { "⣿⣿⣿⣿⣧", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇", hl = "MikasaHair" }, { "⡄⢻⣟⣿", hl = "MikasaSkin" }, { "⢿⣿", hl = "MikasaEye" }, { "⣿⣿⠃", hl = "MikasaSkin" }, { "⠟", hl = "MikasaHair" }, { "⣾", hl = "MikasaSkin" }, { "⢸", hl = "MikasaEye" }, { "⣛⠛⠻⠿", hl = "MikasaSkin" }, { "⣿⣿⣿⣿⡏⢸", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⢸⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇", hl = "MikasaHair" }, { "⣿⣸⣿⣿⣿⣿⣿⣧⣴⣿⣿⣷⣜", hl = "MikasaSkin" }, { "⣛⣿⠃", hl = "MikasaEye" }, { "⣿⢹⣿⣿⡇⠘", hl = "MikasaHair" } },
    { { "  ", hl = "MikasaHair" }, { "⠘⠄⢿⢿⣿⣿⣿⣿⣿⣿⣿⠻", hl = "MikasaHair" }, { "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟", hl = "MikasaSkin" }, { "⣶⣶⣾⡿⢹⠁", hl = "MikasaHair" }, { " ", hl = "MikasaHair" } },
    { { "    ", hl = "MikasaHair" }, { "⠈⠊⠫⠻⣿⣿⣿⣿⣿⣇", hl = "MikasaHair" }, { "⠿⠿⠿⣿⣿⣿⣿⣿⣶⣿⣿⣿⡿⠛", hl = "MikasaSkin" }, { "⣿⣿⣿⡿⠁⠃", hl = "MikasaHair" }, { "  ", hl = "MikasaHair" } },
    { { "        ", hl = "MikasaHair" }, { "⠘⠿⠿", hl = "MikasaHair" }, { "⣶⣦", hl = "MikasaScarf" }, { "⢷", hl = "MikasaHair" }, { "⢿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤", hl = "MikasaScarf" }, { "⠛⠿⢻⡿⠋⠁", hl = "MikasaHair" }, { "    ", hl = "MikasaHair" } },
    { { "         ", hl = "MikasaHair" }, { "⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿", hl = "MikasaScarf" }, { "⠂⠁", hl = "MikasaHair" }, { "       ", hl = "MikasaHair" } },
    { { "             ", hl = "MikasaHair" }, { "⠁", hl = "MikasaHair" }, { "⠙⠛⠿⠿⣿⣿⣿⣿⣿⡿⠿⠟⠋", hl = "MikasaScarf" }, { "         ", hl = "MikasaHair" } },
    { { "                    ", hl = "MikasaHair" }, { "⠁", hl = "MikasaHair" }, { "⠁", hl = "MikasaScarf" }, { "              ", hl = "MikasaHair" } },
  } },
}

local function set_highlights()
  local palette = {
    rosewater = "#f2d5cf",
    red = "#e78284", text = "#c6d0f5", surface2 = "#626880",
  }
  local ok, palettes = pcall(require, "catppuccin.palettes")
  if ok then
    local flavour = (vim.g.colors_name or ""):match("catppuccin%-(%a+)") or "frappe"
    palette = palettes.get_palette(flavour)
  end
  for group, color in pairs({
    MikasaHair = palette.surface2,
    MikasaSkin = palette.rosewater,
    MikasaScarf = palette.red,
    MikasaEye = palette.text,
    MikasaInk = palette.surface2,
  }) do
    vim.api.nvim_set_hl(0, group, { fg = color })
  end
  for group, color in pairs({
    MikasaDateWeekday = "#ff9acb", MikasaDateMonth = "#ffd166", MikasaDateNumber = "#67e8d1",
  }) do
    vim.api.nvim_set_hl(0, group, { fg = color, bold = true })
  end
end

local function blank(width)
  return { { (" "):rep(width) } }
end

local function visible(self)
  return self.win and vim.api.nvim_win_is_valid(self.win)
    and vim.api.nvim_buf_is_valid(self.buf) and vim.api.nvim_win_get_buf(self.win) == self.buf
end

local function portrait_text(frame, row, width)
  local text = { { (" "):rep(frame.margin) } }
  vim.list_extend(text, vim.deepcopy(row))
  text[#text + 1] = { (" "):rep(width - frame.variant.width - frame.margin) }
  return text
end

local function paint_frame(self)
  if not visible(self) then return end
  local state = self._mikasa
  local frame = state.frame
  if not frame then return end
  local rows = state.closed and frame.variant.blink or frame.variant.rows
  local view = vim.api.nvim_win_call(self.win, vim.fn.winsaveview)
  local modifiable = vim.bo[self.buf].modifiable
  vim.bo[self.buf].modifiable = true
  -- Replace changed portrait rows in place; preserve layout, menu and viewport.
  for index, item in ipairs(frame.items) do
    local text = portrait_text(frame, rows[index], self.opts.width)
    if item._ and not vim.deep_equal(item.text, text) then
      local row = item._.row
      local line = self.lines[row]:sub(1, item._.col + 1)
      local col = #line
      for _, run in ipairs(text) do line = line .. run[1] end
      vim.api.nvim_buf_clear_namespace(self.buf, Snacks.dashboard.ns, row - 1, row)
      vim.api.nvim_buf_set_lines(self.buf, row - 1, row, false, { line })
      for _, run in ipairs(text) do
        if run.hl then
          vim.api.nvim_buf_set_extmark(self.buf, Snacks.dashboard.ns, row - 1, col, {
            end_col = col + #run[1], hl_group = run.hl,
          })
        end
        col = col + #run[1]
      end
      self.lines[row], item.text = line, text
    end
  end
  vim.bo[self.buf].modifiable = modifiable
  vim.api.nvim_win_call(self.win, function() vim.fn.winrestview(view) end)
end

local function attach_dashboard(self)
  if self._mikasa then return end
  local state = { closed = false, timers = {}, stopped = true, generation = 0 }
  self._mikasa = state
  local function stop()
    state.generation = state.generation + 1
    state.stopped = true
    state.closed = false
    for _, timer in ipairs(state.timers) do
      if not timer:is_closing() then timer:stop(); timer:close() end
    end
    state.timers = {}
  end
  local function later(delay, callback)
    local generation = state.generation
    state.timers[1] = vim.defer_fn(function()
      if generation ~= state.generation then return end
      state.timers = {}
      if state.stopped or not visible(self) or vim.api.nvim_get_current_win() ~= self.win then stop(); return end
      callback()
    end, delay)
  end
  local function blink()
    state.closed = true
    paint_frame(self)
    later(130, function()
      state.closed = false
      paint_frame(self)
      later(math.random(3000, 5000), blink)
    end)
  end
  local function start()
    if not state.stopped or not visible(self) or vim.api.nvim_get_current_win() ~= self.win then return end
    state.stopped = false
    paint_frame(self)
    later(450, blink)
  end
  vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave", "BufWipeout", "BufDelete" }, {
    group = self.augroup, buffer = self.buf, callback = stop,
  })
  vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
    group = self.augroup, buffer = self.buf,
    callback = function() vim.schedule(start) end,
  })
  start()
end

-- Wrap by display cells (Chinese characters occupy two), preserving highlights.
local function wrap_runs(runs, width)
  local rows, pending, cells = {}, {}, 0
  local function emit(count)
    local row = {}
    for i = 1, count do
      local char = pending[i]
      if row[#row] and row[#row].hl == char.hl then
        row[#row][1] = row[#row][1] .. char[1]
      else
        row[#row + 1] = { char[1], hl = char.hl }
      end
    end
    rows[#rows + 1] = { text = row, align = "center" }
    local rest = {}
    for i = count + 1, #pending do rest[#rest + 1] = pending[i] end
    while rest[1] and rest[1][1] == " " do table.remove(rest, 1) end
    pending, cells = rest, 0
    for _, char in ipairs(pending) do cells = cells + vim.fn.strdisplaywidth(char[1]) end
  end
  for _, run in ipairs(runs) do
    for _, char in ipairs(vim.fn.split(run[1], "\\zs")) do
      local size = vim.fn.strdisplaywidth(char)
      if cells + size > width then
        local split = #pending
        for i = #pending, 2, -1 do
          if pending[i][1] == " " then split = i - 1; break end
        end
        emit(split)
      end
      if #pending > 0 or char ~= " " then
        pending[#pending + 1] = { char, hl = run.hl }
        cells = cells + size
      end
    end
  end
  if #pending > 0 then emit(#pending) end
  return rows
end

return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    set_highlights()
    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("MikasaDashboardColors", { clear = true }),
      callback = set_highlights,
    })
    opts.dashboard = opts.dashboard or {}
    opts.dashboard.enabled = true
    opts.dashboard.width = 60
    opts.dashboard.sections = function(self)
      attach_dashboard(self)
      local available = vim.api.nvim_win_get_width(self.win)
      local height = vim.api.nvim_win_get_height(self.win)
      self.opts.width = math.min(60, available)
      local count = 0
      for _, item in ipairs(self:resolve({ section = "keys" })) do
        if not item.hidden then count = count + 1 end
      end
      local startup = Snacks.dashboard.sections.startup({ icon = "" })
      local footer_rows = wrap_runs(startup.text, self.opts.width)
      local overhead = #footer_rows + 4
      local desired = artwork[1]
      for _, variant in ipairs(artwork) do
        if variant.width <= math.min(36, self.opts.width) then desired = variant end
      end
      local menu_gap = height >= desired.height + count * 2 - 1 + overhead and 1 or 0
      local menu_height = count + math.max(0, count - 1) * menu_gap
      local max_height = height - menu_height - overhead
      -- Reduce decorative whitespace only when space is genuinely limited.
      local roomy = max_height >= artwork[1].height
      if not roomy then
        overhead = overhead - 2
        max_height = height - menu_height - overhead
      end
      local selected = artwork[1]
      for _, variant in ipairs(artwork) do
        if variant.width <= math.min(36, self.opts.width) and variant.height <= max_height then
          selected = variant
        end
      end
      local margin = math.floor((self.opts.width - selected.width) / 2)
      local result = {}
      local frame = { variant = selected, margin = margin, items = {} }
      self._mikasa.frame = frame
      for _, row in ipairs(self._mikasa.closed and selected.blink or selected.rows) do
        local item = { text = portrait_text(frame, row, self.opts.width) }
        frame.items[#frame.items + 1] = item
        result[#result + 1] = item
      end
      local date = {
        { os.date("%A") .. ", ", hl = "MikasaDateWeekday" },
        { os.date("%B") .. " ", hl = "MikasaDateMonth" },
        { os.date("%d, %Y"), hl = "MikasaDateNumber" },
      }
      if vim.fn.strdisplaywidth(os.date("%A, %B %d, %Y")) > self.opts.width then
        date = {
          { os.date("%Y") .. "-", hl = "MikasaDateNumber" },
          { os.date("%m"), hl = "MikasaDateMonth" },
          { "-" .. os.date("%d"), hl = "MikasaDateNumber" },
        }
      end
      result[#result + 1] = { text = blank(self.opts.width) }
      result[#result + 1] = { text = date, align = "center" }
      if roomy then result[#result + 1] = { text = blank(self.opts.width) } end
      -- Keep LazyVim's original width, icons, shortcuts, Projects and all extras.
      result[#result + 1] = { section = "keys", gap = menu_gap }
      if roomy then result[#result + 1] = { text = blank(self.opts.width) } end
      -- Use the plugin's original wording, precision and footer/special colors.
      if #footer_rows == 1 then
        result[#result + 1] = { section = "startup", icon = "" }
      else
        vim.list_extend(result, footer_rows)
      end
      return result
    end
  end,
}
