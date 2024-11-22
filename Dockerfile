FROM python:3.10-slim

RUN apt-get update && apt-get install -y build-essential

# Создаем рабочую директорию
WORKDIR /app

# Копируем файлы приложения в контейнер
COPY . .

# Устанавливаем зависимости Python
RUN pip install --no-cache-dir fastapi uvicorn

# Указываем команду запуска приложения
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
