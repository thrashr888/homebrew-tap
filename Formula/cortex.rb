class Cortex < Formula
  desc "Systemic and repo-local memory for AI agents"
  homepage "https://github.com/thrashr888/cortex"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/cortex/releases/download/v#{version}/cortex-darwin-arm64.tar.gz"
      sha256 "7d52ed7c96faaebb2c2b88d494615ba4d2310223f0303cc6a6b37e92adddf818"
    end
    on_intel do
      url "https://github.com/thrashr888/cortex/releases/download/v#{version}/cortex-darwin-amd64.tar.gz"
      sha256 "94ebcf3f29771be7e3aee9aa983ea28effffb4177ed17ab5d1a9c26dd576ab7f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thrashr888/cortex/releases/download/v#{version}/cortex-linux-amd64.tar.gz"
      sha256 "34d7f82dc35a4dc6713a9ff906f2d6cf88364db07e405be7c89048303f2f27b2"
    end
  end

  def install
    bin.install "cortex"
  end

  test do
    assert_match "cortex", shell_output("#{bin}/cortex --help")
  end
end
