# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc "Your trusty tool for retrieving AWS credentials securely via SAML"
  homepage "https://github.com/moritzheiber/crowbar"
  url "https://github.com/moritzheiber/crowbar/releases/download/v0.4.2/crowbar-x86_64-macos"
  version "0.4.2"
  sha256 "a6d0e070790654dd57f88a6937b09c6deb8c8282563bbc6ef3dfa66189a18ab7"

  def install
    mv "crowbar-x86_64-macos", "crowbar"
    bin.install "crowbar"
  end

  test do
    system "#{bin}/crowbar", "--version"
  end
end
