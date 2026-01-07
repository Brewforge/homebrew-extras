cask "anx-reader" do
  version "1.10.1"
  sha256 "a5c2053518dd40cefccfe5289c908f1df19ee6453e27ebea9c7539cce9616002"

  url "https://github.com/Anxcye/anx-reader/releases/download/v#{version}/Anx-Reader-macos-#{version}.dmg"
  name "AnxReader"
  desc "Thoughtfully crafted e-book reader for book lovers"
  homepage "https://github.com/Anxcye/anx-reader/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">=:monterey"

  app "AnxReader.app"

  zap trash: [
    "~/Library/Application Scripts/com.anxcye.anxReader",
    "~/Library/Containers/com.anxcye.anxReader",
  ]
end
