require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.11.0/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.11.0"
  sha256 "1a657cd25d026a64f6bc304d0d814e1ffbe3670cf7ca3d44b8a7965851b19f4e"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
