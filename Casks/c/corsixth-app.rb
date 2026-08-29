cask "corsixth-app" do
  version "0.70.1"
  sha256 "90910ded3830cda8204cf2958fb49f174f34c9c279eb5fbf43e17a15fd6ef9c8"

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH-#{version}.dmg"
  name "CorsixTH"
  desc "Open source clone of Theme Hospital"
  homepage "https://github.com/CorsixTH/CorsixTH/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "CorsixTH.app"

  zap trash: "~/Library/Saved Application State/com.macsourceports.CorsixTH.savedState"
end
