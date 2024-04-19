cask "hiddify" do
  version "1.1.1"
  sha256 "ef238c7b02955fffdb47421fe371a30f7c12839a17a83c3dee3c3f95a5f67379"

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
