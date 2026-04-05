cask "mogan" do
  version "2026.2.1"
  sha256 "53765f131e44627ade12c9051de7ea4874f646473bb8df0592f397b43464fdc6"

  url "https://github.com/XmacsLabs/mogan/releases/download/v#{version}/MoganSTEM-v#{version}-arm.dmg",
      verified: "github.com/XmacsLabs/mogan/releases/"
  name "Mogan STEM"
  desc "Structured STEM suite"
  homepage "https://mogan.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MoganSTEM.app"

  zap trash: [
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Preferences/app.mogan.plist",
  ]
end
