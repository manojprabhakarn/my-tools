import socket
import threading

def scan_port(host, port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.settimeout(5)
    result = sock.connect_ex((host, port))
    if result == 0:
        print(f"Port {port} is open")
    sock.close()

def main():
    host = input("Enter host name or IP: ")
    for port in range(1, 80):
        t = threading.Thread(target=scan_port, args=(host, port))
        t.start()

if __name__ == "__main__":
    main()