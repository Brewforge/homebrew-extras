cask "alexandria" do
  version "0.13.2"
  sha256 "b8a1369e124f9c9c0d49f4de89295f248cbd4fe36dfc5865c61683433efdb3e0"

  url "https://github.com/btpf/Alexandria/releases/download/v#{version}/Alexandria_#{version}_aarch64.dmg"
  name "Alexandria"
  desc "Minimalistic cross-platform eBook reader"
  homepage "https://github.com/btpf/Alexandria/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Alexandria.app"

  zap trash: [
    "~/Library/Application Support/com.btpf.alexandria",
    "~/Library/Caches/com.btpf.alexandria",
    "~/Library/Preferences/com.btpf.alexandria.plist",
    "~/Library/Saved Application State/com.btpf.alexandria.savedState",
    "~/Library/WebKit/com.btpf.alexandria",
  ]
end
