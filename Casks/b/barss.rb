cask "barss" do
  version "1.6.2"
  sha256 "a26b3ae95a9c109f98a5cf8195d66cbb6a98f9bd8d8de1f4ad1932650acf2d1c"

  url "https://github.com/relikd/baRSS/releases/download/v#{version}/baRSS_#{version}.zip",
      verified: "github.com/relikd/baRSS/"
  name "baRSS"
  desc "Menu Bar RSS reader"
  homepage "https://relikd.de/projects/barss/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "baRSS.app"

  zap trash: [
    "~/Library/Application Scripts/de.relikd.baRSS",
    "~/Library/Containers/de.relikd.baRSS",
  ]
end
