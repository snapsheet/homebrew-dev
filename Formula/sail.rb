require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.11/sail-1.0.11.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "601df92bf6a0d8c5620b96b54be608c1370a04b3bb2a2f5a97bff04c80ccaece"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end