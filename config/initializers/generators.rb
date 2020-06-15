Rails.application.config.generators do |g|
  g.skip_routes true
  g.assets false
  g.stylesheets false
  g.helper false
  g.template_engine :erb

  # タスクNo.5 モデル・テーブル作成で発生した　Deprecation warningの対策
  # g.test_framework false　を削除
end