package ru.konstpavlov.newsline.entity;

public enum  Category {
    MAIN_NEWS,POLITICS,SOCIETY,ECONOMY,SPORT,INCIDENTS,CULTURE,SCIENCE,AUTOMOBILES;

    @Override
    public String toString(){
        switch (this){
            case MAIN_NEWS: return "Main news";
            case POLITICS: return "Politics";
            case SOCIETY: return "Society";
            case ECONOMY: return "Economy";
            case SPORT: return "Sport";
            case INCIDENTS: return "Incidents";
            case CULTURE: return "Culture";
            case SCIENCE: return "Science";
        default:
            return "Automobiles";
        }
    }
}
