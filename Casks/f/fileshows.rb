cask "fileshows" do
  version "1.0.2"
  sha256 "37007ec49db45741841fda55038a5d1e95a2a72c695c12876e68fb2aff260bdf"

  url "https://webpath.iche2.com/release/FileShows-#{version}-universal.dmg"
  name "FileShows"
  desc "File searcher with glob patterns and file streams"
  homepage "https://webpath.iche2.com/fssdoc/en/"

  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/FileShows-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "FileShows.app"

  zap trash: "~/Library/Caches/com.iche2.fileshows"
end
