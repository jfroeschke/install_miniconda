# --- Basic Python test ---
print("Hello from Python!")

# Check Python version
import sys
print("Python version:", sys.version)

# --- Test a math operation ---
x = 5
y = 7
print("x + y =", x + y)

# --- Test a loop ---
for i in range(3):
    print(f"Loop test value: {i}")

# --- Test NumPy (optional) ---
try:
    import numpy as np
    arr = np.array([1, 2, 3])
    print("NumPy array:", arr)
    print("Array multiplied by 10:", arr * 10)
except ImportError:
    print("NumPy is not installed in this environment.")

print("Script finished successfully.")
