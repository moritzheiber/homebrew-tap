# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc "Your trusty tool for retrieving AWS credentials securely via SAML"
  homepage "https://github.com/moritzheiber/crowbar"
  version "0.4.0"
  url "https://github.com/moritzheiber/crowbar/releases/download/v0.4.0/crowbar-x86_64-macos"
  sha256 "c97d25d73d585d403c6af615dddd2c66303b3f72ba04811b596281352f0234ec"

  def install
    mv "crowbar-x86_64-macos", "crowbar"
    bin.install "crowbar"
  end

  test do
    system "#{bin}/crowbar", "--version"
  end
end
