cask "corsixth-app" do
  version "0.69.1"
  sha256 "a588dd52eb795496f686913c7ed210a8abb374a2ee9df3247e2f2559414abadc"

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH-#{version}.dmg"
  name "CorsixTH"
  desc "Open source clone of Theme Hospital"
  homepage "https://github.com/CorsixTH/CorsixTH/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CorsixTH.app"

  zap trash: "~/Library/Saved Application State/com.macsourceports.CorsixTH.savedState"
end
