class TsRelease < Formula
  desc "Portable artifact and package-manager distribution planning for TypeScript projects."
  homepage "https://github.com/mannyc2/ts-release"
  version "0.0.7"

  on_macos do
    on_arm do
      url "https://github.com/mannyc2/ts-release/releases/download/v0.0.7/ts-release-0.0.7-darwin-arm64"
      sha256 "eb321250b23d0eb45bd4dea6cf7f72ac9e7e17c981cbe8179fb0f64d08d75beb"
    end

    on_intel do
      url "https://github.com/mannyc2/ts-release/releases/download/v0.0.7/ts-release-0.0.7-darwin-x64"
      sha256 "0748ee0feef84afff2b9ab65eabe983b52df4c95501dd34907fa0190fdeefa79"
    end

  end

  def install
    bin.install Dir["*"].find { |path| File.file?(path) } => "ts-release"
    chmod 0755, bin/"ts-release"
  end

  test do
    assert File.exist?(bin/"ts-release")
    assert File.executable?(bin/"ts-release")
  end
end
