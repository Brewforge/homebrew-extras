class Termscp < Formula
  desc "Feature rich terminal file transfer and explorer"
  homepage "https://termscp.veeso.dev/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/veeso/termscp/releases/latest/download/termscp-v0.13.0-arm64-apple-darwin.tar.gz"
      sha256 "6f7537e8451cebd623a712ade9c0e88253bea11d8d1dec2b2016dc1e08bb8a64"
    end
    on_intel do
      url "https://github.com/veeso/termscp/releases/latest/download/termscp-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "50fadc30790f35313eb624719c61b59e26ea59155896a2a616cd241414fafc84"
    end
  end

  on_linux do
    depends_on "dbus"
    depends_on "samba"

    on_arm do
      url "https://github.com/veeso/termscp/releases/latest/download/termscp-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a55a73e9eb65d6f786a6856aa830d6bdd71b2c4dfa48d3ea4c3feb3f70f2ce5f"
    end
    on_intel do
      url "https://github.com/veeso/termscp/releases/latest/download/termscp-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20d7cbf182640b333e1c30a0359c036f0e5f636ece51a4d7cdd2f04f9c8166e9"
    end
  end

  def install
    bin.install "termscp"
  end
end
