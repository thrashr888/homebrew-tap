class Shift < Formula
  desc "Coding-agent harness whose behavior is a live Guile image, with a curses TUI"
  homepage "https://github.com/thrashr888/shift"
  url "https://github.com/thrashr888/shift/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "15278e52a2d4136f369cbeaea26ab368d779defa768c603b4ce630f5fd4a6389"
  license "MIT"

  depends_on "guile"
  depends_on "python@3.13"
  depends_on "ripgrep"

  def install
    libexec.install Dir["*"]
    # Compile the Guile modules once so the first launch does not.
    system "make", "-C", libexec, "build"
    # A plain exec wrapper: bin/shift-agent finds the checkout from its own path.
    (bin/"shift-agent").write <<~SH
      #!/bin/sh
      exec "#{libexec}/bin/shift-agent" "$@"
    SH
    chmod 0755, bin/"shift-agent"
  end

  def caveats
    <<~EOS
      The command is shift-agent, because `shift` is a shell builtin. Every
      session serves MCP at http://127.0.0.1:7331/mcp for other clients.
      Run it inside a project; it keeps state in that project's .shift/.
      The checked-in image defaults to Ollama. Point it elsewhere with
        shift-agent --model claude/claude-sonnet-5
      and put API keys in the project's .env.
    EOS
  end

  test do
    assert_match "Interactive terminals open the curses interface", shell_output("#{bin}/shift-agent --help")
  end
end
