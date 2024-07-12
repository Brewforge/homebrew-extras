cask "hiddify" do
  version "1.5.2"
  sha256 "bfd902f360609dcacbcbeb029a03573cb82babe9c535c0de45dd670196a38aa3"

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
