class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.21.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.2/agentkernel-darwin-arm64.tar.gz"
      sha256 "018747469322a73af1c92ba40450098de30f3c0ced4fcec412760a3b8d159489"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.2/agentkernel-darwin-x64.tar.gz"
      sha256 "9b40e94ba3c519dbd1c0e9ac59009f3bc6a44ccd81ab392c2f5ba6e294db6168"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.2/agentkernel-linux-arm64.tar.gz"
      sha256 "b4da915353cb3dd8ecbeb642da49afe3ede5ca00b11f18bd9cac5e8166516619"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.2/agentkernel-linux-x64.tar.gz"
      sha256 "85750a9763c2c600a373b52712527ebedd355efd7497311517ca3743ec56f41c"
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
