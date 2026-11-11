cask "dropclock" do
  version "1.10"
  sha256 "5b91319e55f5173c434239b2e4bee743426f3f08b38408c74c0fea0d558f90c0"

  url "https://github.com/WrkX/Dropclock/releases/download/#{version}/Dropclock.dmg"
  name "ChatGPT"
  desc "Creating timers as quick and seamless as possible"
  homepage "https://github.com/WrkX/Dropclock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Dropclock.app"

  zap trash: [
    "~/Library/Application Scripts/com.Wrkx.Dropclock",
    "~/Library/Containers/com.Wrkx.Dropclock",
  ]
end
