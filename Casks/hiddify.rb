cask "hiddify" do
  version "1.4.0"
  sha256 "fe7caf7fc0432d9f47a94f25fc04bca99cd4f0e234801dcbb1986df37c1fb85a"

  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/Hiddify-MacOS.dmg"

  url "#{mirror}#{origin}",
      verified: "mirror.ghproxy.com/"
  name "Hiddify"
  desc "Multi-Platform Auto-Proxy Client"
  homepage "https://hiddify.com/"

  livecheck do
    url origin.to_s
    strategy :github_latest
  end

  auto_updates true

  app "Hiddify.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Hiddify.app"]
  end

  zap trash: [
    "~/Library/Application Support/app.hiddify.com",
    "~/Library/Preferences/app.hiddify.com.plist",
    "~/Library/Saved Application State/app.hiddify.com.savedState",
  ]
end
