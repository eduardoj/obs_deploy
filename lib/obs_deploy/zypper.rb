# frozen_string_literal: true

module ObsDeploy
  class Zypper
    attr_accessor :dry_run

    def initialize(dry_run: true, package_name: 'obs-api')
      @dry_run = dry_run
    end

    def update
      run ['zypper'] + update_string + package_name
    end

    def refresh
      run ['zypper', '--non-interactive', '--gpg-auto-import-keys', 'refresh']
    end

     private

    def run(params)
      params
    end

    def update_string
      if @dry_run
        update_params + dry_run_params
      else
        update_params
      end
    end

    def package_name
      ['obs-api']
    end

    def update_params
      ['--non-interactive', 'update', '--best-effort', '--details']
    end

    def dry_run_params
      ['--dry-run --download-only']
    end
   end
end
