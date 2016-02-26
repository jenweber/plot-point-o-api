namespace :db do
  desc "Load example data from db/examples.rb"
  task examples: :environment do
    require_relative '../../db/examples'
  end

  unless Rails.env == "production"
    desc "Drop and setup the development database with examples"
    task nuke_pave: %w(environment db:drop db:create db:migrate db:seed db:examples) do
      puts "Nuke and pave of #{Rails.env} complete."
    end
  end
end


require 'csv'
namespace :db do
  namespace :populate do
    desc 'Populate database with example data'
    task all: [:games]

    desc 'Populate database with games'
    task games: :environment do
      Game.transaction do
        CSV.foreach(Rails.root + 'data/games.csv',
                    headers: true) do |row|
                      game = row.to_hash
                      Game.create! game unless Game.exists? game
                    end
      end
    end
  end
end

require 'csv'
namespace :db do
  namespace :populate do
    desc 'Populate database with example data'
    task all: [:no_spoilers_posts]

    desc 'Populate database with no spoilers posts'
    task no_spoilers_posts: :environment do
      NoSpoilersPost.transaction do
        CSV.foreach(Rails.root + 'data/no-spoilers.csv',
                    headers: true) do |row|
                      no_spoilers_post = row.to_hash
                      NoSpoilersPost.create! no_spoilers_post unless NoSpoilersPost.exists? no_spoilers_post
                    end
      end
    end
  end
end

require 'csv'
namespace :db do
  namespace :populate do
    desc 'Populate database with example data'
    task all: [:spoilery_posts]

    desc 'Populate database with games'
    task spoilery_posts: :environment do
      SpoileryPost.transaction do
        CSV.foreach(Rails.root + 'data/analysis-with-spoilers.csv',
                    headers: true) do |row|
                      spoilery_post = row.to_hash
                      SpoileryPost.create! spoilery_post unless SpoileryPost.exists? spoilery_post
                    end
      end
    end
  end
end
