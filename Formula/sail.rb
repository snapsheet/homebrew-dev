require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.9/sail-1.0.9.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "4501c0995f83ebdc2d5683920089e0c7ea0130a938ef513c8d05eef03d7cb708"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end