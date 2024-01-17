cask "corretto-8" do
  arch arm: "aarch64", intel: "x64"

  version "8.402.07.1"
  sha256 arm:   "b66a1ddc4c716aca43077a95dfc9787859a1edec5d7298869f36406b9d465273",
         intel: "d00e0ac2369b27446df37ee8e95400dcb1f8a9a7a3c80ba70c0ae49763640b7e"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg",
      verified: "corretto.aws/downloads/resources/"
  name "amazon-corretto-8"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://github.com/corretto/corretto-8"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  zap trash: []
end
