class Hcptf < Formula
  desc "CLI for HCP Terraform with full API coverage"
  homepage "https://github.com/thrashr888/hcptf-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/hcptf-cli/releases/download/v0.7.0/hcptf-cli_0.7.0_darwin_arm64.tar.gz"
      sha256 "3b3e1f10795880c6a1bae04156f1d051ad6b2829702904e236ab84ad5eb68caa"
    end
    on_intel do
      url "https://github.com/thrashr888/hcptf-cli/releases/download/v0.7.0/hcptf-cli_0.7.0_darwin_amd64.tar.gz"
      sha256 "58e05d0756c71e0d8b70a5e146d762c54766e6216ee0d6bd2d41aead7abdee6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/hcptf-cli/releases/download/v0.7.0/hcptf-cli_0.7.0_linux_arm64.tar.gz"
      sha256 "233cb172da02fcd6542d2c4414535db4ce49d13cb24c9a587f57ae9f63a87b0f"
    end
    on_intel do
      url "https://github.com/thrashr888/hcptf-cli/releases/download/v0.7.0/hcptf-cli_0.7.0_linux_amd64.tar.gz"
      sha256 "ff7cee04afb1cb86d13ece383a820cd63a373289ae74691b5a6494be94e7e5ee"
    end
  end

  def install
    bin.install "hcptf"
  end

  test do
    assert_match "hcptf", shell_output("#{bin}/hcptf --help")
  end
end

