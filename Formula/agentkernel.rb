class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.19.1/agentkernel-darwin-arm64.tar.gz"
      sha256 "48930954fc650e75203ccfcb845156d3de28b7d43f6edbd5fd86127990bb3d6b"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.19.1/agentkernel-darwin-x64.tar.gz"
      sha256 "306995d5ddeb6e134d38e26edaae42dc400655fa45a79bd56431249d44822a02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.19.1/agentkernel-linux-arm64.tar.gz"
      sha256 "574c6c6b156f8f9354ad96ad5ebbda49941f4413fe5e307e988c56b0176c3a7b"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.19.1/agentkernel-linux-x64.tar.gz"
      sha256 "143a1d6a5374d970d7700e0ef84a71154969863fbf454ea650e3e627a058835e"
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

