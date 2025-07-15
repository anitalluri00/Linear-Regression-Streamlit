# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy all necessary files
COPY requirements.txt .
COPY app_streamlit.py .
COPY stremlit_exercise.py .
COPY house_model.pkl .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Streamlit-specific configs (to run without auth and open on port 8501)
ENV PYTHONUNBUFFERED=1 \
    STREAMLIT_PORT=8501 \
    STREAMLIT_BROWSER_GATHER_USAGE_STATS=false

# Expose Streamlit port
EXPOSE 8501

# Command to run the primary Streamlit app
CMD ["streamlit", "run", "app_streamlit.py"]
