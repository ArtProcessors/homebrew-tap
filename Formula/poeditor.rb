require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.11.2/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.11.2"
  sha256 "efd4e4e1db102065a4356b6745ff779e2e3072788d82f743db157d28b504b380"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
