cask "groundsurf" do
  version "1.4.1"
  sha256 "8adc04c9b1b9dcb03135c421a55f4e9c22492b8aaf84b767182f5046fbe41631"

  url "https://github.com/takingbreath/GroundSurf/releases/download/v#{version}/GroundSurf-#{version}-universal.dmg"
  name "GroundSurf"
  desc "Endlessly generated Chinese landscape wallpaper"
  homepage "https://github.com/takingbreath/GroundSurf"

  depends_on macos: :ventura

  app "GroundSurf.app"

  caveats <<~EOS
    This preview is ad-hoc signed and not Apple notarized.
    macOS may block first launch. Review Apple's guidance:
      https://support.apple.com/en-us/102445
    Intel hardware testing and long-run battery benchmarking remain outstanding.
  EOS
end
