cask "sanesidebuttons" do
  version "1.1.0"
  sha256 "1913091544dd0df51d48f2227c76cc0984400aaf5790c8689c458bd8355f877a"

  url "https://github.com/thealpa/SaneSideButtons/releases/download/#{version}/SaneSideButtons.dmg"
  name "SaneSideButtons"
  desc "Maps M4/M5 mouse buttons on macOS"
  homepage "https://github.com/thealpa/SaneSideButtons"

  auto_updates true
  conflicts_with cask: "sensiblesidebuttons"
  depends_on macos: ">= :el_capitan"

  app "SaneSideButtons.app"

  zap trash: "~/Library/Preferences/com.janhuelsmann.sanesidebuttons.plist"
end
