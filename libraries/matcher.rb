if defined?(ChefSpec)
  ChefSpec.define_matcher(:firewall)
  ChefSpec.define_matcher(:firewall_rule)

  def enable_firewall(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:firewall, :enable, resource)
  end

  def disable_firewall(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:firewall, :disable, resource)
  end

  def allow_firewall_rule(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:firewall_rule, :allow, resource)
  end

  def deny_firewall_rule(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:firewall_rule, :deny, resource)
  end

  def reject_firewall_rule(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:firewall_rule, :reject, resource)
  end
end
