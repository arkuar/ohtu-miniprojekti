require 'test_helper'

class ReferencesControllerTest < ActionDispatch::IntegrationTest
  test ".bib file download with all references works properly" do
    expected = <<~END
      @article{ tes20171,
        author = "test user åäö",
        title = "test article",
        year = "2017",
        journal = "test journal",
        volume = "189" }

      @inproceeding{ MyA18232,
        author = "MyAuthor",
        title = "MyTitle",
        booktitle = "MyBooktitle",
        year = "1823",
        editor = "MyEditor",
        volume = "4",
        series = "MySeries",
        pages = "MyPages",
        address = "MyAddress",
        month = "7",
        organization = "MyOrganization",
        publisher = "MyPublisher",
        note = "MyNote" }

      END

    get alldownload_path
    assert_equal expected, response.body
    assert_response 200
  end

end
