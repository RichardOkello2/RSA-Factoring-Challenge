import sys

def factorize(n):
    # Try dividing n by every number between 2 and sqrt(n)
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return (i, n // i)
    return (n, 1)

def main():
    # Read the numbers from the file
    with open(sys.argv[1], "r") as f:
        numbers = [int(line.strip()) for line in f]

    # Factorize each number and print the result
    for n in numbers:
        p, q = factorize(n)
        print(f"{n} = {p} * {q}")

if __name__ == "__main__":
    main()
