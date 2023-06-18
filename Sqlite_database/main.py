from fastapi import FastAPI
from .APIS import places,User_service,enterpreneur_service,searchEngine, smartTourguide_services,recommender_engine

app = FastAPI()

app.include_router(places.app)
app.include_router(User_service.app)
app.include_router(enterpreneur_service.app)
app.include_router(searchEngine.app)
app.include_router(smartTourguide_services.app)
app.include_router(recommender_engine.app)