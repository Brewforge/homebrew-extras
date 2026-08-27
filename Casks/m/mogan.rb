cask "mogan" do
  version "2026.3.2"
  sha256 "144507514e2ae389e09da95d69647f5b9645ecf91179e50be9475e565e408e7e"

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
