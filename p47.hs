True -&&- True = True
_ -&&- _ = False

True -||- _ = True
_ -||- True = True
_ -||- _ = False

True ^|| s = not s
False ^|| s = s

a !&& b = not $ a -&&- b

a !|| b = not $ a -||- b

False ==> _ = True
True ==> s = s

a -==- b = a == b

