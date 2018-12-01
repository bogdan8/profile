class CreateAbout < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
      t.string :phone
      t.string :job_link
      t.string :linkedin_link
      t.string :facebook_link
      t.string :github_link
      t.string :bitbucket_link
      t.string :statistic_link
      t.has_attached_file :photo
    end
  end
end
