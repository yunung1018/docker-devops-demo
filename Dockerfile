# 使用哪個版本
FROM python:3.10-slim

#在容器建立/app目錄
WORKDIR /app

#複製 requirements.txt ，安裝好套件
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 複製程式
COPY app.py .

#開啟 port
EXPOSE 8080

#執行app.py
CMD ["python", "app.py"]