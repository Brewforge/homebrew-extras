cask "noi" do
  version "0.3.0"
  sha256 "7ebbab6287d62e8712715a6fafec464fe05eda7e93e416aaf48334bf5765723f"

  url "https://github.com/lencx/Noi/releases/download/v#{version}/Noi_macos_#{version}-arm64.dmg"
  name "Noi"
  desc "Power Your World with AI - Explore, Extend, Empower"
  homepage "https://github.com/lencx/Noi"

  app "Noi.app"

  uninstall quit: "com.lencx.noi"

  zap trash: [
    "~/Library/Application Support/Noi",
    "~/Library/Logs/Noi",
    "~/Library/Preferences/com.lencx.noi.plist",
    "~/Library/Saved Application State/com.electron.noi.savedState",
  ]
end
