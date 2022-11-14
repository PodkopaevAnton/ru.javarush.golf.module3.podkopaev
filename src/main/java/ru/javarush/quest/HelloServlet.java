package ru.javarush.quest;

import java.io.*;
import java.util.Map;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    private GameService gameService;

    public void init() {
        gameService = new GameService();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id = request.getParameter("id");
            if (gameService.checkLose(id)){
                response.sendRedirect("index.jsp");
            }else{
                int intId = Integer.parseInt(id);
                String question = gameService.getQuestionById(intId);
                Map<Integer, String> answers = gameService.getAnswersById(intId);
                request.setAttribute("question", question);
                request.setAttribute("answers", answers);
                request.getRequestDispatcher("quest.jsp").forward(request, response);
            }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void destroy() {
    }
}