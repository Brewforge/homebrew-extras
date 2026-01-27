cask "mogan" do
  version "2026.1.1"
  sha256 "4aef82e2ef52616e0079142876c10603d588b6af44a12c738c86cc2a84ba1ef7"

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
  depends_on macos: ">= :sonoma"

  app "MoganSTEM.app"

  zap trash: [
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Preferences/app.mogan.plist",
  ]
end
