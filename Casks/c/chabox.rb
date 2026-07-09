# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "chabox" do
  version "1.0.0"
  sha256 "476102afed4986a51a63f4956fb2c00d83523f731448fa6576efcbec619a0981"

  url "https://webpath.iche2.com/release/ChaBox-#{version}-universal.dmg"
  name "ChaBox"
  desc "ChaBox: Open-source offline file security workstation."
  homepage "https://webpath.iche2.com/chadoc/en/"

  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/ChaBox-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "ChaBox.app"

  zap trash: [
    "~/Library/Caches/com.iche2.chabox.macos",
  ]
end
