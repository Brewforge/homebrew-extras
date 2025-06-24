cask "barss" do
  version "1.3.0"
  sha256 "795f139cb34cbc0a3b0db78d8094115d115951097522165b1ce49dfcff1e217b"

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
