require "ruby-prolog"

c = RubyProlog::Core.new

c.instance_eval do
    requires['job1','device1'].fact
    available['device1'].fact

    feasible[:M] <<= [available[:V], requires[:M, :V]]

    p query(feasible['job1'])
    p query(requires['job1'])
  end
