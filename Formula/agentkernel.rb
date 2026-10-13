class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.0/agentkernel-darwin-arm64.tar.gz"
      sha256 "087fa16639149fae0cc21021ef6bf636cf8b6c388256f4a1aa61f169944d0b0d"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.0/agentkernel-darwin-x64.tar.gz"
      sha256 "cc26a1ff3c6359b4345b70bcd93f03bfad4e2927e749450ab1268bf991f999e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.0/agentkernel-linux-arm64.tar.gz"
      sha256 "fb80f270370c515d2f55f7a3573749cffb4f71efd771cfd5f5a9c970b3bb8d1b"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.0/agentkernel-linux-x64.tar.gz"
      sha256 "6e4ce2f70c4d9b51c587ada2e0d0114db4bc0f4d33b4e39fc23d1b624191410e"
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
