require "rails_admin_confirm/engine"

module RailsAdminConfirm
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Confirm < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :member? do
          true
        end

        register_instance_option :visible? do
          authorized? && bindings[:object].respond_to?(:confirm!) && bindings[:object].confirmed_at.blank?
        end

        register_instance_option :link_icon do
          'icon-check'
        end

        register_instance_option :controller do
          Proc.new do
            @object.confirm!
            flash[:notice] = "User #{@object.email} has been confirmed."

            redirect_to back_or_index
          end
        end

        register_instance_option :object_level do
          true
        end
      end
    end
  end
end

