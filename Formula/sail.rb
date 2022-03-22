require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.13/sail-1.0.13.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "9ee8cbb0321d268ee0a1f740c00e72d82b337a704089ddffd9022c46078f5800"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end