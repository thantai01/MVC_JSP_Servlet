package controller;

import model.Character;
import model.CharacterService;
import model.ManagerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

@WebServlet(name = "CharacterServlet", urlPatterns = "/main")
public class CharacterServlet extends HttpServlet {
    private ManagerService<Character> characterManager = new CharacterService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action==null) {
            action ="";
        }
        switch (action) {
            case "create":
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "view" :
                break;
            default: characterList(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action==null) {
            action ="";
        }
        switch (action) {
            case "create":
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:characterList(request,response);
                break;
        }
    }
    private void characterList(HttpServletRequest request, HttpServletResponse response) {
        List<Character> characterList = this.characterManager.displayList();
        request.setAttribute("characters",characterList);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        try {
            rd.forward(request,response);
        } catch (Exception exception) {
            exception.printStackTrace();
        };
    }
}
