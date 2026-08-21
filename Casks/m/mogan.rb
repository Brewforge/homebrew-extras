cask "mogan" do
  version "2026.3.1"
  sha256 "ce13a9038e0c8bc641f30479054a28b2d9fa77addfe68a72eaa3f999dcddc666"

  url "https://github.com/XmacsLabs/mogan/releases/download/v#{version}/MoganSTEM-v#{version}-arm.dmg",
      verified: "github.com/XmacsLabs/mogan/releases/"
  name "Mogan STEM"
  desc "Structured STEM suite"
  homepage "https://mogan.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MoganSTEM.app"

  zap trash: [
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Preferences/app.mogan.plist",
  ]
end
