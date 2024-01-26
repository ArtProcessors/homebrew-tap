require "formula"
require_relative "lib/private_strategy"

class Vxbundler < Formula
  desc "Vixen content bundle and asset downloader"
  homepage "https://github.com/ArtProcessors/apsys-vixen-bundler-macos"
  url "https://github.com/ArtProcessors/apsys-vixen-bundler-macos/releases/download/1.0.1/vxbundler.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "1.0.1"
  sha256 "c8e7f5fb178f065781b0c37edb00b58a4cceaa5b681696582a7e1ac4cadc2372"

  def install
    bin.install "vxbundler"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vxbundler --version")
  end
end
