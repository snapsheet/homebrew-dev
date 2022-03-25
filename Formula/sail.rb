require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.14/sail-1.0.14.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "cc7db3a8824deb930727518d21f070766f2d30292a2b0c893227d9154946164e"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end