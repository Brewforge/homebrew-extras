class Wthrr < Formula
  desc "Weather companion for the terminal. Rust app"
  homepage "https://github.com/ttytm/wthrr-the-weathercrab"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ttytm/wthrr-the-weathercrab/releases/download/v1.2.0/wthrr-macos-arm64"
    sha256 "ef92e3f9195d39016bc14b40c678d7726e173d484b31e58295e72cde1e8ef383"
    def install
      bin.install "wthrr-macos-arm64"
    end
  elsif OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/ttytm/wthrr-the-weathercrab/releases/download/v1.2.0/wthrr-macos-x86_64"
    sha256 "aeb5bd7127a55cf198179cafb1d147de66e3e47e72fbbcaa5d63281c37ecde47"
    def install
      bin.install "wthrr-macos-x86_64"
    end
  elsif !OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/ttytm/wthrr-the-weathercrab/releases/download/v1.2.0/wthrr-linux-x86_64"
    sha256 "fb2b78b1d1184e77aadedb02c887e786f4922b8bcaea0ab32d6963d33959b6e3"

    def install
      bin.install "wthrr-linux-x86_64"
    end
  end
end
