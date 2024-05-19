cask "openstudio" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.0,d5269793f1"
  sha256 arm:   "c61b0cb7c64e23b94ba61dd16af9663d2a6099b18faccc8a21c65eee0abf0d5a",
         intel: "bd1a37740cb9b7592872f629043404cbc589be72c8c8e55c5e6c7087cfced9a4"

  url "https://github.com/NREL/OpenStudio/releases/download/v#{version.csv.first}/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-#{arch}.dmg"
  name "OpenStudio"
  desc "Collection of software tools to support whole building energy modeling"
  homepage "https://github.com/NREL/OpenStudio/"

  livecheck do
    url "https://github.com/NREL/OpenStudio/releases"
    strategy :page_match do |page|
      match = page.match(/href=.*-(\d+(?:\.\d+)+)\+([\d\w]+)-Darwin-.*\.dmg/)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  installer script: {
    executable: "#{staged_path}/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-arm64.app/Contents/MacOS/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-#{arch}",
  }
  binary "/Applications/OpenStudio-#{version.csv.first}/bin/openstudio"

  uninstall delete: "/Applications/OpenStudio-#{version.csv.first}"

  zap trash: "~/Library/Saved Application State/com.yourcompany.installerbase.savedState"
end
