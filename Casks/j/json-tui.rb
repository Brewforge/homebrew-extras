cask "json-tui" do
  os macos: "Darwin", linux: "Linux"

  version "1.4.0"
  sha256 arm:          "7826469639ba0afa786b5a6f12c57f5f010ff62ab1be173b9993b19e4aef385e",
         x86_64:       "fccd2dd51b16ff6835378c60f2c114660f18599dc0e97484e540bd5afd4c7fef",
         arm64_linux:  "59cc13824efe4532d48d8e1d13049d51c204f0127e6c978031c70aba0970f08b",
         x86_64_linux: "4b9b0626f7f8e1ff2e8ba057834aa7df962bff3c9ba844fe31164ada1a1cc3fc"

  url "https://github.com/ArthurSonzogni/json-tui/releases/download/v#{version}/json-tui-#{version}-#{os}.tar.gz"
  name "json-tui"
  desc "JSON terminal UI made in C++"
  homepage "https://github.com/ArthurSonzogni/json-tui"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "json-tui-#{version}-#{os}/bin/json-tui"
end
