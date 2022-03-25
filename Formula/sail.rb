require_relative "lib/sail/private_strategy"

class Sail < Formula
  desc "Lighting-fast cli middleware for Docker containers"
  homepage "https://github.com/bodyshopbidsdotcom/sail"
  url "https://github.com/bodyshopbidsdotcom/sail/releases/download/v1.0.16/sail-1.0.16.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "934d6522cc25431c8132eca3dc88c6fcf65ff05e0a8706ea0462aa09563cf3bd"
  license "MIT"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sail")
  end

end