# Sanjay's Personal Jekyll Site

This README document provides information on setting up and managing a personal Jekyll site hosted on GitHub Pages, initially developed with Docker. It includes instructions for installation, local development, deployment, and customization of your Jekyll site.

## Table of Contents
1. [Installation](#installation)
2. [Local Development](#local-development)
3. [Deployment](#deployment)
4. [Customization](#customization)
5. [Additional Resources](#additional-resources)

## Installation

To get started with your personal Jekyll site, follow these steps:

1. Clone the repository to your local machine using the following command:
   ```
   git clone <repository-url>
   ```

2. Install Docker on your machine. Refer to the Docker documentation for instructions specific to your operating system.

## Local Development

To develop your Jekyll site locally using Docker, follow these steps:

1. Change into the project directory:
   ```
   cd <project-directory>
   ```

2. Build the Docker image:
   ```
   docker build -t jekyll-site .
   ```

3. Run the Docker container:
   ```
   docker run --rm -p 4000:4000 -v $(pwd):/srv/jekyll jekyll-site
   ```

4. Open your browser and visit `http://localhost:4000` to preview your site.

## Deployment

To deploy your Jekyll site to GitHub Pages, follow these steps:

1. Create a new repository on GitHub with the name `<your-username>.github.io`.

2. Push your local repository to the remote repository:
   ```
   git remote add origin <repository-url>
   git push -u origin master
   ```

3. Enable GitHub Pages for your repository:
   - Go to the repository settings.
   - Under the "GitHub Pages" section, choose the branch you want to use for deployment (usually `master`).
   - Save the settings.

4. Your Jekyll site will be published and accessible at `https://<your-username>.github.io`.

## Customization

To customize your Jekyll site, consider the following options:

- **Layouts**: Modify or create new layouts in the `_layouts` directory.
- **Styles**: Customize the appearance of your site by editing the CSS files located in the `assets/css` directory.
- **Content**: Update the content in the `_posts` and `_pages` directories.
- **Plugins**: Install and configure plugins by adding them to the `Gemfile` and `_config.yml` files.

Make sure to consult the [Jekyll documentation](https://jekyllrb.com/docs/) for detailed information on customizing your site.

## Additional Resources

Here are some additional resources that can help you with your personal Jekyll site:

- [Jekyll Documentation](https://jekyllrb.com/docs/) - Official documentation for Jekyll.
- [GitHub Pages Documentation](https://docs.github.com/en/pages) - Learn more about hosting your site on GitHub Pages.
- [Docker Documentation](https://docs.docker.com/) - Official documentation for Docker.

Feel free to explore and experiment with different features and functionalities provided by Jekyll to create a unique and personalized website.

## License

This project is licensed under the [MIT License](LICENSE).
