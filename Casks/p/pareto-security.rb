cask "pareto-security" do
  version "1.8.4"
  sha256 :no_check

  url "https://github.com/ParetoSecurity/pareto-mac/releases/download/#{version}/ParetoSecurity.dmg",
      verified: "github.com/ParetoSecurity/pareto-mac/"
  name "Pareto Security"
  desc "Automatically audit your computer for basic security hygiene"
  homepage "https://paretosecurity.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Pareto Security.app"

  zap trash: "~/Library/Containers/niteo.co.Pareto-LaunchAtLoginHelper"
end
