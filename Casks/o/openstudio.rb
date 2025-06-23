cask "openstudio" do
  arch arm: "arm64", intel: "x86_64"

  version "3.10.0,86d7e215a1"
  sha256 arm:   "e48659a68c5920afe5f760b53eeda160a54d789b3d1c2fe5a495650ea22fd0b3",
         intel: "a2d176d6efe848fc46f1b8306e6f80340d0464fed4ddbce245a0e6dcc0898a89"

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
