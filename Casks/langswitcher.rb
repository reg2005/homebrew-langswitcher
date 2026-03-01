cask "langswitcher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "672cb60d1461ae7cfe22d302b2169c5e599f229f033e067bb0af1ff8d4b86252",
         intel: "742a8634c6a760555a437e739a2f65fffcfe8ce73b4ab146ef2590178e121d21"

  url "https://github.com/reg2005/langSwitcher/releases/download/v#{version}/LangSwitcher-#{version}-#{arch}.zip"
  name "LangSwitcher"
  desc "Keyboard layout text converter for macOS"
  homepage "https://github.com/reg2005/langSwitcher"

  depends_on macos: ">= :ventura"

  app "LangSwitcher.app"

  zap trash: [
    "~/Library/Application Support/LangSwitcher",
    "~/Library/Preferences/com.reg2005.LangSwitcher.plist",
  ]
end
