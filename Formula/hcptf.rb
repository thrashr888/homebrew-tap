class Hcptf < Formula
  desc "CLI for HCP Terraform with full API coverage"
  homepage "https://github.com/thrashr888/hcptf-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/hcptf-cli/releases/download/v#{version}/hcptf-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "be39c6b722f643664ee0cf403220622c050848c28e20a8c2ba09ed70a76ee472"
    end
    on_intel do
      url "https://github.com/thrashr888/hcptf-cli/releases/download/v#{version}/hcptf-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "ae7aa91752ab0bc780e2f70e8bff144b968aa7d02cb53269b3f10b0ab09fe1b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/hcptf-cli/releases/download/v#{version}/hcptf-cli_#{version}_linux_arm64.tar.gz"
      sha256 "3daa3385ba0a26e406416a09c0bdb6884ccd2acfefc1affd163a3c1a86d7ab76"
    end
    on_intel do
      url "https://github.com/thrashr888/hcptf-cli/releases/download/v#{version}/hcptf-cli_#{version}_linux_amd64.tar.gz"
      sha256 "fc70c4889596423ff137009ef8188a3e9e82c90f1ec89537611a33b0e856c4e9"
    end
  end

  def install
    bin.install "hcptf"
  end

  test do
    assert_match "hcptf", shell_output("#{bin}/hcptf --help")
  end
end
