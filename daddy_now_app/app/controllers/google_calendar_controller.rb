class GoogleCalendarController < ApplicationController
  def redirect
    client = Signet::OAuth2::Client.new(client_options)
   
    b = Selenium::WebDriver.for :chrome
    response = b.get(client.authorization_uri.to_s)
  
    while !$calendar_list
      sleep 1
    end
  
    render json: {events: $calendar_list}
  end

  def callback
     
    client = Signet::OAuth2::Client.new(client_options)
    
    client.code = params[:code]
    
    response = client.fetch_access_token!
    
    session[:authorization] = response
    
    redirect_to calendars_url
    
  end

  def calendars
       
    client = Signet::OAuth2::Client.new(client_options)
    client.update!(session[:authorization])
    service = Google::Apis::CalendarV3::CalendarService.new
    
    service.authorization = client
    
    $calendar_list = service.list_calendar_lists
    @event_list = service.list_events(params[:calendar_id])
    p "@event_list"
    p @event_list
    render 'calendars.json.jbuilder'
    
    rescue Google::Apis::AuthorizationError
    
      response = client.refresh!
    
      session[:authorization] = session[:authorization].merge(response)
    
    retry
    
  end

   def events
    client = Signet::OAuth2::Client.new(client_options)
    client.update!(session[:authorization])

    service = Google::Apis::CalendarV3::CalendarService.new
    service.authorization = client

    
    p @event_list
    render 'calendars.json.jbuilder'
  end

  def new_event
    client = Signet::OAuth2::Client.new(client_options)
    client.update!(session[:authorization])

    service = Google::Apis::CalendarV3::CalendarService.new
    service.authorization = client

    today = Date.today

    event = Google::Apis::CalendarV3::Event.new({
      start: Google::Apis::CalendarV3::EventDateTime.new(date: today),
      end: Google::Apis::CalendarV3::EventDateTime.new(date: today + 1),
      summary: 'New event!'
    })

    service.insert_event(params[:calendar_id], event)

    redirect_to events_url(calendar_id: params[:calendar_id])
  end

  private

  def client_options
    {
      client_id: Rails.application.secrets.google_client_id,
      client_secret: Rails.application.secrets.google_client_secret,
      authorization_uri: 'https://accounts.google.com/o/oauth2/auth',
      token_credential_uri: 'https://accounts.google.com/o/oauth2/token',
      scope: Google::Apis::CalendarV3::AUTH_CALENDAR,
      redirect_uri: callback_url
    }
  end
end