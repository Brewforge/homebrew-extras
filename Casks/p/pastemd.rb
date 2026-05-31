cask "pastemd" do
  version "0.1.7.1"
  sha256 "0f74864a9071c359842b146d10885ae52c9448293d1cc7e07b2163f99787a75b"

  url "https://github.com/RICHQAQ/PasteMD/releases/download/v#{version}/PasteMD-#{version}.dmg",
      verified: "github.com/RICHQAQ/PasteMD/"
  name "pastemd"
  desc "One-click paste Markdown and AI responses into Word, WPS, and Excel perfectly"
  homepage "https://pastemd.richqaq.cn/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
