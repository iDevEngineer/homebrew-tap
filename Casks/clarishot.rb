cask "clarishot" do
  version "0.2.1"
  sha256 "a5cd6f7c31e7ac5a5b6060a606623aad43f0643af9028aaa40affeb424e3223e"

  url "https://github.com/iDevEngineer/clarishot/releases/download/v#{version}/Clarishot-#{version}.zip"
  name "Clarishot"
  desc "Screenshots, screen recordings, annotation and text capture"
  homepage "https://github.com/iDevEngineer/clarishot"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Clarishot.app"
  binary "#{appdir}/Clarishot.app/Contents/Helpers/clarishot"

  zap trash: [
    "~/Library/Application Support/Clarishot",
    "~/Library/Caches/com.scottmackey.clarishot",
    "~/Library/HTTPStorages/com.scottmackey.clarishot",
    "~/Library/Preferences/com.scottmackey.clarishot.plist",
  ]
end
