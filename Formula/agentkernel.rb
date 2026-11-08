class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.1/agentkernel-darwin-arm64.tar.gz"
      sha256 "c4f21e4c6f7d70f28a9b87781de45b6eb3388530ec216afad6d0583a9db9a32b"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.1/agentkernel-darwin-x64.tar.gz"
      sha256 "25d76483c491bbe4838ef0ce234b3122371edf6dec17f15b187e7364e7766c62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.1/agentkernel-linux-arm64.tar.gz"
      sha256 "b2c409c25d3fa52c84df888ac907739a90b7216dc0291387d7a0ef77ec09e409"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.1/agentkernel-linux-x64.tar.gz"
      sha256 "14987a16b1b436e4823c791bc44e874cb73591a1828174b4d1c9b4eaa96c08a4"
    end
  end

  def install
    bin.install "agentkernel"
  end

  service do
    run [opt_bin/"agentkernel", "serve", "--host", "127.0.0.1", "--port", "18888"]
    environment_variables PATH: "#{HOMEBREW_PREFIX}/bin:#{HOMEBREW_PREFIX}/sbin:/usr/local/bin:/usr/local/sbin:/Applications/Docker.app/Contents/Resources/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    keep_alive true
    log_path var/"log/agentkernel.log"
    error_log_path var/"log/agentkernel.error.log"
    working_dir HOMEBREW_PREFIX
  end

  test do
    assert_match "agentkernel", shell_output("#{bin}/agentkernel --version")
  end
end
