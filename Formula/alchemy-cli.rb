class AlchemyCli < Formula
  desc "Command-line client for the Alchemy research notebook app"
  homepage "https://github.com/thrashr888/alchemy"
  # The CLI is a single dependency-free script in the app repo; releases don't
  # ship a separate CLI artifact yet, so install straight from main. Repoint to
  # a release tarball + sha256 once one exists.
  url "https://github.com/thrashr888/alchemy.git", branch: "main"
  version "0.1.0"
  license "MPL-2.0"

  depends_on "node"

  def install
    libexec.install "cli/alchemy.mjs", "cli/package.json"
    chmod 0755, libexec/"alchemy.mjs"
    bin.install_symlink libexec/"alchemy.mjs" => "alchemy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alchemy --version")
  end
end
