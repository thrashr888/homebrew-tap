class Shift < Formula
  desc "Coding-agent harness whose behavior is a live Guile image, with a curses TUI"
  homepage "https://github.com/thrashr888/shift"
  url "https://github.com/thrashr888/shift/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "72688f9a31277fecc283f137bbc428fa198c4d02144a89fcb663551be587390a"
  license "MIT"

  depends_on "guile"
  depends_on "python@3.13"
  depends_on "ripgrep"

  def install
    libexec.install Dir["*"]
    # Compile the Guile modules once so the first launch does not.
    system "make", "-C", libexec, "build"
    # `shift` is a shell builtin everywhere, so the command is shift-agent.
    (bin/"shift-agent").write_exec_script libexec/"bin/shift"
    (bin/"shift-mcp").write_exec_script libexec/"bin/shift-mcp"
  end

  def caveats
    <<~EOS
      The command is shift-agent, because `shift` is a shell builtin.
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
