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


# rake import_csv:movies
  desc "movie_dataを読むこむ"

  task movies: :environment do
    list = Import.csv_data(path: "db/csv_data/movie_data.csv")

    puts "インポート処理を開始"
    begin
      Movie.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗しました #{invalid}"
    end
  end


# rake import_csv:questions
  desc "question_dataを読むこむ"

  task questions: :environment do
    list = Import.csv_data(path: "db/csv_data/question_data.csv")

    puts "インポート処理を開始"
    begin
      Question.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗しました #{invalid}"
    end
  end

# rake import_csv:lines
  desc "line_dataを読むこむ"

  task lines: :environment do
    list = Import.csv_data(path: "db/csv_data/line_data.csv")

    puts "インポート処理を開始"
    begin
      Line.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗しました #{invalid}"
    end
  end



end
