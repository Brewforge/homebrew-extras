cask "openstudio" do
  arch arm: "arm64", intel: "x86_64"

  version "3.9.0,c77fbb9569"
  sha256 arm:   "dd87ea981e63b245084e072257478d7b8dccc74ff816c99bb1e3d1981eafaccc",
         intel: "a81803bb704f860a21de73b74cc9b0101c7344cbbe28e4de1ab2edfffae0a45b"

  url "https://github.com/NREL/OpenStudio/releases/download/v#{version.csv.first}/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-#{arch}.dmg"
  name "OpenStudio"
  desc "Collection of software tools to support whole building energy modeling"
  homepage "https://github.com/NREL/OpenStudio/"

  livecheck do
    url "https://github.com/NREL/OpenStudio/releases"
    regex(/(\d+(\.\d+){2}).+([\d\w]{10})-Darwin-.+\.dmg/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[3]}"
      end
    end
  end

  installer script: {
    executable: "#{staged_path}/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-arm64.app/Contents/MacOS/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-#{arch}",
  }
  binary "/Applications/OpenStudio-#{version.csv.first}/bin/openstudio"

  uninstall delete: "/Applications/OpenStudio-#{version.csv.first}"

  zap trash: "~/Library/Saved Application State/com.yourcompany.installerbase.savedState"
end
