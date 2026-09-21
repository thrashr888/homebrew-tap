class Clue < Formula
  desc "Semantic ranking for CLI output and bounded agent context"
  homepage "https://github.com/thrashr888/clue"
  url "https://github.com/thrashr888/clue/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "e5be57441c55fa3cf4457077878a72e79b1214dca6e9bb58ddf68148e540a0a6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    pkgshare.install "profiles", "skills", "examples", "scripts", "docs", "evals"
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
    assert_path_exists pkgshare/"evals/ranking-cases.json"
    with_env(CLUE_CONFIG: (testpath/"config.json").to_s) do
      system bin/"clue", "config", "set", "--provider", "ollama", "--model", "example-local"
      config = JSON.parse(shell_output("#{bin}/clue config show"))
      assert_equal "ollama", config["effective"]["provider"]
      assert_equal "example-local", config["effective"]["model"]
      assert_equal false, config["sharing_authorized"]
      system bin/"clue", "config", "reset"
    end
    schema = JSON.parse(shell_output("#{bin}/clue schema"))
    assert_equal ["typesafe", "systemone", "ollama"], schema["providers"]
  end
end
