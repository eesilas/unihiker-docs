# UNIHIKER & mkdocs

1. **Install Software**
    - Python
    - Git
    - Visual Studio Code (VSCode)
2. **Install mkdocs and mkdocs-material**
    ```bash
    python -m pip install mkdocs mkdocs-material mkdocs-minify-plugin mkdocs-glightbox
    ```
    If already installed, you can upgrade them:
    ```bash
    python -m pip install --upgrade mkdocs mkdocs-material mkdocs-minify-plugin mkdocs-glightbox
    ```
3. **Clone the Repository**
4. **Navigate to the cloned repository's path** in the command line (where you can see the `mkdocs.yml` file), and run the local mkdocs test server:
    ```bash
      
   python -m mkdocs serve -a 0.0.0.0:8000
   
   ```
5. **Access the local test server** using a web browser by visiting [127.0.0.1:8000](http://127.0.0.1:8000/).

