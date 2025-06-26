class EnableRlsAndPolicies < ActiveRecord::Migration[8.0]
  def change
    return if ActiveRecord::Base.connection.adapter_name == "SQLite"

    # Policy: Allow read access for service_role and authenticated users
    execute <<-SQL
      CREATE POLICY schema_migrations_read ON public.schema_migrations
        FOR SELECT
        TO service_role, authenticated
        USING (true);
    SQL

    # Policy: Allow write access (INSERT, UPDATE, DELETE) for service_role only
    execute <<-SQL
      CREATE POLICY schema_migrations_write ON public.schema_migrations
        FOR ALL
        TO service_role
        USING (true);
    SQL

    # Enable RLS on schema_migrations
    execute <<-SQL
      ALTER TABLE public.schema_migrations ENABLE ROW LEVEL SECURITY;
    SQL

    # Policy: Allow read access for service_role and authenticated users
    execute <<-SQL
      CREATE POLICY games_read ON public.games
        FOR SELECT
        TO service_role, authenticated
        USING (true);
    SQL

    # Policy: Allow write access (INSERT, UPDATE, DELETE) for service_role only
    execute <<-SQL
      CREATE POLICY games_write ON public.games
        FOR ALL
        TO service_role
        USING (true);
    SQL

    # Enable RLS on schema_migrations
    execute <<-SQL
      ALTER TABLE public.games ENABLE ROW LEVEL SECURITY;
    SQL
  end
end
