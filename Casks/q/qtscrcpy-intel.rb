cask "qtscrcpy-intel" do
  version "3.1.1,5.15.2"
  sha256 "72bb901800ce8159eb8027240ddaf5bfa847c36a10d0a4515ed241409b5e9e06"

  url "https://github.com/barry-ran/QtScrcpy/releases/download/v#{version.csv.first}/QtScrcpy-mac-x64-Qt#{version.csv.second}-v#{version.csv.first}.dmg"
  name "QtScrcpy"
  desc "Android real-time display control software"
  homepage "https://github.com/barry-ran/QtScrcpy"

  livecheck do
    url "https://github.com/barry-ran/QtScrcpy/releases"
    regex(/QtScrcpy-mac-x64-Qt(\d+(\.\d+)+)-v?(\d+(\.\d+)+)\.dmg$/i)
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

  caveats do
    requires_rosetta
  end
end
