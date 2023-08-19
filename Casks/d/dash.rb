cask "dash" do
  on_high_sierra :or_older do
    version "4.6.7"
    sha256 "e2b5eb996645b25f12ccae15e24b1b0d8007bc5fed925e14ce7be45a2b693fb6"
  end
  on_mojave :or_newer do
    version "0.5.12"
    sha256 "20965967ba5cb8039cedd6c3bad8935d08f26e4e530e84d04c6c40dd7c7c76b5"
  end

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name "Dash"
  desc "API documentation browser and code snippet manager"
  homepage "https://kapeli.com/dash"

  livecheck do
    url "https://kapeli.com/Dash#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/dash6"

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/com.kapeli.dashdoc",
    "~/Library/Application Support/Dash",
    "~/Library/Caches/com.kapeli.dashdoc",
    "~/Library/Cookies/com.kapeli.dashdoc.binarycookies",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.kapeli.dashdoc",
    "~/Library/HTTPStorages/com.kapeli.dashdoc",
    "~/Library/HTTPStorages/com.kapeli.dashdoc.binarycookies",
    "~/Library/Logs/Dash",
    "~/Library/Preferences/com.kapeli.dashdoc.plist",
    "~/Library/Saved Application State/com.kapeli.dashdoc.savedState",
    "~/Library/WebKit/com.kapeli.dashdoc",
  ]
end
