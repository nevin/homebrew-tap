cask "anser" do
  version "6.2.14"
  sha256 "1e0ad0054950fa79d2355491f48a0c49d27eeab2ff021a024a90ea153c4618f0"

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
