cask "qtscrcpy" do
  version "3.1.2,6.5.3"
  sha256 "759a440c3472a0de85dff18bb9d8f08815ba9b239fb812423739462d2abab868"

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
