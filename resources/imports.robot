*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     OperatingSystem
Library  ../core/driver_manager.py
Library  driver_manager.WebdriverManager
Resource    ../keywords/web/web_imports.robot
Variables   config/application_config.yaml
