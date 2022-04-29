Rails.application.routes.draw do
  root to: 'homes#top'
  # resouces :books　⇦後で実行
  get 'books' => 'books#new'
  get 'books/show'
  get 'books/edit'


end
