class Lakesql < Formula
  desc "TiDB Cloud Lake native command-line tool"
  homepage "https://github.com/tidbcloud/lakesql"
  version "0.34.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://lakesql-bin.tidbcloud.com/lakesql/v#{version}/lakesql-aarch64-apple-darwin.tar.gz"
      sha256 "2bf9280b4754c2a5fdc6e4c9a70c51411b463f3be2e1f6fa0e3abee1dffd60ed"
    end

    on_intel do
      url "https://lakesql-bin.tidbcloud.com/lakesql/v#{version}/lakesql-x86_64-apple-darwin.tar.gz"
      sha256 "11df3fe3ebb105d512c1964b09150221885bf4067efd497f72efdf71dbe6d6ce"
    end
  end

  def install
    bin.install "lakesql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lakesql --version")
  end
end
