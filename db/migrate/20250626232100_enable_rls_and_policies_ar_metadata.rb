class EnableRlsAndPoliciesArMetadata < ActiveRecord::Migration[8.0]
  def change
    return unless Rails.env.production?

    # Policy: Allow read access for service_role
    execute <<-SQL
      CREATE POLICY ar_internal_metadata_read ON public.ar_internal_metadata
        FOR SELECT
        TO service_role
        USING (true);
    SQL

    # Policy: Allow write access for service_role
    execute <<-SQL
      CREATE POLICY ar_internal_metadata_write ON public.ar_internal_metadata
        FOR ALL
        TO service_role
        USING (true);
    SQL

    # Enable RLS on ar_internal_metadata
    execute <<-SQL
      ALTER TABLE public.ar_internal_metadata ENABLE ROW LEVEL SECURITY;
    SQL
  end
end
