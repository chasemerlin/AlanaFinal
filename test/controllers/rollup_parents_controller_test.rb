require 'test_helper'

class RollupParentsControllerTest < ActionController::TestCase
  setup do
    @rollup_parent = rollup_parents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rollup_parents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rollup_parent" do
    assert_difference('RollupParent.count') do
      post :create, rollup_parent: { ak: @rollup_parent.ak, al: @rollup_parent.al, ar: @rollup_parent.ar, az: @rollup_parent.az, ca: @rollup_parent.ca, co: @rollup_parent.co, company: @rollup_parent.company, ct: @rollup_parent.ct, dc: @rollup_parent.dc, de: @rollup_parent.de, fl: @rollup_parent.fl, foreign: @rollup_parent.foreign, ga: @rollup_parent.ga, hi: @rollup_parent.hi, ia: @rollup_parent.ia, il: @rollup_parent.il, in: @rollup_parent.in, indiana: @rollup_parent.indiana, ks: @rollup_parent.ks, ky: @rollup_parent.ky, la: @rollup_parent.la, ma: @rollup_parent.ma, mco_id: @rollup_parent.mco_id, md: @rollup_parent.md, me: @rollup_parent.me, mi: @rollup_parent.mi, mn: @rollup_parent.mn, mo: @rollup_parent.mo, ms: @rollup_parent.ms, mt: @rollup_parent.mt, nc: @rollup_parent.nc, nd: @rollup_parent.nd, ne: @rollup_parent.ne, nh: @rollup_parent.nh, nj: @rollup_parent.nj, nm: @rollup_parent.nm, nv: @rollup_parent.nv, ny: @rollup_parent.ny, oh: @rollup_parent.oh, ok: @rollup_parent.ok, or: @rollup_parent.or, owner_id: @rollup_parent.owner_id, pa: @rollup_parent.pa, pr: @rollup_parent.pr, ri: @rollup_parent.ri, sc: @rollup_parent.sc, sd: @rollup_parent.sd, tn: @rollup_parent.tn, tx: @rollup_parent.tx, ut: @rollup_parent.ut, va: @rollup_parent.va, vt: @rollup_parent.vt, wa: @rollup_parent.wa, wi: @rollup_parent.wi, wv: @rollup_parent.wv, wy: @rollup_parent.wy }
    end

    assert_redirected_to rollup_parent_path(assigns(:rollup_parent))
  end

  test "should show rollup_parent" do
    get :show, id: @rollup_parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rollup_parent
    assert_response :success
  end

  test "should update rollup_parent" do
    patch :update, id: @rollup_parent, rollup_parent: { ak: @rollup_parent.ak, al: @rollup_parent.al, ar: @rollup_parent.ar, az: @rollup_parent.az, ca: @rollup_parent.ca, co: @rollup_parent.co, company: @rollup_parent.company, ct: @rollup_parent.ct, dc: @rollup_parent.dc, de: @rollup_parent.de, fl: @rollup_parent.fl, foreign: @rollup_parent.foreign, ga: @rollup_parent.ga, hi: @rollup_parent.hi, ia: @rollup_parent.ia, il: @rollup_parent.il, in: @rollup_parent.in, indiana: @rollup_parent.indiana, ks: @rollup_parent.ks, ky: @rollup_parent.ky, la: @rollup_parent.la, ma: @rollup_parent.ma, mco_id: @rollup_parent.mco_id, md: @rollup_parent.md, me: @rollup_parent.me, mi: @rollup_parent.mi, mn: @rollup_parent.mn, mo: @rollup_parent.mo, ms: @rollup_parent.ms, mt: @rollup_parent.mt, nc: @rollup_parent.nc, nd: @rollup_parent.nd, ne: @rollup_parent.ne, nh: @rollup_parent.nh, nj: @rollup_parent.nj, nm: @rollup_parent.nm, nv: @rollup_parent.nv, ny: @rollup_parent.ny, oh: @rollup_parent.oh, ok: @rollup_parent.ok, or: @rollup_parent.or, owner_id: @rollup_parent.owner_id, pa: @rollup_parent.pa, pr: @rollup_parent.pr, ri: @rollup_parent.ri, sc: @rollup_parent.sc, sd: @rollup_parent.sd, tn: @rollup_parent.tn, tx: @rollup_parent.tx, ut: @rollup_parent.ut, va: @rollup_parent.va, vt: @rollup_parent.vt, wa: @rollup_parent.wa, wi: @rollup_parent.wi, wv: @rollup_parent.wv, wy: @rollup_parent.wy }
    assert_redirected_to rollup_parent_path(assigns(:rollup_parent))
  end

  test "should destroy rollup_parent" do
    assert_difference('RollupParent.count', -1) do
      delete :destroy, id: @rollup_parent
    end

    assert_redirected_to rollup_parents_path
  end
end
