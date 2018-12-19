from pynput.keyboard import Key, Controller

def cus_keypress_Enter():
	print("Simulacion para presionar la tecla ESC")

	keyboard = Controller()
	keyboard.press(Key.enter)
	keyboard.release(Key.enter)
