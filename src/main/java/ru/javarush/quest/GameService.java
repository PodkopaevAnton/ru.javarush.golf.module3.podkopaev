package ru.javarush.quest;

import ru.javarush.quest.entities.Question;

import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

public class GameService {
    private final QuestionRepository questionRepository = new QuestionRepository();
    private final AnswerRepository answerRepository = new AnswerRepository();

    public GameService() {
    }
    public String getQuestionById(int id){
        return questionRepository.getQuestions().stream()
                .filter(question -> question.getId()==id).findFirst().map(Question::getText).orElseThrow(RuntimeException::new);
    }

    public Map<Integer,String> getAnswersById(int id){

        return  answerRepository.getAnswersById(id).isEmpty() ? null :
                answerRepository.getAnswers().entrySet().stream()
                .filter(answer -> answer.getValue().getId()==id)
                .collect(Collectors.toMap(e->e.getValue().getNextQuestionId(),b->b.getValue().getText()));
    }

    public boolean checkLose(String id){
        return (Objects.equals(id, "0") || id == null);
    }

    public boolean checkWin(String id){
            return Integer.parseInt(id) == questionRepository.getQuestions().size();
    }
}
