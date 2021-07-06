require 'blog_post'

RSpec.describe BlogPost do
  describe "#publish" do

    context "when publish post" do
      it "saves the publication date" do
        blog_post = BlogPost.new

        blog_post.publish!

        today = Time.now.strftime("%Y-%m-%d")
        expect(blog_post.published_on).to eq(today)
      end
    end
  end
end
