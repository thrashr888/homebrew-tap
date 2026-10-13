cask "agentkernel" do
  version "0.21.0"

  on_arm do
    sha256 "d11637e0b445360152fd1efe9fc9cb5a076ab7f41abfefda0ba2d5c89424bfbb"
    url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/AgentKernel_#{version}_aarch64-arm64.dmg"
  end
  on_intel do
    sha256 "bbdd7b12dcdd2aac61a06243d688809daf3787b0f68905e7a3eb1ac2237ddc67"
    url "https://github.com/thrashr888/agentkernel/releases/download/v#{version}/AgentKernel_#{version}_x64-x64.dmg"
  end

  name "AgentKernel"
  desc "Desktop app for managing AI coding agent sandboxes"
  homepage "https://thrashr888.github.io/agentkernel/"

  depends_on macos: :ventura

  app "AgentKernel.app"

  zap trash: [
    "~/Library/Application Support/com.agentkernel.desktop",
    "~/Library/Caches/com.agentkernel.desktop",
  ]
end
