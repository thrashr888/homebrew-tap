# Homebrew formula for agentkernel
# Install: brew tap thrashr888/tap && brew install agentkernel
# Update SHA256 values when releasing a new version.

class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/agentkernel-darwin-arm64.tar.gz"
      sha256 "7102165e56e2a48ef24dca7d17d35e91e16e8858fd0510cc9c355e23b31218bb"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/agentkernel-darwin-x64.tar.gz"
      sha256 "605e3a0a407646331999e73f6f29a08ea232a553ac1a7bf0943c2db1f8ef8467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/agentkernel-linux-arm64.tar.gz"
      sha256 "99f03e463651c0fb93667896ecb03ef59a7175c8a7b384cd4e5b1ab9e2c29f77"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/agentkernel-linux-x64.tar.gz"
      sha256 "2e135387b22b24ff00247f480d9219f66795ca9cbe02458a7455f0f34e7934d6"
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

  def caveats
    <<~EOS
      The service listens on localhost:18888.

      Requires Docker, Podman, or Firecracker (Linux with KVM).
      Run `agentkernel doctor` to check your setup.
    EOS
  end

  test do
    assert_match "agentkernel", shell_output("#{bin}/agentkernel --version")
  end
end
