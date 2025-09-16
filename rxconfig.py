# pylint: disable=E1102

import reflex as rx

config = rx.Config(
    app_name="reflex_project_template",
    plugins=[
        rx.plugins.SitemapPlugin(),
        rx.plugins.TailwindV4Plugin(),
    ],
)
