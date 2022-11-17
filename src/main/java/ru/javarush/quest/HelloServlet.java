package ru.javarush.quest;

import java.io.*;
import java.net.Inet4Address;
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


        HttpSession session = request.getSession();

        String name = request.getParameter("name");
        String countGames = request.getParameter("countGames");
        if(name != null) {
            session.setAttribute("name", name);
//            int count = Integer.parseInt(countGames);
//            count = count+1;
//            session.setAttribute("countGames",count);
        }
        session.setAttribute("ip", Inet4Address.getLocalHost().getHostAddress());
        String ip = (String) session.getAttribute("ip");
        String sessionId = session.getId();

        String id = request.getParameter("id");
            if (gameService.checkLose(id)){
                response.sendRedirect("index.jsp");
            }else{
                int intId = Integer.parseInt(id);
                String question = gameService.getQuestionById(intId);
                Map<Integer, String> answers = gameService.getAnswersById(intId);
                request.setAttribute("question", question);
                request.setAttribute("answers", answers);
//                request.setAttribute("countGames",countGames);
                request.setAttribute("name", name);
                request.setAttribute("sessionIp",ip);
                request.setAttribute("sessionId",sessionId);
                request.getRequestDispatcher("quest.jsp").forward(request, response);
            }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void destroy() {
    }
}