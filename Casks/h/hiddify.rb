cask "hiddify" do
  version "4.0.4"
  sha256 "e926a56684e26361c47a831ee278d134deca13caf396a276c7c72f4340a37b67"

  url "https://github.com/hiddify/hiddify-next/releases/download/v#{version}/Hiddify-MacOS.dmg",
      verified: "github.com/hiddify/hiddify-next/"
  name "Hiddify"
  desc "Multi-Platform Auto-Proxy Client"
  homepage "https://hiddify.com/"

  livecheck do
    url :url
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
