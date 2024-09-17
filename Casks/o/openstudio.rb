cask "openstudio" do
  arch arm: "arm64", intel: "x86_64"

  version "3.8.0,f953b6fcaf"
  sha256 arm:   "c907ab49949fc518f7366609a6b953ebb5a4f7740d5f47efe68411c134a3bc36",
         intel: "7c652525bc0d472e50f97afd46fd0118fbaa023e08c40e024a9ed88e80e8873d"

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
