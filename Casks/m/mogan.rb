cask "mogan" do
  version "2026.2.3"
  sha256 "fced6c00974d689bbe530463cf2a3e0c8bf41dc47a2445b532f44cf7576104c6"

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
