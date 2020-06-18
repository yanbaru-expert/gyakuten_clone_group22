require "import"
# rake import_csv:aws_texts   
namespace :import_csv do
  desc "aws_text_dataを読み込む"

  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")

    puts "インポート処理を開始"
    begin
      AwsText.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗しました #{invalid}"
    end
  end


end
