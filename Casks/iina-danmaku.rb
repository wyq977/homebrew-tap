cask "iina-danmaku" do
  version "1.3.0"
  sha256 "98f9fecc567b103d0e0e60d704e704599f2b669082026ff883c1115288161a53"

  url "https://github.com/xjbeta/iina-danmaku/releases/download/v#{version}-Danmaku(18)/IINA.#{version}-Danmaku.dmg",
      verified: "github.com/xjbeta/iina-danmaku/"
  name "IINA Danmaku"
  desc "Free and open-source media player"
  homepage "https://iina.io/"

  auto_updates true
  conflicts_with cask: "iina"
  depends_on macos: ">= :el_capitan"

  app "IINA.app"
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: "iina"

  zap trash: [
    "~/Library/Application Scripts/com.colliderli.iina.OpenInIINA",
    "~/Library/Application Support/com.colliderli.iina",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*",
    "~/Library/Application Support/CrashReporter/IINA*.plist",
    "~/Library/Caches/com.colliderli.iina",
    "~/Library/Containers/com.colliderli.iina.OpenInIINA",
    "~/Library/Cookies/com.colliderli.iina.binarycookies",
    "~/Library/Logs/com.colliderli.iina",
    "~/Library/Logs/DiagnosticReports/IINA*.crash",
    "~/Library/Preferences/com.colliderli.iina.plist",
    "~/Library/Safari/Extensions/Open in IINA*.safariextz",
    "~/Library/Saved Application State/com.colliderli.iina.savedState",
  ]
end
