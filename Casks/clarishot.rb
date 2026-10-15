cask "clarishot" do
  version "0.3.1"
  sha256 "da92518360ff614f62ae01c8d3327e1f192458d9b3f18c0cf729fc627d24880b"

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
