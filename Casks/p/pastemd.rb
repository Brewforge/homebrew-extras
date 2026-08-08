cask "pastemd" do
  version "0.1.7.4"
  sha256 "c84b0c0e5f858516f78140daeae4ab2b537cecdbb4181e63df6422a45732a438"

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
