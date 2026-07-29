cask "pastemd" do
  version "0.1.7.3"
  sha256 "01e67fe1cafd4274dc27085726ec84846fee6fc08012e4a31769058ab114a07e"

  url "https://github.com/RICHQAQ/PasteMD/releases/download/v#{version}/PasteMD-#{version}.dmg"
  name "pastemd"
  desc "One-click paste Markdown and AI responses into Word, WPS, and Excel perfectly"
  homepage "https://github.com/RICHQAQ/PasteMD"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "PasteMD.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/PasteMD.app"]
  end

  zap trash: [
    "~/Documents/GitHub/scoop-extras-plus/bucket/pastemd.json",
    "~/Library/Application Support/PasteMD",
    "~/Library/Logs/PasteMD",
  ]
end
