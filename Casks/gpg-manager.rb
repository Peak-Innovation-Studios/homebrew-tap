cask "gpg-manager" do
  version "1.0.0"
  sha256 "7a80664c66a599b9795910f6ede5ca3fd14fec4c10363ea256f93996812be43e"

  url "https://github.com/Peak-Innovation-Studios/GPGManager/releases/download/v#{version}/GPGManager-#{version}.zip"
  name "GPG Manager"
  desc "Modern macOS GUI for managing GPG keys, gpg-agent, and Git signing"
  homepage "https://github.com/Peak-Innovation-Studios/GPGManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "GPGManager.app"

  zap trash: [
    "~/Library/Preferences/com.peakinnovationstudios.GPGManager.plist",
    "~/Library/Application Support/GPGManager",
    "~/Library/Caches/com.peakinnovationstudios.GPGManager",
  ]
end
