cask "dropclock" do
  version "1.8"
  sha256 "d429afb71c40529afc9105881a4cfe97173014053599e0a5f42ef3c26705fad6"

  url "https://github.com/WrkX/Dropclock/releases/download/#{version}/Dropclock.dmg"
  name "ChatGPT"
  desc "Creating timers as quick and seamless as possible"
  homepage "https://github.com/WrkX/Dropclock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Dropclock.app"

  zap trash: [
    "~/Library/Application Scripts/com.Wrkx.Dropclock",
    "~/Library/Containers/com.Wrkx.Dropclock",
  ]
end
