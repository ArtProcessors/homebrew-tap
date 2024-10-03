require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.10.0/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.10.0"
  sha256 "6baba8d01785791182009d430a8ed273611c678c3a0818fed5640b58d30e0d0c"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
