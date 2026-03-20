# Homebrew formula for AllBeads
# Install: brew tap thrashr888/tap && brew install allbeads
# Update SHA256 values when releasing a new version.

class Allbeads < Formula
  desc "Distributed protocol for agentic orchestration and communication"
  homepage "https://github.com/thrashr888/AllBeads"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/AllBeads/releases/download/v#{version}/allbeads-macos-aarch64"
      sha256 "78de3534323b19664e5208a96e136c1a26255efd6133934aadf4549b29450ba0"
    end
    on_intel do
      url "https://github.com/thrashr888/AllBeads/releases/download/v#{version}/allbeads-macos-x86_64"
      sha256 "28465eee2da992b358cc8e399497f10445ccc58bb12e6362a48496ad83f21fb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/AllBeads/releases/download/v#{version}/allbeads-linux-aarch64"
      sha256 "70cb79ae7818619847a8c9a1a7587fbf009e481d3dd8ad8182c00d4b002ba21d"
    end
    on_intel do
      url "https://github.com/thrashr888/AllBeads/releases/download/v#{version}/allbeads-linux-x86_64"
      sha256 "a4af55166d84c377746d324889f14ec80d5112937554dc0cdaaa92090a4e542b"
    end
  end

  def install
    bin.install Dir["allbeads*"].first => "allbeads"
  end

  def caveats
    <<~EOS
      AllBeads has been installed as 'allbeads'.

      To use the shorter 'ab' alias, add to your shell config:
        alias ab='allbeads'

      Note: /usr/sbin/ab is Apache Bench, so we don't override it.

      Quick start:
        allbeads init            # Initialize configuration
        allbeads context add     # Add current repo as context
        allbeads stats           # View aggregated statistics
        allbeads tui             # Launch interactive dashboard

      Documentation: https://github.com/thrashr888/AllBeads
    EOS
  end

  test do
    system "#{bin}/allbeads", "--version"
  end
end
