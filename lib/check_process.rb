class CheckProcess

  require 'json'

  attr_reader :site, :details

  def initialize(site)
      @site = site
      build_response
      check_site
      build_status
      update_site
      create_log
      @site
  end

  def ready?
      @site_ready
  end

  private

  def build_response
      @response = case @site.http_method.to_s
          when 'get'
              ::RestClient.get(@site.url)
          when 'post'
              ::RestClient.post(@site.url, {})
          when 'put'
              ::RestClient.put(@site.url, {})
          when 'delete'
              ::RestClient.delete(@site.url, {})
      end
  end

  def check_site
      @condition_details = []
      @site_ready = true
      @site.conditions.each do |condition|
          ready = case condition.ctype
              when 'with_snippet'
                  (@response.body.include?(condition.value))
              when 'without_snippet'
                  !(@response.body.include?(condition.value))
              when 'with_response_code'
                  (@response.code == condition.value.to_i)
              when 'without_response_code'
                  (@response.code != condition.value.to_i)
          end

          @condition_details.push({
            :ctype=>condition.ctype,
            :value=>condition.value,
            :ready=>ready
          })

          @site_ready = false unless ready
      end
  end

  def build_status
    @status = @site_ready ? :ready : :failed

  end

  def update_site
    @site.last_check = Time.now
    @site.status = @status
    @site.save
  end

  def create_log
    Log.create!(
      site: @site,
      status: @status,
      details: @condition_details.to_json
    )
  end

end
