<a name="readme-top"></a>

<div align="center">
  <h1 align="center">YouTube Transcriber Service</h1>
  <p align="center">
    A lightweight API that fetches YouTube video transcripts using the powerful <a href="https://github.com/jdepoix/youtube-transcript-api">youtube-transcript-api</a>. Easily integrates with automation tools like n8n!
    <br />
    <a href="https://github.com/Poltergeistz/yt-transcriber-service/issues">Report Bug</a>
    ·
    <a href="https://github.com/Poltergeistz/yt-transcriber-service/pulls">Open PR</a>
  </p>
</div>

## 📖 Description

- **YouTube Transcriber API** allows fetching subtitles from YouTube videos without authentication.
- Designed to be lightweight, efficient, and easy to deploy via Docker.
- Built for automation workflows (e.g., n8n, Zapier) and AI-powered text analysis.

### 📦 Related Technologies

The project is built using the following technologies:

- [Flask](https://flask.palletsprojects.com/) - Lightweight Python web framework
- [youtube-transcript-api](https://github.com/jdepoix/youtube-transcript-api) - Library for fetching YouTube transcripts
- [Docker](https://www.docker.com/) - Containerization for easy deployment

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⏩ Quick Setup

### 🐳 Running with Docker  

```sh
docker run -p 5000:5000 poltergeistz/youtube-transcriber:latest
```

Or, add it to your `docker-compose.yml`:

```yaml
services:
  yt-transcriber-servicer:
    image: poltergeistz/youtube-transcriber:latest
    container_name: youtube-transcriber
    restart: unless-stopped
    ports:
      - "5000:5000"
    networks:
      - demo # if any
```

Then start it with:

```sh
docker-compose up -d
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📡 API Usage  

### 🔹 Endpoint: `/transcribe`  
**Method:** `GET`  
**Query Parameter:**  
- `video_id` → The YouTube video ID  

#### 📥 Example Request  
```sh
curl -X POST "http://localhost:5000/transcribe" -d '{"video_id": "dQw4w9WgXcQ"}' -H "Content-Type: application/json"
```

#### 📤 Example Response  
```json
{
  "video_id": "dQw4w9WgXcQ",
  "transcript": [
    { "text": "Never gonna give you up", "start": 0.5, "duration": 3.0 },
    { "text": "Never gonna let you down", "start": 3.5, "duration": 3.0 }
  ]
}
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔬 Error Handling  

- `400 Bad Request` → Missing or invalid `video_id`
- `403 Forbidden` → Transcripts are disabled for this video
- `404 Not Found` → Video is unavailable
- `429 Too Many Requests` → YouTube rate-limited the API  
- `500 Internal Server Error` → Unexpected issues

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 🛠 Development  

Clone the repository and build the Docker image:

```bash
git clone https://github.com/Poltergeistz/yt-transcriber-servicer.git
cd yt-transcriber-servicer
docker build -t poltergeistz/yt-transcriber-servicer .
```

To push the image:

```sh
docker push poltergeistz/youtube-transcriber:latest
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 📄 License  

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 📧 Contact  

DavidJ - [https://github.com/Poltergeistz](https://github.com/Poltergeistz)

Project Link: [https://github.com/Poltergeistz/yt-transcriber-service](https://github.com/Poltergeistz/yt-transcriber-service)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
