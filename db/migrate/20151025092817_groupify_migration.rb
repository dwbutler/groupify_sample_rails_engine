class GroupifyMigration < ActiveRecord::Migration
  def change
    create_table :sample_rails_engine_groups do |t|
      t.string :name
      t.string     :type
    end

    create_table :sample_rails_engine_group_memberships do |t|
      t.references :member, polymorphic: true, index: { name: 'index_group_memberships_on_member_type_and_member_id' }
      t.references :group, polymorphic: true, index: { name: 'index_group_memberships_on_group_type_and_group_id' }

      # The named group to which a member belongs (if using)
      t.string     :group_name, index: true

      # The membership type the member belongs with
      t.string     :membership_type

      t.timestamps
    end
  end
end
