require 'test_helper'

class MedicarePlansControllerTest < ActionController::TestCase
  setup do
    @medicare_plan = medicare_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicare_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicare_plan" do
    assert_difference('MedicarePlan.count') do
      post :create, medicare_plan: { address: @medicare_plan.address, ak: @medicare_plan.ak, al: @medicare_plan.al, aliases: @medicare_plan.aliases, ar: @medicare_plan.ar, az: @medicare_plan.az, blues: @medicare_plan.blues, ca: @medicare_plan.ca, city: @medicare_plan.city, co: @medicare_plan.co, contracted_pbm: @medicare_plan.contracted_pbm, contracted_sp_vendor: @medicare_plan.contracted_sp_vendor, ct: @medicare_plan.ct, dc: @medicare_plan.dc, de: @medicare_plan.de, fax: @medicare_plan.fax, fl: @medicare_plan.fl, foreign: @medicare_plan.foreign, ga: @medicare_plan.ga, hi: @medicare_plan.hi, ia: @medicare_plan.ia, il: @medicare_plan.il, in: @medicare_plan.in, indiana: @medicare_plan.indiana, ks: @medicare_plan.ks, ky: @medicare_plan.ky, la: @medicare_plan.la, ma: @medicare_plan.ma, mco_id: @medicare_plan.mco_id, mco_name: @medicare_plan.mco_name, mco_owner: @medicare_plan.mco_owner, md: @medicare_plan.md, me: @medicare_plan.me, mi: @medicare_plan.mi, mn: @medicare_plan.mn, mo: @medicare_plan.mo, ms: @medicare_plan.ms, mt: @medicare_plan.mt, nc: @medicare_plan.nc, nd: @medicare_plan.nd, ne: @medicare_plan.ne, nh: @medicare_plan.nh, nj: @medicare_plan.nj, nm: @medicare_plan.nm, nv: @medicare_plan.nv, ny: @medicare_plan.ny, oh: @medicare_plan.oh, ok: @medicare_plan.ok, or: @medicare_plan.or, owner_id: @medicare_plan.owner_id, pa: @medicare_plan.pa, pr: @medicare_plan.pr, private_public: @medicare_plan.private_public, profit_status: @medicare_plan.profit_status, provider_sponsored: @medicare_plan.provider_sponsored, ri: @medicare_plan.ri, sc: @medicare_plan.sc, sd: @medicare_plan.sd, service_areas: @medicare_plan.service_areas, state_abbreviation: @medicare_plan.state_abbreviation, telephone_one: @medicare_plan.telephone_one, telephone_two: @medicare_plan.telephone_two, tn: @medicare_plan.tn, tx: @medicare_plan.tx, url: @medicare_plan.url, ut: @medicare_plan.ut, va: @medicare_plan.va, vt: @medicare_plan.vt, wa: @medicare_plan.wa, wi: @medicare_plan.wi, wv: @medicare_plan.wv, wy: @medicare_plan.wy, zip: @medicare_plan.zip }
    end

    assert_redirected_to medicare_plan_path(assigns(:medicare_plan))
  end

  test "should show medicare_plan" do
    get :show, id: @medicare_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicare_plan
    assert_response :success
  end

  test "should update medicare_plan" do
    patch :update, id: @medicare_plan, medicare_plan: { address: @medicare_plan.address, ak: @medicare_plan.ak, al: @medicare_plan.al, aliases: @medicare_plan.aliases, ar: @medicare_plan.ar, az: @medicare_plan.az, blues: @medicare_plan.blues, ca: @medicare_plan.ca, city: @medicare_plan.city, co: @medicare_plan.co, contracted_pbm: @medicare_plan.contracted_pbm, contracted_sp_vendor: @medicare_plan.contracted_sp_vendor, ct: @medicare_plan.ct, dc: @medicare_plan.dc, de: @medicare_plan.de, fax: @medicare_plan.fax, fl: @medicare_plan.fl, foreign: @medicare_plan.foreign, ga: @medicare_plan.ga, hi: @medicare_plan.hi, ia: @medicare_plan.ia, il: @medicare_plan.il, in: @medicare_plan.in, indiana: @medicare_plan.indiana, ks: @medicare_plan.ks, ky: @medicare_plan.ky, la: @medicare_plan.la, ma: @medicare_plan.ma, mco_id: @medicare_plan.mco_id, mco_name: @medicare_plan.mco_name, mco_owner: @medicare_plan.mco_owner, md: @medicare_plan.md, me: @medicare_plan.me, mi: @medicare_plan.mi, mn: @medicare_plan.mn, mo: @medicare_plan.mo, ms: @medicare_plan.ms, mt: @medicare_plan.mt, nc: @medicare_plan.nc, nd: @medicare_plan.nd, ne: @medicare_plan.ne, nh: @medicare_plan.nh, nj: @medicare_plan.nj, nm: @medicare_plan.nm, nv: @medicare_plan.nv, ny: @medicare_plan.ny, oh: @medicare_plan.oh, ok: @medicare_plan.ok, or: @medicare_plan.or, owner_id: @medicare_plan.owner_id, pa: @medicare_plan.pa, pr: @medicare_plan.pr, private_public: @medicare_plan.private_public, profit_status: @medicare_plan.profit_status, provider_sponsored: @medicare_plan.provider_sponsored, ri: @medicare_plan.ri, sc: @medicare_plan.sc, sd: @medicare_plan.sd, service_areas: @medicare_plan.service_areas, state_abbreviation: @medicare_plan.state_abbreviation, telephone_one: @medicare_plan.telephone_one, telephone_two: @medicare_plan.telephone_two, tn: @medicare_plan.tn, tx: @medicare_plan.tx, url: @medicare_plan.url, ut: @medicare_plan.ut, va: @medicare_plan.va, vt: @medicare_plan.vt, wa: @medicare_plan.wa, wi: @medicare_plan.wi, wv: @medicare_plan.wv, wy: @medicare_plan.wy, zip: @medicare_plan.zip }
    assert_redirected_to medicare_plan_path(assigns(:medicare_plan))
  end

  test "should destroy medicare_plan" do
    assert_difference('MedicarePlan.count', -1) do
      delete :destroy, id: @medicare_plan
    end

    assert_redirected_to medicare_plans_path
  end
end
