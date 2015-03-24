==SVG(Scalable Vector Graphics)

SGV là một ngôn ngữ dùng để mô tả đồ họa 2D và đang ngày càng phổ biến cùng với HTML5.

* Cú pháp: HTML5 cho phép dung trực tiếp thẻ <sgv>
```html
<sgv>...</sgv>
```

1. Tạo hình ảnh(Shape)

1.1 Hình tròn:

Cú pháp:

  ```html
  <sgv><circle cx=".." cy="value" r=".." stroke=".." stroke-width=".." fill=".." /></svg>
  ```
- r: bán kính hình tròn
- cx: khoảng cách từ tâm đường tròn đến mép trái của thẻ <sgv>
- cy: khoảng cách từ tâm đường tròn đến phía trên của thẻ <sgv>
- fill: màu của hình tròn
- stroke-width: độ dày đường viền
- stroke: màu của đường viền( nếu không có, hình tròn sẽ không có đường viền)

Ví dụ:

```html
<svg width="200" height="150">
  <circle cx="100" cy="75" r="70" stroke="red" stroke-width="10" fill="yellow" />
</svg>
```

Minh họa:

![Image](/screenshots/hinh1.png)

1.2 Hình chữ nhật:

Cú pháp:

```html
  <svg><rect width=".." height=".." fill=".." stroke=".." stroke-width=".." /></svg>
```
- width: chiều rộng
- height: chiều cao
- fill: màu của hình
- stroke-width: độ dày đường viền
- stroke: màu của đường viền

Ví dụ:

```html
<svg width="400" height="120">
  <rect width="300" height="100" fill="green" stroke="black" stroke-width="10" />
</svg>
```

Minh họa:

![Image](./screenshots/hinh2.png)

1.3 Đường thẳng:

Cú pháp:

  ```html
  <svg><line x1=".." y1=".." x2=".." y2=".." stroke=".." stroke-width=".." /></svg>
  ```
- x1: điểm bắt đầu theo trục x
- x2: điểm bắt đầu theo trục x
- y1: điểm bắt đầu theo trục y
- y2: điểm bắt đầu theo trục y
- stroke-width: độ dày đường viền
- stroke: màu của đường viền

Ví dụ:

```html
<svg height="60" width="350">
  <line x1="5" y1="5" x2="300" y2="50" stroke="blue" stroke-width="8" />
</svg>
```

Minh họa:

![Image](./screenshots/hinh3.png)

1.4 Hình ellipse

Cú pháp:

  ```html
  <svg><ellipse cx=".." cy=".." rx=".." ry=".." fill=".." stroke=".." stroke-width=".." /></svg>
  ```
  
- cx: khoảng cách từ tâm đường tròn đến mép trái của thẻ <sgv>
- cy: khoảng cách từ tâm đường tròn đến phía trên của thẻ <sgv>
- rx: bán kính chiều ngang
- ry: bán kính chiều dọc
- fill: màu của hình
- stroke-width: độ dày đường viền
- stroke: màu của đường viền

Ví dụ:

```html
<svg height="150" width="350">
  <ellipse cx="200" cy="80" rx="100" ry="50" fill="pink" stroke="purple" stroke-width="10" />
</svg>
```

Minh họa:

![Image](./screenshots/hinh4.png)

1.5 Hình đa giác

Cú pháp:

  ```html
  <svg><polygon points="..,.. ..,.. ..,.." fill=".." stroke= ".." stroke-width=".." /></svg>
  ```
  
- points: giá trị x và y của mỗi điểm. Một hình đa giác cần ít nhất 3 điểm hoặc nhiều hơn.
- fill: màu của hình
- stroke-width: độ dày đường viền
- stroke: màu của đường viền

Ví dụ:

```html
<svg height="260" width="500">
  <polygon points="220,10 300,210 170,250 123,234" fill="lime" stroke= "purple"  stroke-width="5" />
</svg>
```

Minh họa:

![Image](./screenshots/hinh5.png)

1.6 Đường gấp khúc

Cú pháp:

  ```html
  <svg><polyline points="..,.. ..,.. ..,.." fill=".." stroke=".." stroke-width=".." /></svg>
  ```
  
- points: giá trị x và y của mỗi điểm. Một hình đa giác cần ít nhất 3 điểm hoặc nhiều hơn.
- fill: màu của hình
- stroke-width: độ dày đường viền
- stroke: màu của đường viền

Ví dụ:

```html
<svg height="180" width="500">
  <polyline points="0,40 40,40 40,80 80,80 80,120 120,120 120,160" fill="pink" stroke="red" stroke-width="4" />
</svg>
```

Minh họa:

![Image](./screenshots/hinh6.png)

1.7 Văn bản

Cú pháp:
```html
  <svg><text x=".." y=".." fill=".." transform="..">Text</text></svg>
```

- x, y: toạ độ của điểm đầu tiên của đoạn text
- transform: kiểu xoay của đoạn text

Ví dụ:

```html
<svg height="100" width="200">
  <text x="0" y="20" fill="red" transform="rotate(30 20,40)">Vu Thi Minh Hang</text>
</svg>
```

Minh họa:

![Image](./screenshots/hinh7.png)

2. Bộ lọc(Filters)
Filter(bộ lọc) là các thao tác đồ họa áp dụng lên một hình ảnh độ họa gốc có thểsửa đổi theo ý muốn.
Một số bộ lọc của SGV: feBlend, feColorMatrix, feComponentTransfer, feComposite, feConvolveMatrix,..
* Cú pháp:
```html
  <svg>
    <defs>
      <filter id="ID">
        <filter in=".." stdDeviation=".." />
      </filter>
    </defs>
      <phần tử SVG filter="url(#ID)" />
  </svg>
```

Ví dụ: feGaussianBlur

```html
<svg height="110" width="300">
  <defs>
    <filter id="blur">
      <feGaussianBlur in="SourceGraphic" stdDeviation="5" />
    </filter>
  </defs>
  <rect width="300" height="100" stroke="black" stroke-width="3" fill="pink" filter="url(#blur)" />
</svg>
```
Minh họa:

![Image](./screenshots/hinh8.png)

Ví dụ: feOffset, feBlend

```html
<svg height="120" width="200">
  <defs>
    <filter id="blend" width="200%" height="200%">
      <feOffset result="offOut" in="SourceGraphic" dx="25" dy="25" />
      <feBlend in="SourceGraphic" in2="offOut" mode="normal" />
    </filter>
  </defs>
  <rect width="120" height="90" stroke="red" stroke-width="5" fill="blue" filter="url(#blend)" />
</svg>
```

Minh họa:

![Image](./screenshots/hinh9.png)

3. Đổ màu(Gradients)
SVG gradient cho phép đổ màu chuyển đổi màu sắc một cách liên tục, mịn từ màu này sang màu khác trên một phần từ SVG.

Có 2 loại:

3.1 linearGradient: đổ màu từ trên xuống dưới, từ trái qua phải và ngược lại.

Cú pháp:
```html
  <svg>
    <defs>
      linearGradient id="ID" x1=".." y1=".." x2=".." y2="..">
        <stop offset=".." stop-color=".." />
        <stop offset=".." stop-color=".."/>
      </linearGradient>
    </defs>
    <phần tử SVG fill="url(#ID)" />
  </svg>
```
Trong đó:
- x1, x2, y1, y2: xác định bắt đầu và kết thúc vị trí của gradient
- Phạm vi màu cho một gradient có thể được bao gồm hai hoặc nhiều màu sắc. Mỗi màu sắc được quy định với một thẻ <stop>

Ví dụ:

```html
<svg height="150" width="400">
  <defs>
    <linearGradient id="linear_gradient" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" stop-color="blue" stop-opacity="1" />
      <stop offset="100%" stop-color="green" stop-opacity="1" />
    </linearGradient>
  </defs>
  <polygon points="220,10 300,210 170,250 123,234" fill="url(#linear_gradient)" />
</svg>
```

Minh họa:

![Image](./screenshots/hinh10.png)

3.2 radialGradient: đổ màu từ trung tâm ra bên ngoài.

Cú pháp:
```html
  <svg>
    <defs>
      <radialGradient id="ID" cx=".." cy=".." r=".." fx=".." fy="..">
          <stop offset=".."   stop-color=".." />
          <stop offset=".." stop-color=".."  />
      </radialGradient>
    </defs>
    <phần tử SVG fill="url(#ID)" />
  </svg>
```
Trong đó:
- cx, cy, r xác định đường tròn ngoài cùng
- fx, fy xác định đường tròn trong cùng
- Phạm vi màu cho một gradient có thể được bao gồm hai hoặc nhiều màu sắc. Mỗi màu sắc được quy định với một thẻ <stop>.

Ví dụ:

```html
<svg height="150" width="500">
  <defs>
    <radialGradient id="radial_gradient" cx="50%" cy="50%" r="50%" fx="50%" fy="50%">
      <stop offset="0%" stop-color="pink" stop-opacity="0" />
      <stop offset="100%" stop-color="violet" stop-opacity="1" />
    </radialGradient>
  </defs>
  <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#radial_gradient)" />
</svg>
```

Minh họa:

![Image](./screenshots/hinh11.png)
