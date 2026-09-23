cask "rune-music" do
  version "2.0.0-alpha.10"
  sha256 "b626eb60487028e5fde023ee8934c150951ace092d64035e9fa981c30d971e74"

  url "https://github.com/Losses/rune/releases/download/v#{version}/Rune-v#{version}-macOS.dmg"
  name "Rune"
  desc "Player that blends classic design with modern technology"
  homepage "https://rune.not.ci/"

  livecheck do
    url :url
    regex(/^v?(\d+(\.\d+)+(-alpha\.\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :monterey

  app "Rune.app"

  preflight_steps do
    run "xattr", args: ["-cr", "{{staged_path}}/Rune.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/ci.not.rune",
    "~/Library/Containers/ci.not.rune",
  ]
end
