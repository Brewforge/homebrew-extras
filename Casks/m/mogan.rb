cask "mogan" do
  arch arm: "arm", intel: "x64"

  version "2025.2.1"
  sha256 arm:   "003b71c2ade42d0c0ac85f2e262c7c1f149401dee33615086b1b902f558a4d80",
         intel: "96cce6e61ad09efd671c659c67e0b2e309ac2b6ea59465d8104915dad1e4fa9a"

  url "https://github.com/XmacsLabs/mogan/releases/download/v#{version}/MoganSTEM-v#{version}-#{arch}.dmg",
      verified: "github.com/XmacsLabs/mogan/releases/download/"
  name "Mogan STEM"
  desc "Structured STEM suite"
  homepage "https://mogan.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MoganSTEM.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/app.mogan",
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Preferences/app.mogan.plist",
  ]
end
