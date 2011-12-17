class App.Statuses extends Spine.Controller
  elements:
    '.statuses': items
  # events:
  #   'click .item': 'itemClick'

  constructor: ->
    super
    @html JST['app/views/statuses/list']()
    
    Page.bind 'fetch', =>
      @el.addClass('loading')
    
    Page.bind 'refresh', =>
      @el.removeClass('loading')
      @footer.waypoint(@scroll, offset: '80%')
      @render(arguments...)

    Page.fetch()
    
  render: (items = []) =>
    for item in items
      @items.append JST['app/views/statuses/item'](item)
      
  scroll: (e, direction) =>
    @footer.waypoint('destroy')
    Page.fetch()
