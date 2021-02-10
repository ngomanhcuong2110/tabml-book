## Các Thành phần Cơ bản của Hồi quy Tuyến tính

<!--
*Linear regression* may be both the simplest and most popular among the standard tools to regression.
Dating back to the dawn of the 19th century, linear regression flows from a few simple assumptions.
First, we assume that the relationship between the *features* $\mathbf{x}$ and targets $y$ is linear, 
i.e., that $y$ can be expressed as a weighted sum of the inputs $\textbf{x}$, give or take some noise on the observations.
Second, we assume that any noise is well-behaved (following a Gaussian distribution).
To motivate the approach, let's start with a running example.
Suppose that we wish to estimate the prices of houses (in dollars) based on their area (in square feet) and age (in years).
-->

*Hồi quy tuyến tính* có lẽ là công cụ tiêu chuẩn đơn giản và phổ biến nhất được sử dụng cho bài toán hồi quy.
Xuất hiện từ đầu thế kỉ 19, hồi quy tuyến tính được phát triển từ một vài giả thuyết đơn giản.
Đầu tiên, ta giả sử quan hệ giữa các *đặc trưng* $\mathbf{x}$ và mục tiêu $y$ là tuyến tính, do đó $y$ có thể được biểu diễn bằng tổng trọng số của đầu vào $\textbf{x}$, cộng hoặc trừ thêm nhiễu của các quan sát.
Thứ hai, ta giả sử nhiễu có quy tắc (tuân theo phân phối Gauss).
Để tạo động lực, hãy bắt đầu với một ví dụ.
Giả sử ta muốn ước lượng giá nhà (bằng đô la) dựa vào diện tích (đơn vị feet vuông) và tuổi đời (theo năm).

<!--
To actually fit a model for predicting house prices, we would need to get our hands on a dataset consisting of sales for which we know the sale price, area and age for each home.
In the terminology of machine learning, the dataset is called a *training data* or *training set*, and each row (here the data corresponding to one sale) is called an *instance* or *example*.
The thing we are trying to predict (here, the price) is called a *target* or *label*.
The variables (here *age* and *area*) upon which the predictions are based are called *features* or *covariates*.
-->

Để khớp một mô hình dự đoán giá nhà, chúng ta cần một tập dữ liệu các giao dịch mà trong đó ta biết giá bán, diện tích, tuổi đời cho từng căn nhà.
Trong thuật ngữ của học máy, tập dữ liệu này được gọi là *dữ liệu huấn luyện* hoặc *tập huấn luyện*, và mỗi hàng (tương ứng với dữ liệu của một giao dịch) được gọi là một *ví dụ* hoặc *mẫu*.
Thứ mà chúng ta muốn dự đoán (giá nhà) được gọi là *mục tiêu* hoặc *nhãn*.
Các biến (*tuổi đời* và *diện tích*) mà những dự đoán dựa vào được gọi là các *đặc trưng* hoặc *hiệp biến*.

<!--
Typically, we will use $n$ to denote the number of examples in our dataset.
We index the samples by $i$, denoting each input data point as $x^{(i)} = [x_1^{(i)}, x_2^{(i)}]$ and the corresponding label as $y^{(i)}$.
-->

Thông thường, chúng ta sẽ dùng $n$ để kí hiệu số lượng mẫu trong tập dữ liệu.
Chỉ số $i$ được dùng để xác định một mẫu cụ thể. 
Ta ký hiệu mỗi điểm dữ liệu đầu vào là $x^{(i)} = [x_1^{(i)}, x_2^{(i)}]$ và nhãn tương ứng là $y^{(i)}$.  

<!-- ===================== Kết thúc dịch Phần 2 ===================== -->

<!-- ===================== Bắt đầu dịch Phần 3 ===================== -->

<!-- ========================================= REVISE PHẦN 1 - KẾT THÚC ===================================-->

<!-- ========================================= REVISE PHẦN 2 - BẮT ĐẦU ===================================-->

### Linear Model

Thông thường, chúng ta sẽ dùng $n$ để kí hiệu số lượng mẫu trong tập dữ liệu.
Chỉ số $i$ được dùng để xác định một mẫu cụ thể. 
Ta ký hiệu mỗi điểm dữ liệu đầu vào là $x^{(i)} = [x_1^{(i)}, x_2^{(i)}]$ và nhãn tương ứng là $y^{(i)}$.  
