require "formula"
require_relative "lib/private_strategy"

class Poeditor < Formula
  desc "POEditor CLI tool"
  homepage "https://github.com/ArtProcessors/ap-poeditor-tool-macos"
  url "https://github.com/ArtProcessors/ap-poeditor-tool-macos/releases/download/2.5.0/poeditor.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.5.0"
  sha256 "e391343da3a2fdeaa5fc1c14e70fc7027f75753ccf360cdac9a52cce9a2b493d"

  def install
    bin.install "poeditor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poeditor --version")
  end
end
