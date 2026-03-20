cask "ethertext" do
  version "1.15"
  sha256 "67ac34511784d06d230970a18ebb4c2e44943085434ef29b6ac502381e2cb474"

  url "https://ethertext.app/downloads/#{version}/Ethertext.dmg"
  name "Ethertext"
  desc "AI-powered text transformation and memory for macOS"
  homepage "https://ethertext.app"

  depends_on macos: ">= :ventura"

  app "Ethertext.app"

  zap trash: [
    "~/Library/Application Support/Ethertext",
    "~/Library/Preferences/com.thrashr888.Ethertext.plist",
    "~/Library/Caches/com.thrashr888.Ethertext",
  ]
end
