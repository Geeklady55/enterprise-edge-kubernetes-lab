from fastapi import FastAPI

app= FastAPI(title="Enterprise Edge Kubernetes API LaB")

@app.get("/")
def home():
    return {"message": API is running"}

@app.get("/health")
de health():
   return {"status": "healthy"}

@app.get("/device")
def health():
    return [
       {"name": "edge-node-01", "status": "online"}
       {"name": ":edge-node-02", "status": "offline"}
    ]


