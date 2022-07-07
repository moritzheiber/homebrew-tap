# frozen_string_literal: true

# The main formula
class Crowbar < Formula
  desc "Your trusty tool for retrieving AWS credentials securely via SAML"
  homepage "https://github.com/moritzheiber/crowbar"
  url "https://github.com/moritzheiber/crowbar/releases/download/v0.4.8/crowbar-x86_64-macos"
  version "0.4.8"
  sha256 "0a89b68c66e216dc01b1aea19d5aaa7f50b059697ba0109b64113e9c972a9fd6"

  def install
    mv "crowbar-x86_64-macos", "crowbar"
    bin.install "crowbar"
  end

  test do
    system "#{bin}/crowbar", "--version"
  end
end
