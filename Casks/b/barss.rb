cask "barss" do
  version "1.4.1"
  sha256 "3f62269f66ce35bdf13f76416cf3f970f6653a381189b06b757ca262887d2893"

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
