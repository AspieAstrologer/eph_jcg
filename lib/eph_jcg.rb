require "date"
require "eph_jcg/version"
require "eph_jcg/argument"
require "eph_jcg/coeffs"
require "eph_jcg/constants"
require "eph_jcg/ephemeris"
require "eph_jcg/time_calculator"

module EphJcg
  def self.new(arg = ARGV[0])
    arg ||= Time.now.strftime("%Y%m%d")
    jst = EphJcg::Argument.new(arg).get_jst
    return if jst == 0
    return EphJcg::Ephemeris.new(jst)
  end
end
