class Agentkernel < Formula
  desc "Run AI coding agents in secure, isolated microVMs"
  homepage "https://thrashr888.github.io/agentkernel/"
  version "0.21.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.4/agentkernel-darwin-arm64.tar.gz"
      sha256 "59258117890512a5e2232d342f6f504ead1267097b809ae61ba652f921e8cca3"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.4/agentkernel-darwin-x64.tar.gz"
      sha256 "36cd95a6af4cded25ba572bea976f1206aa102db927787941469e9840e01001a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.4/agentkernel-linux-arm64.tar.gz"
      sha256 "41eadd9df3942d47429797b4dcbed814ba702e2ac0ce67153f8421d55bb00a8e"
    end
    on_intel do
      url "https://github.com/thrashr888/agentkernel/releases/download/v0.21.4/agentkernel-linux-x64.tar.gz"
      sha256 "8e4e5f50e19cb4a6a87f0d105abe47eed4dbac5da8e88a2f0fec285fe40124b1"
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
