cask "corsixth" do
  version "0.67"
  sha256 "f99a4976416763eeca683f56b56b25787e1a84751e74995675fc2e6124256e74"

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH.#{version}-1.dmg"
  name "CorsixTH"
  desc "Open source clone of Theme Hospital"
  homepage "https://github.com/CorsixTH/CorsixTH/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "CorsixTH.app"

  zap trash: ""
end
