cask "lyricsx-mxiris" do
  version "1.7.2-fixup,1.7.2,2550"
  sha256 "7de72a29d98a6de19637fd41b683ecee010f4fe038ef4678b2448172b049e259"

  url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases/download/v#{version.csv.first}/LyricsX_#{version.csv.second}+#{version.csv.third}.zip"
  name "LyricsX"
  desc "Ultimate Lyrics App"
  homepage "https://github.com/MxIris-LyricsX-Project/LyricsX"

  livecheck do
    url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases"
    regex(%r{(\d+(\.\d+){2}-.+)/LyricsX_(\d+(\.\d+){2}).+(\d{4})\.zip}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[3]},#{match[5]}"
      end
    end
  end

  conflicts_with cask: "lyricsx"

  app "LyricsX.app"

  zap trash: [
    "~/Library/Application Scripts/com.JH.LyricsX",
    "~/Library/Application Scripts/com.JH.LyricsXHelper",
    "~/Library/Application Scripts/D5Q73692VW.group.com.JH.LyricsX",
    "~/Library/Containers/com.JH.LyricsX",
    "~/Library/Containers/com.JH.LyricsXHelper",
    "~/Library/Group Containers/D5Q73692VW.group.com.JH.LyricsX",
  ]
end
