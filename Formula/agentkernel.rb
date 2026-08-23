class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.20.1/agentkernel-darwin-arm64.tar.gz"
      sha256 "114eeeddf8e00f95b763763c34d021e93eb60d6d358b0a9390a5eb132295eb3d"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.20.1/agentkernel-darwin-x64.tar.gz"
      sha256 "4236391ba2b4fba4f2eb68b00f2bf015a15ffa34a58a19aa1f839a904e4b30d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.20.1/agentkernel-linux-arm64.tar.gz"
      sha256 "2aaa45eba3a38eba97da6226f459f633e35ca795c957eb9802de998c699bc04a"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.20.1/agentkernel-linux-x64.tar.gz"
      sha256 "9f1e8003340106cd290318e6e590cf84c14f9dbce504a03ffc678f8f5574f7c4"
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

