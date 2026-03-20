class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.20.0"
  license "MIT"

  # Core dependencies for full functionality
  depends_on "git"
  depends_on "ripgrep"

  # Recommended for media features
  depends_on "ffmpeg" => :recommended
  depends_on "imagemagick" => :recommended
  depends_on "pandoc" => :recommended
  depends_on "fluid-synth" => :recommended

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.20.0/rdos-macos-aarch64"
      sha256 "20d5a5cfab7b045daea96be387efb8b0c78bbce9e3f494b5ef7f2a15aa516dae"

      def install
        bin.install "rdos-macos-aarch64" => "rdos"
      end
    end

    on_intel do
      # Intel Mac builds are no longer provided due to unreliable GitHub Actions runners.
      # Users on Intel Macs can build from source: cargo install --git https://github.com/thrashr888/QDOS
      odie "Intel Mac binaries are no longer provided. Please build from source or use an Apple Silicon Mac."
    end
  end

  def caveats
    <<~EOS
      R-DOS includes plugins that benefit from additional tools:

      Developer tools (optional):
        brew install docker gh jj yt-dlp

      DOS emulation:
        brew install dosbox-x

      BASIC interpreters:
        brew install bas55
    EOS
  end

  test do
    assert_match "rdos", shell_output("#{bin}/rdos --version 2>&1", 1)
  end
end
