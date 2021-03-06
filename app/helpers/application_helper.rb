# encoding: utf-8
module ApplicationHelper
  def title
    if @page
      "Rusrails: " + @page.title
    else
      "Rusrails: Ruby on Rails по-русски"
    end
  end

  def opengraph_config
    {
      og_type: "website",
      og_title: title,
      og_description: "Ruby on Rails руководства, учебники, статьи на русском языке",
      og_url: request.original_url,
      og_image: "http://rusrails.ru/assets/rusrails.png"
    }
  end

  def mkdev_random_banner
    [
      {
        url: 'https://lp.mkdev.me/obuchenie-web-razrabotke-na-ruby-on-rails?utm_source=rusrails',
        image: 'partners/mkdev/banner120619.png'
      },
    ].sample
  end
end
