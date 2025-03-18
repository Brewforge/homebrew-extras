cask "shiroa" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.3.0"
  sha256 arm:          "a960e4a3ca1add1b6cbd89a71290895e5968c76d2c138768d9947a4efeae1c42",
         x86_64:       "fccd2dd51b16ff6835378c60f2c114660f18599dc0e97484e540bd5afd4c7fef",
         arm64_linux:  "59cc13824efe4532d48d8e1d13049d51c204f0127e6c978031c70aba0970f08b",
         x86_64_linux: "4b9b0626f7f8e1ff2e8ba057834aa7df962bff3c9ba844fe31164ada1a1cc3fc"

  url "https://github.com/Myriad-Dreamin/shiroa/releases/download/v#{version}/shiroa-#{arch}-#{os}.tar.gz"
  name "shiroa"
  desc "Simple tool for creating modern online books in pure typst"
  homepage "https://github.com/Myriad-Dreamin/shiroa"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "shiroa-#{arch}-#{os}/shiroa"
end
