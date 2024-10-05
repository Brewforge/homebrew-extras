cask "lyricsx-mxiris" do
  version "1.7.0,2024-10-04,19-26-56"
  sha256 "7d39fdeb333881212818fe33b2e73c21c680f7a91cb55d49ab526bde4a64c38b"

  url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases/download/v#{version.csv.first}/LyricsX.#{version.csv.second}.#{version.csv.third}.zip"
  name "LyricsX"
  desc "Ultimate Lyrics App"
  homepage "https://github.com/MxIris-LyricsX-Project/LyricsX"

  livecheck do
    url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases"
    regex(%r{/v(\d+(\.\d+){2})/LyricsX\.(\d{4}(-\d{2}){2})\.(\d{2}(-\d{2}){2})\.zip}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[3]},#{match[5]}"
      end
    end
  end

  conflicts_with cask: "lyricsx"

  app "LyricsX #{version.csv.second} #{version.csv.third}/LyricsX.app"

  zap trash: [
    "~/Library/Application Scripts/com.JH.LyricsX",
    "~/Library/Application Scripts/com.JH.LyricsXHelper",
    "~/Library/Application Scripts/D5Q73692VW.group.com.JH.LyricsX",
    "~/Library/Containers/com.JH.LyricsX",
    "~/Library/Containers/com.JH.LyricsXHelper",
    "~/Library/Group Containers/D5Q73692VW.group.com.JH.LyricsX",
  ]
end
