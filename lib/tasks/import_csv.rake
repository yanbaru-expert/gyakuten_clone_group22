require "import"
# rake import_csv:aws_texts   
namespace :import_csv do
  desc "aws_text_dataを読み込む"

  task aws_texts: :environment do
    Import.csv_data(path: "db/csv_data/aws_text_data.csv")
  end
end
