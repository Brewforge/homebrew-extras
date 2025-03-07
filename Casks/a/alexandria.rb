cask "alexandria" do
  version "0.13.1"
  sha256 "aa7f9c272c98a942b0d30fbc11ba61d42da9652251e362681954d0248e45fb29"

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
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/com.btpf.alexandria",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/com.btpf.alexandria",
    "~/Library/Application Support/com.btpf.alexandria",
    "~/Library/Caches/com.btpf.alexandria",
    "~/Library/Preferences/com.btpf.alexandria.plist",
    "~/Library/Saved Application State/com.btpf.alexandria.savedState",
    "~/Library/WebKit/com.btpf.alexandria",
  ]
end
