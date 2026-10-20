build: thumbnail
    mkdir -p build
    typst c --root . examples/test_article/main.typ build/test_article.pdf
    typst c --root . examples/jflart_typst/jflart.typ build/jflart.pdf
    cd examples/jflart_latex/ && just build

thumbnail:
    typst c --root . examples/test_article/main.typ thumbnail.png --format png --pages 1

publish VERSION PACKAGES_PATH:
    just publish-clean {{VERSION}} {{PACKAGES_PATH}}
    mkdir -p             {{PACKAGES_PATH}}/jfla-template/{{VERSION}}/

    cp jfla-template.typ {{PACKAGES_PATH}}/jfla-template/{{VERSION}}/
    cp typst.toml        {{PACKAGES_PATH}}/jfla-template/{{VERSION}}/
    cp LICENSE           {{PACKAGES_PATH}}/jfla-template/{{VERSION}}/
    cp README.md         {{PACKAGES_PATH}}/jfla-template/{{VERSION}}/
    cp thumbnail.png     {{PACKAGES_PATH}}/jfla-template/{{VERSION}}/
    cp -R template/      {{PACKAGES_PATH}}/jfla-template/{{VERSION}}/template/

publish-clean VERSION PACKAGES_PATH:
    rm -rf {{PACKAGES_PATH}}/jfla-template/{{VERSION}}/

clean:
    rm -rf build
    rm -f thumbail.png
    cd examples/jflart_latex/ && just clean
