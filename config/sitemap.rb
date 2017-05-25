# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.jmurphy.us"
# pick a safe place safe to write the files
SitemapGenerator::Sitemap.public_path = 'tmp/sitemaps/'
# store on S3 using Fog (pass in configuration values as shown above if needed)
SitemapGenerator::Sitemap.adapter = SitemapGenerator::WaveAdapter.new
# inform the map cross-linking where to find the other maps
SitemapGenerator::Sitemap.sitemaps_host = "http://#{ENV['FOG_DIRECTORY']}.s3.amazonaws.com/"
# pick a namespace within your bucket to organize your maps
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.create do
  Portfolio.find_each do |work|
    add portfolio_path(work.id), lastmod: work.updated_at
  end
end