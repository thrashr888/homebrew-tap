class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.19.0/agentkernel-darwin-arm64.tar.gz"
      sha256 "e66f50e9fa87ca0af9e023ab07d23387b22483c670b7fdfdab26ef2808fc118d"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.19.0/agentkernel-darwin-x64.tar.gz"
      sha256 "6fe323908b75fdea90d0f955ea5e68d06753e0647dc05a9face02270ae9bb963"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.19.0/agentkernel-linux-arm64.tar.gz"
      sha256 "04d71d2c03a6a1fb5d1d376dd92cfb77078d82263e72e574226c6538f69b2de9"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.19.0/agentkernel-linux-x64.tar.gz"
      sha256 "ed89ab239f24d81add71a33bdb7c5725ec800e40dc5103ae405ddb105640bf5c"
    end
  end

  def install
    bin.install "agentkernel"
  end

  service do
    run [opt_bin/"agentkernel", "serve", "--host", "127.0.0.1", "--port", "18888"]
    keep_alive true
    log_path var/"log/agentkernel.log"
    error_log_path var/"log/agentkernel.error.log"
    working_dir HOMEBREW_PREFIX
  end

  test do
    assert_match "agentkernel", shell_output("#{bin}/agentkernel --version")
  end
end

