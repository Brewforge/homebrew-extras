cask "hiddify" do
  version "0.14.20"
  sha256 "9b566df627528355f76bfd18fd255a51f61951cc5369cfd9c2e06d2b1e30d527"

  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/hiddify-macos-universal.zip"

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
  container nested: "hiddify-macos-universal.dmg"

  app "Hiddify Next.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/Hiddify Next.app"]
  end

  zap trash: [
    "~/Library/Application Support/app.hiddify.com",
    "~/Library/Preferences/app.hiddify.com.plist",
    "~/Library/Saved Application State/app.hiddify.com.savedState",
  ]
end
