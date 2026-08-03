cask "alchemy" do
  version "0.30.0"
  sha256 "b3ce63ce6c623e42e245014c1d12f4b99ed64fb31838994c9bab8f8568789ba5"

  url "https://github.com/thrashr888/alchemy/releases/download/v0.30.0/Alchemy_0.30.0_aarch64.dmg"
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

