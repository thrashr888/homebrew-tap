class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.20.0/agentkernel-darwin-arm64.tar.gz"
      sha256 "72ddd785dc3a80e853c6427b0f96360a9c2529c5a7f2bfc499801b322e80bbac"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.20.0/agentkernel-darwin-x64.tar.gz"
      sha256 "de98d3469d6fb9bd191a6e2d4936b1df81b123d0ddf3a13b61a04075ffdd27e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.20.0/agentkernel-linux-arm64.tar.gz"
      sha256 "53467ae5d7656004f4306f1b0d16f1aec8364c71bd0fba2886b8c09f8ebee026"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.20.0/agentkernel-linux-x64.tar.gz"
      sha256 "aeb45d95d407c0a25ade2a58aabe1edf48e85d1626b8deb6cdc42cf1bc99d8eb"
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

