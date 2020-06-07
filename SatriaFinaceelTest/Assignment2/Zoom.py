import os
from robot.libraries.BuiltIn import BuiltIn
from appium.webdriver.common.touch_action import TouchAction
from appium.webdriver.common.multi_action import MultiAction
from appium import webdriver

class TouchBehaviour(object):
    def __init__(self):
        """Init function.
        Load and store configs in to variables.
        """
        super(TouchBehaviour, self).__init__()
        self.apu = BuiltIn().get_library_instance('AppiumLibrary')

    def zoom_out_by_coordinates(self, first_x, first_y, x_up, y_up, second_x, second_y, x_down, y_down, wait=50):
        up_finger = TouchAction(self.apu._current_application())
        up_finger.press(x=first_x, y=first_y).wait(wait).move_to(x=x_up, y=y_up).release()

        down_finger = TouchAction(self.apu._current_application())
        down_finger.press(x=second_x, y=second_y).wait(wait).move_to(x=x_down, y=y_down).release()

        multi_touch = MultiAction(self.apu._current_application())
        multi_touch.add(up_finger, down_finger)
        multi_touch.perform()
