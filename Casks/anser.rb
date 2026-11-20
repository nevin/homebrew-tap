cask "anser" do
  version "6.2.11"
  sha256 "c39e023e023967e9e3b5d0b1a362ac9a76a69ae4536501922052fb6927bbd781"

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
