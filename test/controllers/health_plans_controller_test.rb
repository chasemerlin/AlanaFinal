require 'test_helper'

class HealthPlansControllerTest < ActionController::TestCase
  setup do
    @health_plan = health_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_plan" do
    assert_difference('HealthPlan.count') do
      post :create, health_plan: { address: @health_plan.address, ak: @health_plan.ak, al: @health_plan.al, aliases: @health_plan.aliases, ar: @health_plan.ar, az: @health_plan.az, blues: @health_plan.blues, ca: @health_plan.ca, city: @health_plan.city, co: @health_plan.co, contracted_pbm: @health_plan.contracted_pbm, contracted_sp_vendor: @health_plan.contracted_sp_vendor, ct: @health_plan.ct, dc: @health_plan.dc, de: @health_plan.de, fax: @health_plan.fax, fl: @health_plan.fl, foreign: @health_plan.foreign, ga: @health_plan.ga, hi: @health_plan.hi, ia: @health_plan.ia, il: @health_plan.il, in: @health_plan.in, indiana: @health_plan.indiana, ks: @health_plan.ks, ky: @health_plan.ky, la: @health_plan.la, ma: @health_plan.ma, mco_id: @health_plan.mco_id, mco_name: @health_plan.mco_name, mco_owner: @health_plan.mco_owner, md: @health_plan.md, me: @health_plan.me, mi: @health_plan.mi, mn: @health_plan.mn, mo: @health_plan.mo, ms: @health_plan.ms, mt: @health_plan.mt, nc: @health_plan.nc, nd: @health_plan.nd, ne: @health_plan.ne, nh: @health_plan.nh, nj: @health_plan.nj, nm: @health_plan.nm, nv: @health_plan.nv, ny: @health_plan.ny, oh: @health_plan.oh, ok: @health_plan.ok, or: @health_plan.or, owner_id: @health_plan.owner_id, pa: @health_plan.pa, pr: @health_plan.pr, private_public: @health_plan.private_public, profit_status: @health_plan.profit_status, provider_sponsored: @health_plan.provider_sponsored, ri: @health_plan.ri, sc: @health_plan.sc, sd: @health_plan.sd, service_areas: @health_plan.service_areas, state_abbreviation: @health_plan.state_abbreviation, telephone_one: @health_plan.telephone_one, telephone_two: @health_plan.telephone_two, tn: @health_plan.tn, tx: @health_plan.tx, url: @health_plan.url, ut: @health_plan.ut, va: @health_plan.va, vt: @health_plan.vt, wa: @health_plan.wa, wi: @health_plan.wi, wv: @health_plan.wv, wy: @health_plan.wy, zip: @health_plan.zip }
    end

    assert_redirected_to health_plan_path(assigns(:health_plan))
  end

  test "should show health_plan" do
    get :show, id: @health_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_plan
    assert_response :success
  end

  test "should update health_plan" do
    patch :update, id: @health_plan, health_plan: { address: @health_plan.address, ak: @health_plan.ak, al: @health_plan.al, aliases: @health_plan.aliases, ar: @health_plan.ar, az: @health_plan.az, blues: @health_plan.blues, ca: @health_plan.ca, city: @health_plan.city, co: @health_plan.co, contracted_pbm: @health_plan.contracted_pbm, contracted_sp_vendor: @health_plan.contracted_sp_vendor, ct: @health_plan.ct, dc: @health_plan.dc, de: @health_plan.de, fax: @health_plan.fax, fl: @health_plan.fl, foreign: @health_plan.foreign, ga: @health_plan.ga, hi: @health_plan.hi, ia: @health_plan.ia, il: @health_plan.il, in: @health_plan.in, indiana: @health_plan.indiana, ks: @health_plan.ks, ky: @health_plan.ky, la: @health_plan.la, ma: @health_plan.ma, mco_id: @health_plan.mco_id, mco_name: @health_plan.mco_name, mco_owner: @health_plan.mco_owner, md: @health_plan.md, me: @health_plan.me, mi: @health_plan.mi, mn: @health_plan.mn, mo: @health_plan.mo, ms: @health_plan.ms, mt: @health_plan.mt, nc: @health_plan.nc, nd: @health_plan.nd, ne: @health_plan.ne, nh: @health_plan.nh, nj: @health_plan.nj, nm: @health_plan.nm, nv: @health_plan.nv, ny: @health_plan.ny, oh: @health_plan.oh, ok: @health_plan.ok, or: @health_plan.or, owner_id: @health_plan.owner_id, pa: @health_plan.pa, pr: @health_plan.pr, private_public: @health_plan.private_public, profit_status: @health_plan.profit_status, provider_sponsored: @health_plan.provider_sponsored, ri: @health_plan.ri, sc: @health_plan.sc, sd: @health_plan.sd, service_areas: @health_plan.service_areas, state_abbreviation: @health_plan.state_abbreviation, telephone_one: @health_plan.telephone_one, telephone_two: @health_plan.telephone_two, tn: @health_plan.tn, tx: @health_plan.tx, url: @health_plan.url, ut: @health_plan.ut, va: @health_plan.va, vt: @health_plan.vt, wa: @health_plan.wa, wi: @health_plan.wi, wv: @health_plan.wv, wy: @health_plan.wy, zip: @health_plan.zip }
    assert_redirected_to health_plan_path(assigns(:health_plan))
  end

  test "should destroy health_plan" do
    assert_difference('HealthPlan.count', -1) do
      delete :destroy, id: @health_plan
    end

    assert_redirected_to health_plans_path
  end
end
