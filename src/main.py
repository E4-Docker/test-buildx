import platform

def main():
    os_name = platform.system()
    os_version = platform.release()
    architecture = platform.machine()

    print(f"Platform: {os_name} {os_version} / {architecture}")

if __name__ == "__main__":
    main()
