# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "fileshows" do
  version "1.0.2"
  # version "1.0.0"  
  # sha256 "c85d6ed784429dced7842626a9bf9fed03d8fbf1b9bb9c899d50d69cfaafb0bd"
  sha256 :no_check

  url "https://webpath.iche2.com/release/FileShows-#{version}-universal.dmg"
  name "FileShows"
  desc "FileShows: A file searcher with glob patterns and file streams."
  homepage "https://webpath.iche2.com/fssdoc/en/"

  def caveats
    <<~EOS
      FileShows: Pure, Efficient, and Private Local File Management.

      Core Features:
      - Privacy First: Offline, ad-free, and registration-free.
      - Intelligent Search: Supports glob patterns and regex for recursive matching.
      - Advanced Ops: Duplicate detection, incremental mirroring, secure deletion, and CRON-based scheduling.
      - Automation: Supports custom rule scripts for complex batch processing.

      Quick Start & Documentation:
      - Web Manual: https://webpath.iche2.com/fssdoc/en/started/
      - MacOS Privacy Guide: https://webpath.iche2.com/fssdoc/en/faq/
      - Help: Run `brew home fileshows` to open the project homepage.

      Power User Tip:
      For advanced CLI scripting and automation, check out the companion tool 'ft':
      https://github.com/huanguan1978/ft/
    EOS
  end

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/FileShows-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "FileShows.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
