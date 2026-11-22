class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.21.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.3/agentkernel-darwin-arm64.tar.gz"
      sha256 "fafe4466a8612c6c00f24651347b0fad3af3a6a180cb0fc6e6b63cebafa778c4"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.3/agentkernel-darwin-x64.tar.gz"
      sha256 "72571a3df3dbb0b9e5c85ef8ab61fade548a3632bac8872ce2d92107c6fa8bce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.3/agentkernel-linux-arm64.tar.gz"
      sha256 "2403fbb05a8c03ca84692d89e86958e575ac0f25e6e451b527b9a5a61e1ec62a"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.3/agentkernel-linux-x64.tar.gz"
      sha256 "5b72cb977b6e76bdc24bf29ce4d30d3074d4574e6995b0e8185f83a0a86a54c0"
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
