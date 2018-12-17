module Tookan
  class Client
    module All
      ENDPOINTS = %w( create_task
                      create_multiple_tasks
                      import_bulk_tasks_csv
                      create_task_for_form_user
                      get_task_details
                      get_task_details_by_order_id
                      edit_task
                      edit_multiple_tasks
                      delete_task
                      update_task_status
                      start_task
                      cancel_task
                      assign_task
                      re_autoassign_task
                      get_all_tasks
                      get_related_tasks
                      user_task_stats
                      get_available_agents
                      add_agent
                      edit_agent
                      block_and_unblock_agent
                      delete_fleet_account
                      view_fleet_profile
                      update_fleet_tags
                      get_fleet_tags
                      get_agent_duty_logs
                      get_fleet_location
                      send_notification
                      get_fleets_availability
                      fleet_activity_timeline
                      assign_fleet_to_task
                      assign_fleet_to_related_tasks
                      reassign_open_tasks
                      create_team
                      update_team
                      delete_team
                      view_teams
                      get_job_and_fleet_details
                      add_manager
                      view_all_manager
                      delete_manager
                      get_all_customers
                      customer/add
                      customer/edit
                      delete_customer
                      find_customer_with_phone
                      find_customer_with_name
                      view_customer_profile
                      register_new_user
                      edit_phone
                      users_change_password
                      check_email_exists
                      merchant/sign_up
                      merchant/get_merchant
                      merchant/edit_merchant
                      merchant/get_merchant_teams
                      merchant/block_merchant
                      merchant/assign_merchant_to_task
                      merchant/delete
                      get_available_agents
                      assign_fleet_to_task
                      create_task
                      create_multiple_tasks
                      edit_task
                      add_region
                      edit_region
                      view_regions
                      view_regions_only]  
                      remove_region_for_agent
                      remove_region
                      create_mission_task
                      get_mission_list
                      delete_mission
                      set_tookan_shared_secret_key )

      ENDPOINTS.each do |method_name|
        formatted_method_name = method_name.gsub('/', '_')

        define_method(formatted_method_name) do |options = {}|
          request(:post, method_name, options)
        end
      end

      # == GET Requests

      def merchant_get_merchant_data(options = {})
        request(:get, "merchant/get_merchant_data", options)
      end

      def merchant_report(options = {})
        request(:get, "merchant/report", options)
      end

      extend self
    end
  end
end