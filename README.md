# Alpha Camp Rails習題︰Restaurant Forum

## 體驗方式
* 帳號：root@example.com
* 密碼：12345678

## 如何啟動？

```ruby
git clone git@github.com:victorloo/Ac_restaurant_forum_with_haml.git
bundle install
rake db:migrate
rake db:seed
rails dev:fake_restaurant
rails dev:fake_user
rails dev:fake_comment
```

## 開發環境

* Ruby version: 2.4.3
* Rails version: 5.1.6

### 使用的 gem

* [haml](https://rubygems.org/gems/haml)
* [simple_form](https://rubygems.org/gems/simple_form)
* [devise](https://rubygems.org/gems/devise)
* [carrierwave](https://rubygems.org/gems/carrierwave)
* [ffaker](https://rubygems.org/gems/ffaker)
* [kaminari](https://rubygems.org/gems/kaminari)
* [bootstrap-sass](https://rubygems.org/gems/bootstrap-sass)

## 使用者故事

### 登入
所有頁面都需要登入才能瀏覽

### 前台
#### 餐廳
* 用戶可以瀏覽所有餐廳
* 用戶可以瀏覽一筆餐廳
* 用戶可以用分類標籤找到相同標籤的餐廳
* 用戶可以在一筆餐廳下方新增評論
* 用戶可以在一筆餐廳下方瀏覽所有評論
* 管理員才能刪除評論
* 每筆餐廳都有專屬的 DashBoard 頁面
* Feed 頁面瀏覽最新的餐廳以及最新的評論各十筆
* 用戶可以收藏餐廳
* 用戶可以喜歡餐廳
* 用戶可以追蹤其他用戶
* 用戶可以跟其他用戶成為朋友

#### 用戶
* 用戶有專門的 Profile 頁面
* Profile 頁面可以瀏覽已經評論的餐廳
* Profile 頁面可以瀏覽收藏的餐廳
* Profile 頁面可以瀏覽追蹤的用戶
* Profile 頁面可以瀏覽追蹤該用戶的用戶
* 用戶可以編輯自己的資料
* 用戶可以所有的朋友

### 後台
* 有管理員權限才能看到後台的連結

#### Restaurant
* 管理員可以瀏覽所有餐廳
* 管理員可以新增一筆餐廳
* 管理員可以瀏覽一筆餐廳
* 管理員可以修改一筆餐廳
* 管理員可以為餐廳上傳照片
* 管理員可以刪除一筆餐廳

#### Category
* 管理員可以瀏覽所有分類
* 管理員可以新增一筆分類
* 管理員可以修改一筆分類
* 管理員可以刪除一筆分類
