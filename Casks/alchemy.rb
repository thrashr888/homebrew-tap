cask "alchemy" do
  version "0.58.1"
  sha256 "9f42786575658b5db5a39ba59136165136bfd426e73f61a8e34636ce4460037c"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.58.1/Alchemy_0.58.1_aarch64.dmg"
  name "Alchemy"
  desc "Local-first research notebooks - grounded chat with your own sources"
  homepage "https://github.com/thrashr888/alchemy"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Alchemy.app"

  zap trash: [
    "~/Library/Application Support/com.thrashr888.alchemy",
    "~/Library/Preferences/com.thrashr888.alchemy.plist",
    "~/Library/Caches/com.thrashr888.alchemy",
    "~/Library/WebKit/com.thrashr888.alchemy",
  ]
end
