class ChatgptCli < Formula
  desc "A simple cli wrapper for ChatGPT API, powered by GPT-3.5-turbo model."
  homepage "https://github.com/j178/chatgpt"
  version "1.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/j178/chatgpt/releases/download/v1.3.4/chatgpt_Darwin_arm64.tar.gz"
      sha256 "35a8ed4edeabacc61ebf2f020b004546fd25edd3f3f12909e62733fecc5a26be"

      def install
        bin.install "chatgpt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/chatgpt/releases/download/v1.3.4/chatgpt_Darwin_x86_64.tar.gz"
      sha256 "aeb5bd7127a55cf198179cafb1d147de66e3e47e72fbbcaa5d63281c37ecde47"

      def install
        bin.install "chatgpt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/j178/chatgpt/releases/download/v1.3.4/chatgpt_Linux_x86_64.tar.gz"
      sha256 "fb2b78b1d1184e77aadedb02c887e786f4922b8bcaea0ab32d6963d33959b6e3"

      def install
        bin.install "chatgpt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/j178/chatgpt/releases/download/v1.3.4/chatgpt_Linux_arm64.tar.gz"
      sha256 "96c819d5b329c88d9f04cf10ec802eae05a5b9fda77600ed1e4ac213688ae771"

      def install
        bin.install "chatgpt"
      end
    end
  end
end
