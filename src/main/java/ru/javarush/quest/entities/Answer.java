package ru.javarush.quest.entities;

public class Answer {
    private int id;
    private String text;
    private Integer nextQuestionId;

    public Answer(int id, String text, Integer nextQuestionId) {
        this.id = id;
        this.text = text;
        this.nextQuestionId = nextQuestionId;
    }
    public int getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public int getNextQuestionId(){
        return nextQuestionId;
    }
}
