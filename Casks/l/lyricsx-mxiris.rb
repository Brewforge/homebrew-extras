cask "lyricsx-mxiris" do
  version "1.7.2,2501"
  sha256 "e9896efdd7aad62d750a84a533fc3e7066c804f91d64de402f9c093195bf2a69"

  short_version = version.csv.first.split("-")[1]
  url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases/download/v#{version.csv.first}/LyricsX_#{short_version}+#{version.csv.second}.zip"
  name "LyricsX"
  desc "Ultimate Lyrics App"
  homepage "https://github.com/MxIris-LyricsX-Project/LyricsX"

  livecheck do
    url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases"
    regex(%r{(\d+(\.\d+){2}-.+)/LyricsX_.+(\d{4})\.zip}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[3]}"
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
