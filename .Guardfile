# Global Guardfile (more info at https://github.com/guard/guard#readme)


if Gem::Specification.find_all_by_name('guard-annotate').any?
	guard 'annotate', :routes => false do
  		watch( 'db/schema.rb' )
	end
end

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

if Gem::Specification.find_all_by_name('guard-migrate').any?
  guard 'migrate' do
    watch(%r{^db/migrate/(\d+).+\.rb})
    watch('db/seeds.rb')
  end
end


# If we are using rSpec...
if Gem::Specification.find_all_by_name('guard-rspec').any?

  guard :rspec do
    watch(%r{^spec/.+_spec\.rb$})
    watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
    watch('spec/spec_helper.rb')  { "spec" }

    # Rails example
    watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
    watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
    watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
    watch('config/routes.rb')                           { "spec/routing" }
    watch('app/controllers/application_controller.rb')  { "spec/controllers" }

    # Capybara features specs
    watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/features/#{m[1]}_spec.rb" }

    # Turnip features and steps
    watch(%r{^spec/acceptance/(.+)\.feature$})
    watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance' }
  end
end

