cask "sequential-viewer" do
  version "2.6.0,2024-09-07,14.59.00"
  sha256 "b60a733001f0dbae9484aa38dc6207142c7f483abfcc82645b3d533d84de4f32"

  url "https://github.com/chuchusoft/Sequential/releases/download/v#{version.csv.first}/Sequential.app.#{version.csv.second}.#{version.csv.third}.tar.xz"
  name "Sequential"
  desc "Native comic reader and image viewer"
  homepage "https://github.com/chuchusoft/Sequential/"

  livecheck do
    url :url
    regex(%r{/v(\d+(\.\d+){2})/Sequential\.app\.(\d{4}(-\d{2}){2})\.(\d+(\.\d+){2})}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[3]},#{match[5]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Sequential #{version.csv.second} #{version.csv.third}/Sequential.app"

  zap trash: [
    "~/Library/Application Support/com.SequentialX.Sequential",
    "~/Library/Preferences/com.SequentialX.Sequential.plist",
    "~/Library/Saved Application State/com.SequentialX.Sequential.savedState",
  ]
end
