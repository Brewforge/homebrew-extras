cask "lrcget" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "d6c56d4b9d9977729d48a217558b93d29b8725b88a800a523fb9812e9ccbaab9",
         intel: "82d277f008fc605a3ae0cb20a2bdade8b9e49930262d75b94961448d58906bf3"

  url "https://github.com/tranxuanthang/lrcget/releases/download/#{version}/LRCGET_#{version}_#{arch}.dmg"
  name "LRCGET"
  desc "Utility for mass-downloading LRC synced lyrics for your offline music library"
  homepage "https://github.com/tranxuanthang/lrcget"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "LRCGET.app"

  zap trash: [
    "~/Library/Application Support/net.lrclib.lrcget",
    "~/Library/Caches/net.lrclib.lrcget",
    "~/Library/Preferences/net.lrclib.lrcget.plist",
    "~/Library/WebKit/net.lrclib.lrcget",
  ]
end
