require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.6/sail-1.0.6.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "fca6cfc5327a4e63ab951090208b232c9d605f38dcf4747f8f3ccd870aeeb800"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end