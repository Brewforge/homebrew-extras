cask "qtscrcpy" do
  version "3.2.0,6.5.3"
  sha256 "978b66a1a507ed2e279c60dc2622714c751ec1b1c39f771528d7882f0b5108f0"

  url "https://github.com/barry-ran/QtScrcpy/releases/download/v#{version.csv.first}/QtScrcpy-mac-arm64-Qt#{version.csv.second}-v#{version.csv.first}.dmg"
  name "QtScrcpy"
  desc "Android real-time display control software"
  homepage "https://github.com/barry-ran/QtScrcpy"

  livecheck do
    url "https://github.com/barry-ran/QtScrcpy/releases"
    regex(/QtScrcpy-mac-arm64-Qt(\d+(\.\d+)+)-v?(\d+(\.\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[3]},#{match[1]}"
      end
    end
  end

  auto_updates true

  app "QtScrcpy.app"

  zap trash: "~/Library/Saved Application State/rankun.QtScrcpy.savedState"
end
