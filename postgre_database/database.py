from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os
#SQLALCHEMY_DATABASE_URL = "sqlite:///./tripto.db"

# SQLALCHEMY_DATABASE_URL = "postgresql://postgres:admin@localhost/tripto_DB"
# postgres://tripto_db_user:8uiB2HpaI6kbExlirA5NYkQYTNQDe7gc@dpg-cij21i59aq01qqnge0jg-a.oregon-postgres.render.com/tripto_db
SQLALCHEMY_DATABASE_URL = "postgresql://tripto_db_user:8uiB2HpaI6kbExlirA5NYkQYTNQDe7gc@dpg-cij21i59aq01qqnge0jg-a.oregon-postgres.render.com/tripto_db"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
