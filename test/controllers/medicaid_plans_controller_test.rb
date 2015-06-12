require 'test_helper'

class MedicaidPlansControllerTest < ActionController::TestCase
  setup do
    @medicaid_plan = medicaid_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicaid_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicaid_plan" do
    assert_difference('MedicaidPlan.count') do
      post :create, medicaid_plan: { address: @medicaid_plan.address, ak: @medicaid_plan.ak, al: @medicaid_plan.al, aliases: @medicaid_plan.aliases, ar: @medicaid_plan.ar, az: @medicaid_plan.az, blues: @medicaid_plan.blues, ca: @medicaid_plan.ca, city: @medicaid_plan.city, co: @medicaid_plan.co, contracted_pbm: @medicaid_plan.contracted_pbm, contracted_sp_vendor: @medicaid_plan.contracted_sp_vendor, ct: @medicaid_plan.ct, dc: @medicaid_plan.dc, de: @medicaid_plan.de, fax: @medicaid_plan.fax, fl: @medicaid_plan.fl, foreign: @medicaid_plan.foreign, ga: @medicaid_plan.ga, hi: @medicaid_plan.hi, ia: @medicaid_plan.ia, il: @medicaid_plan.il, in: @medicaid_plan.in, indiana: @medicaid_plan.indiana, ks: @medicaid_plan.ks, ky: @medicaid_plan.ky, la: @medicaid_plan.la, ma: @medicaid_plan.ma, mco_id: @medicaid_plan.mco_id, mco_name: @medicaid_plan.mco_name, mco_owner: @medicaid_plan.mco_owner, md: @medicaid_plan.md, me: @medicaid_plan.me, mi: @medicaid_plan.mi, mn: @medicaid_plan.mn, mo: @medicaid_plan.mo, ms: @medicaid_plan.ms, mt: @medicaid_plan.mt, nc: @medicaid_plan.nc, nd: @medicaid_plan.nd, ne: @medicaid_plan.ne, nh: @medicaid_plan.nh, nj: @medicaid_plan.nj, nm: @medicaid_plan.nm, nv: @medicaid_plan.nv, ny: @medicaid_plan.ny, oh: @medicaid_plan.oh, ok: @medicaid_plan.ok, or: @medicaid_plan.or, owner_id: @medicaid_plan.owner_id, pa: @medicaid_plan.pa, pr: @medicaid_plan.pr, private_public: @medicaid_plan.private_public, profit_status: @medicaid_plan.profit_status, provider_sponsored: @medicaid_plan.provider_sponsored, ri: @medicaid_plan.ri, sc: @medicaid_plan.sc, sd: @medicaid_plan.sd, service_areas: @medicaid_plan.service_areas, state_abbreviation: @medicaid_plan.state_abbreviation, telephone_one: @medicaid_plan.telephone_one, telephone_two: @medicaid_plan.telephone_two, tn: @medicaid_plan.tn, tx: @medicaid_plan.tx, url: @medicaid_plan.url, ut: @medicaid_plan.ut, va: @medicaid_plan.va, vt: @medicaid_plan.vt, wa: @medicaid_plan.wa, wi: @medicaid_plan.wi, wv: @medicaid_plan.wv, wy: @medicaid_plan.wy, zip: @medicaid_plan.zip }
    end

    assert_redirected_to medicaid_plan_path(assigns(:medicaid_plan))
  end

  test "should show medicaid_plan" do
    get :show, id: @medicaid_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicaid_plan
    assert_response :success
  end

  test "should update medicaid_plan" do
    patch :update, id: @medicaid_plan, medicaid_plan: { address: @medicaid_plan.address, ak: @medicaid_plan.ak, al: @medicaid_plan.al, aliases: @medicaid_plan.aliases, ar: @medicaid_plan.ar, az: @medicaid_plan.az, blues: @medicaid_plan.blues, ca: @medicaid_plan.ca, city: @medicaid_plan.city, co: @medicaid_plan.co, contracted_pbm: @medicaid_plan.contracted_pbm, contracted_sp_vendor: @medicaid_plan.contracted_sp_vendor, ct: @medicaid_plan.ct, dc: @medicaid_plan.dc, de: @medicaid_plan.de, fax: @medicaid_plan.fax, fl: @medicaid_plan.fl, foreign: @medicaid_plan.foreign, ga: @medicaid_plan.ga, hi: @medicaid_plan.hi, ia: @medicaid_plan.ia, il: @medicaid_plan.il, in: @medicaid_plan.in, indiana: @medicaid_plan.indiana, ks: @medicaid_plan.ks, ky: @medicaid_plan.ky, la: @medicaid_plan.la, ma: @medicaid_plan.ma, mco_id: @medicaid_plan.mco_id, mco_name: @medicaid_plan.mco_name, mco_owner: @medicaid_plan.mco_owner, md: @medicaid_plan.md, me: @medicaid_plan.me, mi: @medicaid_plan.mi, mn: @medicaid_plan.mn, mo: @medicaid_plan.mo, ms: @medicaid_plan.ms, mt: @medicaid_plan.mt, nc: @medicaid_plan.nc, nd: @medicaid_plan.nd, ne: @medicaid_plan.ne, nh: @medicaid_plan.nh, nj: @medicaid_plan.nj, nm: @medicaid_plan.nm, nv: @medicaid_plan.nv, ny: @medicaid_plan.ny, oh: @medicaid_plan.oh, ok: @medicaid_plan.ok, or: @medicaid_plan.or, owner_id: @medicaid_plan.owner_id, pa: @medicaid_plan.pa, pr: @medicaid_plan.pr, private_public: @medicaid_plan.private_public, profit_status: @medicaid_plan.profit_status, provider_sponsored: @medicaid_plan.provider_sponsored, ri: @medicaid_plan.ri, sc: @medicaid_plan.sc, sd: @medicaid_plan.sd, service_areas: @medicaid_plan.service_areas, state_abbreviation: @medicaid_plan.state_abbreviation, telephone_one: @medicaid_plan.telephone_one, telephone_two: @medicaid_plan.telephone_two, tn: @medicaid_plan.tn, tx: @medicaid_plan.tx, url: @medicaid_plan.url, ut: @medicaid_plan.ut, va: @medicaid_plan.va, vt: @medicaid_plan.vt, wa: @medicaid_plan.wa, wi: @medicaid_plan.wi, wv: @medicaid_plan.wv, wy: @medicaid_plan.wy, zip: @medicaid_plan.zip }
    assert_redirected_to medicaid_plan_path(assigns(:medicaid_plan))
  end

  test "should destroy medicaid_plan" do
    assert_difference('MedicaidPlan.count', -1) do
      delete :destroy, id: @medicaid_plan
    end

    assert_redirected_to medicaid_plans_path
  end
end
