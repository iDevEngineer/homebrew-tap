cask "clarishot" do
  version "0.1.1"
  sha256 "369b2e80f2228ec6029b694dd44ed0f81b8b6c4e2d632589b89d64760700bd69"

  url "https://github.com/iDevEngineer/clarishot/releases/download/v#{version}/Clarishot-#{version}.zip"
  name "Clarishot"
  desc "Screenshots, screen recordings, annotation and text capture"
  homepage "https://github.com/iDevEngineer/clarishot"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Clarishot.app"
  binary "#{appdir}/Clarishot.app/Contents/Helpers/clarishot"

  zap trash: [
    "~/Library/Application Support/Clarishot",
    "~/Library/Caches/com.scottmackey.clarishot",
    "~/Library/HTTPStorages/com.scottmackey.clarishot",
    "~/Library/Preferences/com.scottmackey.clarishot.plist",
  ]
end
