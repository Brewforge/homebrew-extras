cask "barss" do
  version "1.5.5"
  sha256 "52ec32522a4b5f68382c736049da0234047de96415d7fc9e347bbea80e59f678"

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
