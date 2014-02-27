class QuotesController < Rulers::Controller
  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand pixels",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  # def update
  #   if env["REQUEST_METHOD"] == "POST"
  #     quote = Rulers::Model::FileModel.find(1)
  #     quote["submitter"] = "Foobar"
  #     m = FileModel.save quote
  #   end
  #   render :quote, :obj => quote
  # end

  def update_quote
    attrs = {
      "id" => "1",
      "submitter" => "Foobar",
      "quote" => "I bought an ant farm once...those fellas didn't grow shit!",
      "attribution" => "Mitch Hedburg"
    }
    FileModel.update attrs
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def a_quote
    render :a_quote, :noun => :winking
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1
  end
end
