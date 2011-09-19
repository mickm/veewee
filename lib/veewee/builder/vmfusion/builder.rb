require 'veewee/builder/core/builder'

module Veewee
  module Builder
    module Vmfusion
      class Builder < Veewee::Builder::Core::Builder
          
          def buildinfo()
#            ".vagrant_version"
#            3.1.2 build-332101
          end
          
          # Translate the definition ssh options to ssh options that can be passed to Net::Ssh calls
          def ssh_options(definition)
            ssh_options={
              :user => definition.ssh_user,
              :port => 22,
              :password => definition.ssh_password,
              :timeout => definition.ssh_login_timeout.to_i
            }
            return ssh_options
          end
          

                   
      end #End Class
    end # End Module
  end # End Module
end # End Module