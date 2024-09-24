class Termscp < Formula
  desc "Feature rich terminal file transfer and explorer"
  homepage "https://termscp.veeso.dev/"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/veeso/termscp/releases/latest/download/termscp-v0.14.0-arm64-apple-darwin.tar.gz"
    sha256 "d312dfb13c125bd18112e816f74008e234c02e410ca7b4617bb9bfbdfc4c5664"
  elsif OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/veeso/termscp/releases/latest/download/termscp-v0.14.0-x86_64-apple-darwin.tar.gz"
    sha256 "63b0eea8a8ab3457d1a92d0b9c0cf492bd4ab0220a3e54db416b31b29aadc541"
  elsif !OS.mac?
    depends_on "dbus"
    depends_on "samba"
    if Hardware::CPU.arm?
      url "https://github.com/veeso/termscp/releases/latest/download/termscp-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa2620d7b4d0c29e354d47daa9c79248812e68930525c8e7b9ddcc38a12f19fd"
    else
      url "https://github.com/veeso/termscp/releases/latest/download/termscp-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebee357f3a01ff356975ffe6a2bc074cf60022613237c6fc6000f57bdd2b4fa6"
    end
  end

  livecheck do
    url "https://github.com/veeso/termscp/"
    strategy :github_latest
  end

  def install
    bin.install "termscp"
  end

  test do
    require "pty"
    PTY.spawn(bin/"termscp", "127.0.0.1") do |_r, _w, pid|
      sleep 10
      Process.kill 9, pid
    end
  end
end
