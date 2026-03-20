class Till < Formula
  desc "Personal finance CLI for bank data"
  homepage "https://github.com/thrashr888/till"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/till/releases/download/v#{version}/till-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/thrashr888/till/releases/download/v#{version}/till-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "till"
  end

  test do
    assert_match "till", shell_output("#{bin}/till --help")
  end
end
