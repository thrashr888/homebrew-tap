class Clue < Formula
  desc "Semantic ranking for CLI output and bounded agent context"
  homepage "https://github.com/thrashr888/clue"
  url "https://github.com/thrashr888/clue/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "1ef6aafc8851ab83d7dad47b28e3508e1ef183e575b3c381f3d97bcd8a179c73"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    pkgshare.install "profiles", "skills", "examples", "scripts", "docs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clue --version")
    refute_path_exists bin/"cider-ai"

    (testpath/"issues.jsonl").write <<~JSON
      {"number":7,"title":"Offline sync","body":"Preserve edits","url":"https://example.org/issues/7","labels":["bug"]}
    JSON
    output = shell_output("#{bin}/clue collect --profile github-issues --input #{testpath}/issues.jsonl")
    result = JSON.parse(output)
    assert_equal true, result["ok"]
    assert_equal "https://example.org/issues/7", result["results"][0]["id"]
    assert_equal ["bug"], result["results"][0]["record"]["labels"]
    assert_equal "Preserve edits", result["results"][0]["text"]

    profiles = JSON.parse(shell_output("#{bin}/clue profiles list"))
    assert_includes profiles["profiles"], "beads-ready"
    assert_path_exists pkgshare/"skills/clue-rank/SKILL.md"
    assert_path_exists pkgshare/"scripts/serve_laya.py"
    schema = JSON.parse(shell_output("#{bin}/clue schema"))
    assert_equal ["typesafe", "systemone", "ollama"], schema["providers"]
  end
end
