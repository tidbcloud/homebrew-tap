class Lakesql < Formula
  desc "TiDB Cloud Lake native command-line tool"
  homepage "https://github.com/tidbcloud/lakesql"
  version "0.1.5-alpha.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://lakesql-bin.tidbcloud.com/lakesql/v#{version}/lakesql-aarch64-apple-darwin.tar.gz"
      sha256 "d35a40e609e2d43a73f421d78f5d5e73a0d69c2e96ed0cbf4d44295446c1b076"
    end

    on_intel do
      url "https://lakesql-bin.tidbcloud.com/lakesql/v#{version}/lakesql-x86_64-apple-darwin.tar.gz"
      sha256 "76949ba442f56522c61e4801339875f5b3745567ac0dcb5816b9e10eb755768c"
    end
  end

  def install
    bin.install "lakesql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lakesql --version")
  end
end
