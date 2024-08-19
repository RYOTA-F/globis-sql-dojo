# SQL 道場

## Setup

### 1. Docker イメージ立ち上げ

```zsh
% docker compose up -d
```

### 2. イメージ起動チェック

```zsh
% docker-compose ps
```

### 3. コンテナアクセス

```zsh
% docker-compose exec db sh
```

### 4. Postgres ログイン

```zsh
% psql -p 5432 -U user sql_dojo
```
