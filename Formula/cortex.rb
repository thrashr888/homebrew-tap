class Cortex < Formula
  desc "Systemic and repo-local memory for AI agents"
  homepage "https://github.com/thrashr888/cortex"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/cortex/releases/download/v#{version}/cortex-darwin-arm64.tar.gz"
      sha256 "068aa0e862ebed8fae274edde9de321642581a9f5a044881978def53158cb761"
    end
    on_intel do
      url "https://github.com/thrashr888/cortex/releases/download/v#{version}/cortex-darwin-amd64.tar.gz"
      sha256 "7194c8fa73ef75e709d26cd1a6f539d05db3a095607ca939a8e329536e3f6a99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/cortex/releases/download/v#{version}/cortex-linux-arm64.tar.gz"
      sha256 "dd11504bc0740729e44c65ebb750bb333f33eac7478619b04b7439cfa4e21596"
    end
    on_intel do
      url "https://github.com/thrashr888/cortex/releases/download/v#{version}/cortex-linux-amd64.tar.gz"
      sha256 "298a04c873b290037eac42f295bb9a0971d0f97be589ba155d991c774d8765e6"
    end
  end

  def install
    bin.install "cortex"
  end

  test do
    assert_match "cortex", shell_output("#{bin}/cortex --help")
  end
end
