class Till < Formula
  desc "Personal finance CLI for bank data"
  homepage "https://github.com/thrashr888/till"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/till/releases/download/v0.1.0/till-aarch64-apple-darwin.tar.gz"
      sha256 "1ca9a75b14bcb0ea3b0b6809670f495d531ec8e27bcc79eec5134746e29c8dc4"
    end
    on_intel do
      url "https://github.com/thrashr888/till/releases/download/v0.1.0/till-x86_64-apple-darwin.tar.gz"
      sha256 "1561d97687ca821dc5d4bfa625714474b7b5f62fb4afbf6928a462b065cfc326"
    end
  end

  def install
    bin.install "till"
  end

  test do
    assert_match "till", shell_output("#{bin}/till --help")
  end
end

