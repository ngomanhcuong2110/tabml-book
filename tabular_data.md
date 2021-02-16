# Dữ liệu dạng bảng

## Khó khăn khi làm việc với dữ liệu dạng bảng

### Sự khan hiếm của dữ liệu dạng bảng
 
Một trong những đặc điểm của dữ liệu dạng bảng là khó khăn trong việc thu thập dữ liệu.
Dữ liệu ảnh hay văn bản có thể được tìm kiếm dễ dàng qua các bộ dữ liệu được công khai
trên mạng. Với dữ liệu bảng, mỗi công ty thường có dữ liệu và cách thu thập riêng; và
quan trọng hơn, những dữ liệu này rất ít khi được công bố rộng rãi. Các công ty lớn có
thể công bố thuật toán, mã nguồn của nghiều mô hình ML, nhưng dữ liệu mới là tài sản quý
hơn cả. Việc khan hiếm của dữ liệu dạng bảng một phần dẫn đến sự thiếu hụt về các tài
liệu cho dữ liệu loại này và cũng gián tiếp dẫn đến việc các thuật toán Deep Learning,
vốn cần rất nhiều dữ liệu để huấn luyện, thường không mang lại kết quả tốt nhất.

### Dữ liệu bị nhiễu hoặc khuyết

Nhiều đặc trưng trong dữ liệu dạng bảng thường được thu thập bằng các phiếu khảo sát
(điện tử hoặc thủ công). Chẳng hạn, khi người dùng tạo tài khoản ở một trang mạng, họ
được yêu cầu nhập tên, tuổi, quê quán, vị trí địa lý, v.v; chuyện người dùng cố tình
khai báo sai thông tin chắc chắn không phải là chuyện hiếm. Thậm chí, một người dùng có
thể có nhiều tài khoản ảo với những thông tin trái ngược. Hoặc họ có thể đã từ chối cung
cấp một loại thông tin nào đó, chẳng hạn tắt GPS, khiến trường thông tin đó bị khuyết.

### Nhiều đặc trưng hạng mục

Các mô hình ML, đặc biệt là các mô hình DL, thường hoạt động tốt khi dữ liệu đầu vào ở dạng số và liên tục. Dữ liệu ảnh, mặc dù
nhận các giá trị số nguyên nhưng cũng có thể coi là liên tục với màu sắc thay đổi từ từ theo giá trị
các điểm ảnh. Đầu vào của các mô hình NLP cũng thường là các embedding vector của các từ/câu/văn bản, các
vector này là vector của các số thực liên tục. Các embedding gần nhau trong không gian cũng thường mang
ý nghĩa gần nhau. Dữ liệu dạng bảng thường ít khi ở dưới dạng liên tục.

Đặc trưng trong dữ liệu bảng có thể là một trong nhiều hạng mục khác nhau (_categorical data_).
Chẳng hạn, nơi sinh của người dùng, tên của một loại sản phẩm hay mã của một phần quảng cáo là các loại đặc trưng ở dạng danh mục.
Mặc dù vẫn có thể có các hạng mục mang ý nghĩa gần với nhau (ví dụ về mặt địa lý hoặc về mặt chủng loại), rất khó để đo đếm sự gần nhau đó.
Hà Nội có thể rất xa Tp HCM và gần Hà Giang hơn, nhưng Hà Nội lại giống Tp HCM hơn theo nghĩa đều là các thành phố lớn.

### Đặc trưng hạng mục có nhiều phần tử phân biệt

Cách truyền thống để biến các đặc trưng hạng mục về dạng số là sử dụng phép biến đổi one-hot ^[là một vector].

### Không thể áp dụng Transfer Learning

Với dữ liệu ảnh hay văn bản, kể cả khi không có lượng dữ liệu đủ lớn, các kỹ sư ML vẫn
có thể tạo ra các mô hình với chất lượng cao dựa trên kỹ thuật Transfer Learning.
Kỹ thuật này 

## Các phương pháp xây dựng đặc trưng

## Impute dữ liệu bị khuyết

```{python}
from matplotlib import pyplot as plt
plt.plot([1, 2, 3], [1, 4, 9])
```

```{python, results="hold"}
print("Hello")
print("World")
```
