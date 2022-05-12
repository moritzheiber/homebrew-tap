# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc "Your trusty tool for retrieving AWS credentials securely via SAML"
  homepage "https://github.com/moritzheiber/crowbar"
  url "https://github.com/moritzheiber/crowbar/releases/download/v0.4.4/crowbar-x86_64-macos"
  version "0.4.4"
  sha256 "c9389615971f7250d46afa8af57b873a66f015788db57e28b366da56309dd4f7"

  def install
    mv "crowbar-x86_64-macos", "crowbar"
    bin.install "crowbar"
  end

  test do
    system "#{bin}/crowbar", "--version"
  end
end
