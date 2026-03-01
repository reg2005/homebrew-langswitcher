cask "langswitcher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "c46be859ada3af22d31915ae51056b545a03ee920581dbdf2b0a8e5e13a20da6",
         intel: "11c99cb866803fc95f9023e8dfbdbee0884f064507475ec25936e6a622a4984d"

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
