cask "dropclock" do
  version "1.9"
  sha256 "aa2c8d31642854be2e187f0d025922b2b9b46f447fc91c5bebb3265e387c6074"

  url "https://github.com/WrkX/Dropclock/releases/download/#{version}/Dropclock.dmg"
  name "ChatGPT"
  desc "Creating timers as quick and seamless as possible"
  homepage "https://github.com/WrkX/Dropclock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Dropclock.app"

  zap trash: [
    "~/Library/Application Scripts/com.Wrkx.Dropclock",
    "~/Library/Containers/com.Wrkx.Dropclock",
  ]
end
