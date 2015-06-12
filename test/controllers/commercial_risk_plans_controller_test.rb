require 'test_helper'

class CommercialRiskPlansControllerTest < ActionController::TestCase
  setup do
    @commercial_risk_plan = commercial_risk_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commercial_risk_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commercial_risk_plan" do
    assert_difference('CommercialRiskPlan.count') do
      post :create, commercial_risk_plan: { address: @commercial_risk_plan.address, ak: @commercial_risk_plan.ak, al: @commercial_risk_plan.al, aliases: @commercial_risk_plan.aliases, ar: @commercial_risk_plan.ar, az: @commercial_risk_plan.az, blues: @commercial_risk_plan.blues, ca: @commercial_risk_plan.ca, city: @commercial_risk_plan.city, co: @commercial_risk_plan.co, contracted_pbm: @commercial_risk_plan.contracted_pbm, contracted_sp_vendor: @commercial_risk_plan.contracted_sp_vendor, ct: @commercial_risk_plan.ct, dc: @commercial_risk_plan.dc, de: @commercial_risk_plan.de, fax: @commercial_risk_plan.fax, fl: @commercial_risk_plan.fl, foreign: @commercial_risk_plan.foreign, ga: @commercial_risk_plan.ga, hi: @commercial_risk_plan.hi, ia: @commercial_risk_plan.ia, il: @commercial_risk_plan.il, in: @commercial_risk_plan.in, indiana: @commercial_risk_plan.indiana, ks: @commercial_risk_plan.ks, ky: @commercial_risk_plan.ky, la: @commercial_risk_plan.la, ma: @commercial_risk_plan.ma, mco_id: @commercial_risk_plan.mco_id, mco_name: @commercial_risk_plan.mco_name, mco_owner: @commercial_risk_plan.mco_owner, md: @commercial_risk_plan.md, me: @commercial_risk_plan.me, mi: @commercial_risk_plan.mi, mn: @commercial_risk_plan.mn, mo: @commercial_risk_plan.mo, ms: @commercial_risk_plan.ms, mt: @commercial_risk_plan.mt, nc: @commercial_risk_plan.nc, nd: @commercial_risk_plan.nd, ne: @commercial_risk_plan.ne, nh: @commercial_risk_plan.nh, nj: @commercial_risk_plan.nj, nm: @commercial_risk_plan.nm, nv: @commercial_risk_plan.nv, ny: @commercial_risk_plan.ny, oh: @commercial_risk_plan.oh, ok: @commercial_risk_plan.ok, or: @commercial_risk_plan.or, owner_id: @commercial_risk_plan.owner_id, pa: @commercial_risk_plan.pa, pr: @commercial_risk_plan.pr, private_public: @commercial_risk_plan.private_public, profit_status: @commercial_risk_plan.profit_status, provider_sponsored: @commercial_risk_plan.provider_sponsored, ri: @commercial_risk_plan.ri, sc: @commercial_risk_plan.sc, sd: @commercial_risk_plan.sd, service_areas: @commercial_risk_plan.service_areas, state_abbreviation: @commercial_risk_plan.state_abbreviation, telephone_one: @commercial_risk_plan.telephone_one, telephone_two: @commercial_risk_plan.telephone_two, tn: @commercial_risk_plan.tn, tx: @commercial_risk_plan.tx, url: @commercial_risk_plan.url, ut: @commercial_risk_plan.ut, va: @commercial_risk_plan.va, vt: @commercial_risk_plan.vt, wa: @commercial_risk_plan.wa, wi: @commercial_risk_plan.wi, wv: @commercial_risk_plan.wv, wy: @commercial_risk_plan.wy, zip: @commercial_risk_plan.zip }
    end

    assert_redirected_to commercial_risk_plan_path(assigns(:commercial_risk_plan))
  end

  test "should show commercial_risk_plan" do
    get :show, id: @commercial_risk_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commercial_risk_plan
    assert_response :success
  end

  test "should update commercial_risk_plan" do
    patch :update, id: @commercial_risk_plan, commercial_risk_plan: { address: @commercial_risk_plan.address, ak: @commercial_risk_plan.ak, al: @commercial_risk_plan.al, aliases: @commercial_risk_plan.aliases, ar: @commercial_risk_plan.ar, az: @commercial_risk_plan.az, blues: @commercial_risk_plan.blues, ca: @commercial_risk_plan.ca, city: @commercial_risk_plan.city, co: @commercial_risk_plan.co, contracted_pbm: @commercial_risk_plan.contracted_pbm, contracted_sp_vendor: @commercial_risk_plan.contracted_sp_vendor, ct: @commercial_risk_plan.ct, dc: @commercial_risk_plan.dc, de: @commercial_risk_plan.de, fax: @commercial_risk_plan.fax, fl: @commercial_risk_plan.fl, foreign: @commercial_risk_plan.foreign, ga: @commercial_risk_plan.ga, hi: @commercial_risk_plan.hi, ia: @commercial_risk_plan.ia, il: @commercial_risk_plan.il, in: @commercial_risk_plan.in, indiana: @commercial_risk_plan.indiana, ks: @commercial_risk_plan.ks, ky: @commercial_risk_plan.ky, la: @commercial_risk_plan.la, ma: @commercial_risk_plan.ma, mco_id: @commercial_risk_plan.mco_id, mco_name: @commercial_risk_plan.mco_name, mco_owner: @commercial_risk_plan.mco_owner, md: @commercial_risk_plan.md, me: @commercial_risk_plan.me, mi: @commercial_risk_plan.mi, mn: @commercial_risk_plan.mn, mo: @commercial_risk_plan.mo, ms: @commercial_risk_plan.ms, mt: @commercial_risk_plan.mt, nc: @commercial_risk_plan.nc, nd: @commercial_risk_plan.nd, ne: @commercial_risk_plan.ne, nh: @commercial_risk_plan.nh, nj: @commercial_risk_plan.nj, nm: @commercial_risk_plan.nm, nv: @commercial_risk_plan.nv, ny: @commercial_risk_plan.ny, oh: @commercial_risk_plan.oh, ok: @commercial_risk_plan.ok, or: @commercial_risk_plan.or, owner_id: @commercial_risk_plan.owner_id, pa: @commercial_risk_plan.pa, pr: @commercial_risk_plan.pr, private_public: @commercial_risk_plan.private_public, profit_status: @commercial_risk_plan.profit_status, provider_sponsored: @commercial_risk_plan.provider_sponsored, ri: @commercial_risk_plan.ri, sc: @commercial_risk_plan.sc, sd: @commercial_risk_plan.sd, service_areas: @commercial_risk_plan.service_areas, state_abbreviation: @commercial_risk_plan.state_abbreviation, telephone_one: @commercial_risk_plan.telephone_one, telephone_two: @commercial_risk_plan.telephone_two, tn: @commercial_risk_plan.tn, tx: @commercial_risk_plan.tx, url: @commercial_risk_plan.url, ut: @commercial_risk_plan.ut, va: @commercial_risk_plan.va, vt: @commercial_risk_plan.vt, wa: @commercial_risk_plan.wa, wi: @commercial_risk_plan.wi, wv: @commercial_risk_plan.wv, wy: @commercial_risk_plan.wy, zip: @commercial_risk_plan.zip }
    assert_redirected_to commercial_risk_plan_path(assigns(:commercial_risk_plan))
  end

  test "should destroy commercial_risk_plan" do
    assert_difference('CommercialRiskPlan.count', -1) do
      delete :destroy, id: @commercial_risk_plan
    end

    assert_redirected_to commercial_risk_plans_path
  end
end
