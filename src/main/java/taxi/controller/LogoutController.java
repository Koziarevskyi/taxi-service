package taxi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.lib.Injector;
import taxi.service.DriverService;

public class LogoutController extends HttpServlet {
    private static final Logger logger = LogManager.getLogger(LogoutController.class);
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        long driverId = Long.parseLong(req.getParameter("driver_id"));
        String login = driverService.get(driverId).getLogin();
        req.getSession().invalidate();
        logger.info("user with login \"{}\" logout", login);
        resp.sendRedirect("/login");
    }
}
