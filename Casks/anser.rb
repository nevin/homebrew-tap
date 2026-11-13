cask "anser" do
  version "6.2.3"
  sha256 "8ceca0657cf728e5af8624163f5871ffedda5fc7979514e55dfcabed03d288bc"

  url "https://github.com/nevin/anser/releases/download/v#{version}/Anser-#{version}.dmg"
  name "Anser"
  desc "Terminal with a real command editor, built on Ghostty"
  homepage "https://nevin.github.io/anser/"

  livecheck do
    url "https://github.com/nevin/anser/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Anser.app"

  uninstall quit: "app.anser.terminal"

  zap trash: [
    "~/.config/anser",
    "~/Library/Application Support/Anser",
    "~/Library/Caches/Anser",
    "~/Library/Caches/app.anser.terminal",
    "~/Library/HTTPStorages/app.anser.terminal",
    "~/Library/Logs/Anser",
    "~/Library/Preferences/app.anser.terminal.plist",
    "~/Library/Saved Application State/app.anser.terminal.savedState",
  ]
end
