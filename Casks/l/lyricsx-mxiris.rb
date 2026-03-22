cask "lyricsx-mxiris" do
  version "1.8.0,2026-03-21,12-32-44"
  sha256 "082662bbba4ad0576315a45bbf6eba5393362f6d5b1924e88c60d8e77806bbe1"

  url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases/download/v#{version.csv.first}/LyricsX.#{version.csv.second}.#{version.csv.third}.zip"
  name "LyricsX"
  desc "Ultimate Lyrics App"
  homepage "https://github.com/MxIris-LyricsX-Project/LyricsX"

  livecheck do
    url :url
    regex(%r{(\d+(\.\d+){2})/LyricsX_.+(\d{4})\.zip}i)
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
