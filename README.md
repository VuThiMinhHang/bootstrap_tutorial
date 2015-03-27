==Bootstrap Tutorial

I. Bootstrap là gì ?

- Bootstrap là 1 framework css được Twitter phát triển giúp chúng ta làm front-end cho web nhanh và dễ dàng hơn, không cần code quá nhiều CSS.
- Boostrap gồm các html, class css, function javascript được xây dựng sẵn, khi sử dụng chúng ta chỉ cần đặt tên class cho các thẻ html đúng theo quy ước của Bootstrap.
- Có rất nhiều class được viết sẵn với đầy đủ chức năng. Để biết được các Class của Bootstrap thì chúng ta phải đọc hướng dẫn từ Bootstrap. :D

II. Cài đặt Bootstrap

- Đối với rails chúng ta chỉ cần thêm gem 'twitter-bootstrap-rails' trong Gemfile.

```html
gem 'twitter-bootstrap-rails'

```

- Sau đó:

```html
bundle install
rails generate bootstrap:install static

```

III. Một số class cơ bản của Bootstrap và cách sử dụng

1.Grid System

- Là cách Bootstrap phân chia bố cục dạng lưới với các ô với có các kích thước khác nhau để tạo nên giao diện tương thích. Kích thước của các ô này sẽ tự động co giãn cho phù hợp với kích thước màn hình mà thiết bị đang xem trang web.
- Grid System chia nhỏ được nhiều nhất là 12 ô.

Minh họa kích thước:

![Image](/screenshots/hinh1.png)

- Grid System chia ra 4 class phù hợp với từng kích thước màn hình:

  + xs (cho điện thoại)
  + sm (cho máy tính bảng)
  + md (cho máy tính)
  + lg (cho máy tính màn hình lớn hơn)

- Cụ thể là các class có cấu trúc như sau:

```html
col-xx-y

```

Trong đó:
  + xx là kích thước của màn hình nào: xs, sm, md hoặc lg
  + y là độ rộng tương ứng với kích thước của loại màn hình trên, nhận giá trị từ 1 đến 12

- Chú ý bắt buộc nữa là bọc ngoài các class 'col' là class 'row', các 'row' phải nằm bên trong 1 class 'container' hoặc 'container-fluid'.


- Ví dụ:

```html
<div class="container">
  <p>Grid System</p>
  <div class="row">
    <div class="col-sm-4 col-md-2" style="background-color:red;">I</div>
    <div class="col-sm-4 col-md-2" style="background-color:blue;">II</div>
    <div class="col-sm-4 col-md-8" style="background-color:yellow;">III</div>
  </div>
</div>
```

Hiển thị trên điện thoại:

![Image](/screenshots/hinh2.png)

Hiển thị trên máy tính:

![Image](/screenshots/hinh3.png)

2.Tạo table

- Để tạo 1 bảng đơn giản, Bootstrap cung cấp cho chúng ta các class để thêm vào thẻ table của html:
  + table: mặc định (Bắt buộc phải khai báo)
  + table-striped
  + table-bordered
  + table-hover
  + table-condensed

- Để thêm css cho các ô dòng cột, bootstrap có một số class cho thẻ th, td, tr:
  + active: css cho các dòng của bảng hay ô trong bảng mang nghĩa còn hoạt động, màu tím nhạt
  + success: css cho một hành động thành công, tích cực, màu xanh lá cây nhạt
  + info: css cho một thông tin. màu xanh dương nhạt
  + warning: css cho một cảnh báo, cần chú ý, màu vàng nhạt
  + danger: css hành động nguy hiểm, màu hồng nhạt

- Ví dụ:

```html
<div class="container">
  <div class="row">
    <h2>Table</h2>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>STT</th>
            <th>Họ Tên</th>
            <th>Tuổi</th>
          </tr>
        </thead>
        <tbody>
          <tr class="active">
            <td>1</td>
            <td>Hằng</td>
            <td>25</td>
          </tr>
          <tr class="success">
            <td>2</td>
            <td>Tuyến</td>
            <td>25</td>
          </tr>
          <tr class="danger">
            <td>3</td>
            <td>Nhung</td>
            <td>26</td>
          </tr>
          <tr class="warning">
            <td>4</td>
            <td>Chi</td>
            <td>27</td>
          </tr>
          <tr class="info">
            <td>5</td>
            <td>Tan</td>
            <td>24</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
```

Minh họa:

+ Không có class 'table', 'table-bordered':

![Image](/screenshots/hinh4.png)

+ Có class 'table', không có class 'table-bordered':

![Image](/screenshots/hinh5.png)

+ Có class 'table', 'table-bordered':

![Image](/screenshots/hinh6.png)

3.Breadcrumb

- Breadcrumb là 1 chuỗi các đường link phân cấp giúp người dùng có thể biết được mình đang ở trang nào và từ đó có thể di chuyển thuận lợi từ trang này trang khác trong 1 website.
- Để tạo một breadcrumb đơn giản, dễ nhìn bằng bootstrap thì chúng ta dùng  cặp thẻ html ul và li, thêm vào thẻ ul class 'breadcrumb', có thể thêm class 'active' vào li chỉ link hiện tại.

- Ví dụ:

```html
<div class="container">
  <div class="row">
    <h2>Breadcrumb</h2>
      <ul class="breadcrumb">
        <li><a href="#">Menu</a></li>
        <li><a href="#">Bootstrap</a></li>
        <li class="active">Breadcrumb</li>
      </ul>
  </div>
</div>
```
Minh họa:

![Image](/screenshots/hinh7.png)

4.Pagination
- Tương tự như breadcrumb, ta cũng dàng phân trang bằng cách dùng thẻ ul và l>, thêm class 'pagination' vào thẻ ul. Các class 'active' hoặc 'disable' thêm vào thẻ li để báo người dùng biết đang ở trang nào.

- Ví dụ:

```html
<div class="container">
  <div class="row">
    <h2>Pagination</h2>
      <ul class="pagination">
        <li><a href="#">&laquo;</a></li>
        <li><a href="#">1</a></li>
        <li class="active"><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">&raquo;</a></li>
      </ul>
  </div>
</div>
```

Minh họa:

![Image](/screenshots/hinh8.png)

5.Buttons

- Tùy mục đích sử dụng, Bootstrap cung cấp các class khác nhau cho việc tao css cho buttons:
  + btn: mặc định (Bắt buộc phải khai báo)
  + btn-primary:  tạo ra button màu xanh dương đậm
  + btn-success:  tạo ra button màu xanh lá cây
  + btn-info: tạo ra button màu xanh dương
  + btn-warning:  tạo ra button màu cam
  + btn-danger: tạo ra button màu đỏ
  + btn-link: tạo ra button có dạng cick liên kết
  + btn-lg:  tạo ra button với cỡ lớn
  + btn-sm: tạo ra button với cỡ nhỏ
  + btn-xs: tạo ra button với cỡ rất nhỏ
  + active:
  + disabled:

- Ví dụ:

```html
<div class="container">
  <div class="row">
  <h2>Buttons</h2>
      <button type="button" class="btn btn-default">Default</button>
      <button type="button" class="btn btn-primary">Primary</button>
      <button type="button" class="btn btn-success">Success</button>
      <button type="button" class="btn btn-info">Info</button>
      <button type="button" class="btn btn-warning">Warning</button>
      <button type="button" class="btn btn-danger">Danger</button>
      <button type="button" class="btn btn-link">Link</button>
  </div><br>
  <div class="row">
    <button type="button" class="btn btn-lg">Big</button>
    <button type="button" class="btn btn-sm">Small</button>
    <button type="button" class="btn btn-xs">Mini</button>
  </div><br>
  <div class="row">
    <button type="button" class="btn btn-success active">Active</button>
    <button type="button" class="btn btn-success disabled">Disabled</button>
  </div><br>
</div>
```

Minh họa:

![Image](/screenshots/hinh9.png)

6.Form
- Với bootstrap chúng ta thật dễ dàng khi tạo form, không phải mất thời gian để căn chỉnh, tất cả đều được tự động khi ta thêm class.
- Có 3 kiểu form cơ bản chúng ta thường dùng là:
+ Vertical form: Đây là kiểu form mặc định(form dọc), chúng ta không cần phải thêm class vào thẻ <form>. Bên trong <form></form> là class 'form-group', các thẻ input thì thêm class 'form-control'.

- Ví dụ:

```html
<div class="container">
  <div class="row">
    <h2>Vertical Form</h2>
    <form>
      <div class="form-group">
        <label>Username</label>
        <input type="username" class="form-control" placeholder="Username">
      </div>
      <div class="form-group">
        <label>Password</label>
        <input type="password" class="form-control" placeholder="Password">
      </div>
      <button type="submit" class="btn btn-primary">Login</button>
    </form>
  </div>
</div>
```

Minh họa:

![Image](/screenshots/hinh10.png)

Nếu không thêm class của Bootstrap:

![Image](/screenshots/hinh11.png)

+ Inline form
- Là kiểu form tất cả nằm trên 1 dòng, thích hợp với màn hình có kích thước nhỏ. Với kiểu form này, ta chỉ cần thêm class 'form-inline' vào thẻ <form>.

- Ví dụ:

```html
<div class="container">
  <div class="row">
    <h2>Vertical Form</h2>
    <form class='form-inline'>
      <div class="form-group">
        <label>Username</label>
        <input type="username" class="form-control" placeholder="Username">
      </div>
      <div class="form-group">
        <label>Password</label>
        <input type="password" class="form-control" placeholder="Password">
      </div>
      <button type="submit" class="btn btn-primary">Login</button>
    </form>
  </div>
</div>
```

Minh họa:

![Image](/screenshots/hinh12.png)

+ Horizontal form
- Là kiểu form ngang, thêm class 'form-horizontal' để khai báo dùng kiểu form này.
- Chúng ta có thể căn chỉnh kích thước của thẻ <label>, <input>:
+ control-label: thêm class này vào thẻ <label> mới có thể thêm class col-xx-y(căn chỉnh kích thước bằng Grid System) vào được
+ col-xs-offset-2: căn lề trái

- Ví dụ:

```html
<div class="container">
  <div class="row">
    <h2>Horizontal Form</h2>
    <form class='form-horizontal'>
      <div class="form-group">
        <label class="control-label col-sm-2">Username</label>
        <div class="col-sm-5">
          <input type="username" class="form-control" placeholder="Username">
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2">Password</label>
        <div class="col-sm-5">
          <input type="password" class="form-control" placeholder="Password">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-5">
          <button type="submit" class="btn btn-primary">Login</button>
        </div>
      </div>
    </form>
  </div>
</div>

```
Minh họa:

![Image](/screenshots/hinh13.png)
