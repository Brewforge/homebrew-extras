cask "openstudio" do
  arch arm: "arm64", intel: "x86_64"

  version "3.11.0,241b8abb4d"
  sha256 arm:   "3e8fa3831a1d31fbe47832cb96a168e2495e219a9628224e59be625322729588",
         intel: "b1e8a0c8b5b0b54f610b831b02ed330cda024ac5bbd902fdb3c9bfe5381330b0"

  url "https://github.com/NREL/OpenStudio/releases/download/v#{version.csv.first}/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-#{arch}.dmg"
  name "OpenStudio"
  desc "Collection of software tools to support whole building energy modeling"
  homepage "https://github.com/NREL/OpenStudio/"

  livecheck do
    url :url
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
