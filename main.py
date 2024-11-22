from fastapi import FastAPI
from typing import Optional

app = FastAPI()


@app.get("/")
def hello_recruto(name: Optional[str] = "Recruto", message: Optional[str] = "Давай дружить"):
    return f"Hello {name}! {message}!"


if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="0.0.0.0", port=8000)
