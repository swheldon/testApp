class TenantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tenant, only: [:show, :edit, :update, :destroy]
  #http_basic_authenticate_with name: ENV.fetch('BASIC_AUTHENTICATE_USER'), password: ENV.fetch('BASIC_AUTHENTICATE_SECRET')
  # GET /tenants
  # GET /tenants.json
  def index
    @tenants = Tenant.all
  end

  # GET /tenants/1
  # GET /tenants/1.json
  def show
  @tenants = Tenant.find(params[:id])
  end

  # GET /tenants/new
  def new
    @tenant = Tenant.new
  end

  # GET /tenants/1/edit
  def edit
    @tenant = Tenant.find(params[:id])
  end

  # POST /tenants
  # POST /tenants.json
  def create
    @tenant = Tenant.new(tenant_params)

    respond_to do |format|
      if @tenant.save
        format.html { redirect_to @tenant, notice: 'Tenant was successfully created.' }
        format.json { render :show, status: :created, location: @tenant }
      else
        format.html { render :new }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenants/1
  # PATCH/PUT /tenants/1.json
  def update
    respond_to do |format|
      if @tenant.update(tenant_params)
        format.html { redirect_to @tenant, notice: 'Tenant was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenant }
      else
        format.html { render :edit }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenants/1
  # DELETE /tenants/1.json
  def destroy

    @tenant = Tenant.find(params[:id])
    @tenant.destroy
    respond_to do |format|
      format.html { redirect_to tenants_url, notice: 'Tenant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant
      @tenant = Tenant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenant_params
      params.require(:tenant).permit(:last_name, :first_name, :address_line_1, :address_line_2, :town, :county, :postal_code, :phone_number, :email, :employment_status, :tenant_count, :move_in_date, :term_months, :furnished, :lead_source, :special_requirements, :estate_id, :budget, :url_1, :url_2, :url_3, :url_4, :url_5, :url_6, :notes)
    end
end

