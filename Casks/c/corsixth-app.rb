cask "corsixth-app" do
  version "0.70.3"
  sha256 "eb92be1ad1703790721b3474627540a40e126d080f43b1437cbc28064e521804"

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
