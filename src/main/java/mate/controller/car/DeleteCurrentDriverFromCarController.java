package mate.controller.car;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class DeleteCurrentDriverFromCarController extends HttpServlet {
    private static final String DRIVER_ID = "driver_id";
    private static final String CAR_ID = "car_id";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute(DRIVER_ID);
        Driver driver = driverService.get(driverId);
        long carId = Long.parseLong(req.getParameter(CAR_ID));
        Car car = carService.get(carId);
        carService.removeDriverFromCar(driver, car);
        String contextPath = req.getContextPath();
        resp.sendRedirect(contextPath + "/cars/current");
    }
}
