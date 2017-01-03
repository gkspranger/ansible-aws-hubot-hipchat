CREATE DATABASE IF NOT EXISTS bot;
CREATE TABLE IF NOT EXISTS `bot`.`audit` \
    ( \
        id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY, \
        message TEXT NOT NULL, \
        datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP \
    );
CREATE TABLE IF NOT EXISTS `bot`.`user` \
    ( \
        id VARCHAR(255) NOT NULL PRIMARY KEY, \
        name VARCHAR(255) NOT NULL \
    );
CREATE TABLE IF NOT EXISTS `bot`.`role` \
    ( \
        id VARCHAR(255) NOT NULL PRIMARY KEY \
        description VARCHAR(255) NOT NULL \
    );
CREATE TABLE IF NOT EXISTS `bot`.`user_role` \
    ( \
        user_id VARCHAR(255) NOT NULL, \
        role_id VARCHAR(255) NOT NULL, \
        PRIMARY KEY (user_id, role_id)
    );
CREATE TABLE IF NOT EXISTS `bot`.`command` \
    ( \
        id VARCHAR(255) NOT NULL PRIMARY KEY \
        description VARCHAR(255) NOT NULL \
    );
CREATE TABLE IF NOT EXISTS `bot`.`role_command` \
    ( \
        role_id VARCHAR(255) NOT NULL, \
        command_id VARCHAR(255) NOT NULL, \
        PRIMARY KEY (role_id, command_id)
    );
    