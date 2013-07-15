# Global Guardfile (more info at https://github.com/guard/guard#readme)


# If we are using Guard Bundler to automaticall add / remove gems.
if Gem::Specification.find_all_by_name('guard-bundler').any?
  guard 'bundler' do
    watch('Gemfile')
  end
end

# If we are using LiveReload to refresh UI changes
if Gem::Specification.find_all_by_name('guard-livereload').any?
  guard 'livereload' do
    watch(%r{app/views/.+\.(erb|haml|slim)})
    watch(%r{app/helpers/.+\.rb})
    watch(%r{public/.+\.(css|js|html)})
    watch(%r{config/locales/.+\.yml})
    # Rails Assets Pipeline
    watch(%r{(app|vendor)(/assets/\w+/(.+\.(s[ac]ss|css|coffee|js|html))).*}) { |m| "/assets/#{m[3]}" }
  end
end

# If we are using rSpec...
if Gem::Specification.find_all_by_name('guard-rspec').any?
  turnip = Gem::Specification.find_all_by_name('turnip').any?
  parallel = Gem::Specification.find_all_by_name('parallel_tests').any?
  zeus = File.exists?('.zeus.sock')
  drb = '--drb' if Gem::Specification.find_all_by_name('spork').any?

  guard 'rspec', :bundler => false, :binstubs => '.bundle/bin', :turnip => turnip, :zeus => zeus, :parallel => parallel, :parallel_cli => "-n 2", :all_on_start => false, :all_after_pass => false, :keep_failed => false, :focus_on_failed => true, :cli => "--color --fail-fast #{ drb }" do
    # Factories
    watch('spec/factories.rb')                         { "spec" }
    watch(%r{^spec/factories/(.+)\.rb$})               { |m| ["spec/models/#{m[1].singularize}_spec.rb", "spec/controllers/#{m[1]}_controller_spec.rb", "spec/requests/#{m[1]}_spec.rb"] }

    # Global
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch('spec/spec_helper.rb')  { "spec" }

    # Rails specific
    watch(%r{^app/(.+)\.rb$})                          { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^lib/(.+)\.rb$})                          { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch(%r{^app/controllers/(.+)_(controller)\.rb$}) { |m| ["spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
    watch(%r{^spec/support/(.+)\.rb$})                 { "spec" }
    watch('app/controllers/application_controller.rb') { "spec/controllers" }
    watch(%r{^app/views/(.+)$})                        { |m| "spec/views/#{m[1]}_spec.rb" }

    # Capybara request specs
    watch(%r{^app/views/(.+)/.*\.(erb|haml|slim)$})    { |m| "spec/requests/#{m[1]}_spec.rb" }

    # Controller specs for views
    watch(%r{^app/views/(.+)/.*\.(erb|haml|slim)$})    { |m| "spec/controllers/#{m[1]}_spec.rb" }

    # Turnip features and steps
    watch(%r{^spec/acceptance/(.+)\.feature$})
    watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})  { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance' }

    # Runs all specs when something in /lib is modified (for Ruby gems development)
    if Dir.glob('*.gemspec').any?
      watch(%r{^lib/.+\.rb$}) { "spec" }
    end

    # Ignore Zeus
    ignore(/\.zeus\.sock/)
  end
end