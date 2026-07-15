CREATE DATABASE world_cup_db;

CREATE TABLE world_cups (
    year SMALLINT PRIMARY KEY,
    country VARCHAR(100),
    winner VARCHAR(100),
    runners_up VARCHAR(100),
    third_place VARCHAR(100),
    fourth_place VARCHAR(100),
    goals_scored SMALLINT,
    qualified_teams SMALLINT,
    matches_played SMALLINT,
    attendance_text VARCHAR(30)
);

CREATE TABLE world_cup_matches (
    match_record_id BIGSERIAL PRIMARY KEY,
    year SMALLINT,
    match_datetime VARCHAR(60),
    stage VARCHAR(100),
    stadium VARCHAR(150),
    city VARCHAR(100),
    home_team_name VARCHAR(100),
    home_team_goals SMALLINT,
    away_team_goals SMALLINT,
    away_team_name VARCHAR(100),
    win_conditions VARCHAR(255),
    attendance INTEGER,
    half_time_home_goals SMALLINT,
    half_time_away_goals SMALLINT,
    referee VARCHAR(150),
    assistant_1 VARCHAR(150),
    assistant_2 VARCHAR(150),
    round_id INTEGER,
    match_id INTEGER,
    home_team_initials VARCHAR(10),
    away_team_initials VARCHAR(10)
);

CREATE TABLE world_cup_players (
    player_record_id BIGSERIAL PRIMARY KEY,
    round_id INTEGER,
    match_id INTEGER,
    team_initials VARCHAR(10),
    coach_name VARCHAR(150),
    line_up CHAR(1),
    shirt_number SMALLINT,
    player_name VARCHAR(150),
    position VARCHAR(20),
    event VARCHAR(100)
);

CREATE INDEX idx_matches_year ON world_cup_matches(year);
CREATE INDEX idx_matches_match_id ON world_cup_matches(match_id);
CREATE INDEX idx_players_match_id ON world_cup_players(match_id);
CREATE INDEX idx_players_team ON world_cup_players(team_initials);

DROP TABLE IF EXISTS world_cup_matches;

CREATE TABLE world_cup_matches (
    "Year" SMALLINT,
    "Datetime" VARCHAR(60),
    "Stage" VARCHAR(100),
    "Stadium" VARCHAR(150),
    "City" VARCHAR(100),
    "Home Team Name" VARCHAR(100),
    "Home Team Goals" SMALLINT,
    "Away Team Goals" SMALLINT,
    "Away Team Name" VARCHAR(100),
    "Win conditions" VARCHAR(255),
    "Attendance" INTEGER,
    "Half-time Home Goals" SMALLINT,
    "Half-time Away Goals" SMALLINT,
    "Referee" VARCHAR(150),
    "Assistant 1" VARCHAR(150),
    "Assistant 2" VARCHAR(150),
    "RoundID" INTEGER,
    "MatchID" INTEGER,
    "Home Team Initials" VARCHAR(10),
    "Away Team Initials" VARCHAR(10)
);

DROP TABLE IF EXISTS world_cups;

CREATE TABLE world_cups (
    "Year" SMALLINT,
    "Country" VARCHAR(100),
    "Winner" VARCHAR(100),
    "Runners-Up" VARCHAR(100),
    "Third" VARCHAR(100),
    "Fourth" VARCHAR(100),
    "GoalsScored" SMALLINT,
    "QualifiedTeams" SMALLINT,
    "MatchesPlayed" SMALLINT,
    "Attendance" VARCHAR(30)
);

DROP TABLE IF EXISTS world_cup_players;

CREATE TABLE world_cup_players (
    "RoundID" INTEGER,
    "MatchID" INTEGER,
    "Team Initials" VARCHAR(10),
    "Coach Name" VARCHAR(150),
    "Line-up" CHAR(1),
    "Shirt Number" SMALLINT,
    "Player Name" VARCHAR(150),
    "Position" VARCHAR(20),
    "Event" VARCHAR(100)
);