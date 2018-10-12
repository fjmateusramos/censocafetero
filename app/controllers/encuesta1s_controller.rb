class Encuesta1sController < ApplicationController
  before_action :set_encuesta1, only: [:show, :edit, :update, :destroy]

  # GET /encuesta1s
  # GET /encuesta1s.json
  def index
    @encuesta1s = Encuesta1.all
  end

  # GET /encuesta1s/1
  # GET /encuesta1s/1.json
  def show
  end

  # GET /encuesta1s/new
  def new
    @encuesta1 = Encuesta1.new
  end

  # GET /encuesta1s/1/edit
  def edit
  end

  # POST /encuesta1s
  # POST /encuesta1s.json
  def create
    @encuesta1 = Encuesta1.new(encuesta1_params)

    respond_to do |format|
      if @encuesta1.save
        format.html { redirect_to @encuesta1, notice: 'Encuesta1 was successfully created.' }
        format.json { render :show, status: :created, location: @encuesta1 }
      else
        format.html { render :new }
        format.json { render json: @encuesta1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuesta1s/1
  # PATCH/PUT /encuesta1s/1.json
  def update
    respond_to do |format|
      if @encuesta1.update(encuesta1_params)
        format.html { redirect_to @encuesta1, notice: 'Encuesta1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @encuesta1 }
      else
        format.html { render :edit }
        format.json { render json: @encuesta1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuesta1s/1
  # DELETE /encuesta1s/1.json
  def destroy
    @encuesta1.destroy
    respond_to do |format|
      format.html { redirect_to encuesta1s_url, notice: 'Encuesta1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuesta1
      @encuesta1 = Encuesta1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuesta1_params
      params.require(:encuesta1).permit(:encuesta, :p12_a_1_a, :p12_a_1_b, :p12_a_1_c, :p12_a_1_d, :p12_a_2_a, :p12_a_2_b, :p12_a_2_c, :p12_a_2_d, :p12_a_3_a, :p12_a_3_b, :p12_a_3_c, :p12_a_3_d, :p12_a_4_a, :p12_a_4_b, :p12_a_4_c, :p12_a_4_d, :p12_a_5_a, :p12_a_5_b, :p12_a_5_c, :p12_a_5_d, :p12_a_6_a, :p12_a_6_b, :p12_a_6_c, :p12_a_6_d, :p12_a_7_a, :p12_a_7_b, :p12_a_7_c, :p12_a_7_d, :p12_a_8_a, :p12_a_8_b, :p12_a_8_c, :p12_a_8_d, :p12_a_9_a, :p12_a_9_b, :p12_a_9_c, :p12_a_9_d, :p12_a_10_a, :p12_a_10_b, :p12_a_10_c, :p12_a_10_d, :p12_a_11_a, :p12_a_11_b, :p12_a_11_c, :p12_a_11_d, :p12_a_12_a, :p12_a_12_b, :p12_a_12_c, :p12_a_12_d, :p12_a_13_a, :p12_a_13_b, :p12_a_13_c, :p12_a_13_d, :p12_a_14_a, :p12_a_14_b, :p12_a_14_c, :p12_a_14_d, :p12_a_15_a, :p12_a_15_b, :p12_a_15_c, :p12_a_15_d, :p12_a_16_a, :p12_a_16_b, :p12_a_16_c, :p12_a_16_d, :p12_a_17_a, :p12_a_17_b, :p12_a_17_c, :p12_a_17_d, :p12_a_18_a, :p12_a_18_b, :p12_a_18_c, :p12_a_18_d, :p12_a_19_a, :p12_a_19_b, :p12_a_19_c, :p12_a_19_d, :p12_a_20_a, :p12_a_20_b, :p12_a_20_c, :p12_a_20_d, :p12_a_21_a, :p12_a_21_b, :p12_a_21_c, :p12_a_21_d, :p12_a_22_a, :p12_a_22_b, :p12_a_22_c, :p12_a_22_d, :p12_a_23_a, :p12_a_23_b, :p12_a_23_c, :p12_a_23_d, :p12_a_24_a, :p12_a_24_b, :p12_a_24_c, :p12_a_24_d, :p12_a_25_a, :p12_a_25_b, :p12_a_25_c, :p12_a_25_d, :p12_a_26_a, :p12_a_26_b, :p12_a_26_c, :p12_a_26_d, :p12_a_27_a, :p12_a_27_b, :p12_a_27_c, :p12_a_27_d, :p12_a_28_a, :p12_a_28_b, :p12_a_28_c, :p12_a_28_d, :p12_a_29_a, :p12_a_29_b, :p12_a_29_c, :p12_a_29_d, :p12_a_30_a, :p12_a_30_b, :p12_a_30_c, :p12_a_30_d, :p12_a_31_a, :p12_a_31_b, :p12_a_31_c, :p12_a_31_d, :p12_a_32_a, :p12_a_32_b, :p12_a_32_c, :p12_a_32_d, :p12_a_33_a, :p12_a_33_b, :p12_a_33_c, :p12_a_33_d, :p12_a_34_a, :p12_a_34_b, :p12_a_34_c, :p12_a_34_d, :p12_a_35_a, :p12_a_35_b, :p12_a_35_c, :p12_a_35_d, :p12_a_36_a, :p12_a_36_b, :p12_a_36_c, :p12_a_36_d, :p12_a_37_a, :p12_a_37_b, :p12_a_37_c, :p12_a_37_d, :p12_a_38_a, :p12_a_38_b, :p12_a_38_c, :p12_a_38_d, :p12_a_39_a, :p12_a_39_b, :p12_a_39_c, :p12_a_39_d, :p12_a_40_a, :p12_a_40_b, :p12_a_40_c, :p12_a_40_d, :p12_b_1_a, :p12_b_1_b, :p12_b_1_c, :p12_b_1_d, :p12_b_2_a, :p12_b_2_b, :p12_b_2_c, :p12_b_2_d, :p12_b_3_a, :p12_b_3_b, :p12_b_3_c, :p12_b_3_d, :p12_b_4_a, :p12_b_4_b, :p12_b_4_c, :p12_b_4_d, :p12_b_5_a, :p12_b_5_b, :p12_b_5_c, :p12_b_5_d, :p12_b_6_a, :p12_b_6_b, :p12_b_6_c, :p12_b_6_d, :p12_b_7_a, :p12_b_7_b, :p12_b_7_c, :p12_b_7_d, :p12_b_8_a, :p12_b_8_b, :p12_b_8_c, :p12_b_8_d, :p12_b_9_a, :p12_b_9_b, :p12_b_9_c, :p12_b_9_d, :p12_b_10_a, :p12_b_10_b, :p12_b_10_c, :p12_b_10_d, :p12_b_11_a, :p12_b_11_b, :p12_b_11_c, :p12_b_11_d, :p13_1a, :p13_1b, :p13_2, :p13_3a, :p13_3b, :p13_4_1_a, :p13_4_1_b, :p13_4_1_c, :p13_4_1_d, :p13_4_1_e, :p13_4_2_a, :p13_4_2_b, :p13_4_2_c, :p13_4_2_d, :p13_4_2_e, :p13_4_3_a, :p13_4_3_b, :p13_4_3_c, :p13_4_3_d, :p13_4_3_e, :p13_4_4_a, :p13_4_4_b, :p13_4_4_c, :p13_4_4_d, :p13_4_4_e, :p13_4_5_a, :p13_4_5_b, :p13_4_5_c, :p13_4_5_d, :p13_4_5_e, :p13_4_6_a, :p13_4_6_b, :p13_4_6_c, :p13_4_6_d, :p13_4_6_e, :p13_4_7_a, :p13_4_7_b, :p13_4_7_c, :p13_4_7_d, :p13_4_7_e, :p13_5a, :p13_5b, :p13_6a, :p13_6b, :p13_7a, :p13_7b, :p13_8a, :p13_8b, :p13_9, :p13_10, :p13_11a, :p13_11b, :p13_12, :p13_13a, :p13_13b, :p13_14, :p13_15, :p13_16, :p13_17, :p13_18, :p14_1a, :p14_1b, :p14_1c, :p14_2, :p14_3, :p14_4, :p14_5a, :p14_5b, :p14_6, :p14_7, :p14_15a, :p14_8a, :p14_8b, :p14_9a, :p14_10, :p14_11, :p14_12, :p14_13, :p14_14, :p14_15, :p14_16, :p14_17, :p14_18, :p14_19, :p14_20, :p14_21, :p14_22, :p14_23, :p14_24, :p14_25, :p14_26, :p14_27, :p14_28, :p14_29, :p14_30, :p14_31, :p14_32, :p14_33, :p14_34, :p14_35, :p14_36, :p14_37, :p14_38, :p14_39, :p14_42a, :p14_40, :p14_43a, :p14_41, :p14_42, :p14_43, :p14_44, :p14_45, :p14_46, :p14_51a, :p14_51b, :p14_51c, :p14_51d, :p14_51e, :p14_51f, :p14_52a, :p14_52b, :p14_52c, :p14_52d, :p14_49, :p14_50, :p14_59a, :p14_75, :p14_53, :p14_54, :p14_55, :p14_76, :p14_56, :p14_57, :p14_58, :p14_59, :p14_60, :p14_61, :p14_62, :p14_63, :p14_64, :p14_65, :p14_66, :p14_67, :p14_68, :p14_69, :p14_70, :p14_71, :p14_72, :p14_73, :p14_74, :p14_78a, :p14_78b, :p14_78c, :p14_78d, :p14_78e, :p14_78f, :p14_78g, :p15_1a_1, :p15_1a_2, :p15_1a_3, :p15_1a_4a, :p15_1a_4b, :p15_1a_4c, :p15_1b_1, :p15_1b_2, :p15_1b_3, :p15_1b_4a, :p15_1b_4b, :p15_1b_4c, :p15_1c_1, :p15_1c_2, :p15_1c_3, :p15_1c_4a, :p15_1c_4b, :p15_1c_4c, :p15_1d_1, :p15_1d_2, :p15_1d_3, :p15_1d_4a, :p15_1d_4b, :p15_1d_4c, :p15_1e_1, :p15_1e_2, :p15_1e_3, :p15_1e_4a, :p15_1e_4b, :p15_1e_4c, :p15_1f_1, :p15_1f_2, :p15_1f_3, :p15_1f_4a, :p15_1f_4b, :p15_1f_4c, :p15_1g_1, :p15_1g_2, :p15_1g_3, :p15_1g_4a, :p15_1g_4b, :p15_1g_4c, :p15_1h_1, :p15_1h_2, :p15_1h_3, :p15_1h_4a, :p15_1h_4b, :p15_1h_4c, :p15_1i_1, :p15_1i_2, :p15_1i_3, :p15_1i_4a, :p15_1i_4b, :p15_1i_4c, :p15_1j_1, :p15_1j_2, :p15_1j_3, :p15_1j_4a, :p15_1j_4b, :p15_1j_4c, :p15_1k_1, :p15_1k_2, :p15_1k_3, :p15_1k_4a, :p15_1k_4b, :p15_1k_4c, :p15_1l_1, :p15_1l_2, :p15_1l_3, :p15_1l_4a, :p15_1l_4b, :p15_1l_4c, :p15_1m_1, :p15_1m_2, :p15_1m_3, :p15_1m_4a, :p15_1m_4b, :p15_1m_4c, :p15_1n_1, :p15_1n_2, :p15_1n_3, :p15_1n_4a, :p15_1n_4b, :p15_1n_4c, :p15_1o_1, :p15_1o_2, :p15_1o_3, :p15_1o_4a, :p15_1o_4b, :p15_1o_4c, :p15_1p_1, :p15_1p_2, :p15_1p_3, :p15_1p_4a, :p15_1p_4b, :p15_1p_4c, :p15_1q_1, :p15_1q_2, :p15_1q_3, :p15_1q_4a, :p15_1q_4b, :p15_1q_4c, :p15_1r_1, :p15_1r_2, :p15_1r_3, :p15_1r_4a, :p15_1r_4b, :p15_1r_4c, :p15_1s_1, :p15_1s_2, :p15_1s_3, :p15_1s_4a, :p15_1s_4b, :p15_1s_4c, :p15_1t_1, :p15_1t_2, :p15_1t_3, :p15_1t_4a, :p15_1t_4b, :p15_1t_4c, :p15_1u_1, :p15_1u_2, :p15_1u_3, :p15_1u_4a, :p15_1u_4b, :p15_1u_4c, :p16_1a_1, :p16_1a_2, :p16_1b_1, :p16_1b_2, :p16_1c_1, :p16_1c_2, :p16_1d_1, :p16_1d_2, :p16_1e_1, :p16_1e_2, :p16_1f_1, :p16_1f_2, :p16_1g_1, :p16_1g_2, :p16_2_1_b, :p16_2_1_c, :p16_2_1_d, :p16_2_2_b, :p16_2_2_c, :p16_2_2_d, :p16_2_3_b, :p16_2_3_c, :p16_2_3_d, :p16_2_4_b, :p16_2_4_c, :p16_2_4_d, :p16_2_5_b, :p16_2_5_c, :p16_2_5_d, :p16_2_6_b, :p16_2_6_c, :p16_2_6_d, :p16_2_7_b, :p16_2_7_c, :p16_2_7_d, :p16_2_8_b, :p16_2_8_c, :p16_2_8_d, :p16_2_9_b, :p16_2_9_c, :p16_2_9_d, :p16_2_10_b, :p16_2_10_c, :p16_2_10_d, :p16_2_11_b, :p16_2_11_c, :p16_2_11_d, :p16_2_12_b, :p16_2_12_c, :p16_2_12_d, :p16_2_13_b, :p16_2_13_c, :p16_2_13_d, :p16_3_1_a, :p16_3_1_b, :p16_3_1_c, :p16_3_2_a, :p16_3_2_b, :p16_3_2_c, :p16_3_3_a, :p16_3_3_b, :p16_3_3_c, :p16_3_4_a, :p16_3_4_b, :p16_3_4_c, :p16_3_5_a, :p16_3_5_b, :p16_3_5_c, :p16_3_6_a, :p16_3_6_b, :p16_3_6_c, :p16_4_1_a, :p16_4_1_b, :p16_4_1_c, :p16_4_2_a, :p16_4_2_b, :p16_4_2_c, :p16_4_3_a, :p16_4_3_b, :p16_4_3_c, :p16_4_4_a, :p16_4_4_b, :p16_4_4_c, :p16_4_5_a, :p16_4_5_b, :p16_4_5_c, :p16_4_6_a, :p16_4_6_b, :p16_4_6_c, :p16_4_7_a, :p16_4_7_b, :p16_4_7_c, :p16_4_8_a, :p16_4_8_b, :p16_4_8_c, :p16_4_9_a, :p16_4_9_b, :p16_4_9_c, :p16_4_10_a, :p16_4_10_b, :p16_4_10_c, :p16_4_11_a, :p16_4_11_b, :p16_4_11_c, :p17_1_a_1, :p17_1_b_2, :p17_1_c_3, :p17_1_d_4, :p17_1_e_5, :p17_1_f_6, :p17_1_g_7, :p17_1_h_8, :p17_1_i_9, :p17_2a, :p17_2b, :p17_2c, :p17_3_a, :p17_3_b, :p17_3_c, :p17_3_d, :p17_3_do, :p14_9b, :p14_15b, :p14_44a, :p14_47, :p14_48, :p14_77a, :p14_77b, :p11_ta_1, :p11_ta_a_2, :p11_ta_a_3, :p11_ta_a_4, :p11_ta_a_5, :p11_ta_a_6, :p11_ta_a_7, :p11_ta_a_8, :p11_ta_a_9, :p11_ta_a_10, :p11_ta_b_2, :p11_ta_b_3, :p11_ta_b_4, :p11_ta_b_5, :p11_ta_b_6, :p11_ta_b_7, :p11_ta_b_8, :p11_ta_b_9, :p11_ta_b_10, :p11_ta_c_2, :p11_ta_c_3, :p11_ta_c_4, :p11_ta_c_5, :p11_ta_c_6, :p11_ta_c_7, :p11_ta_c_8, :p11_ta_c_9, :p11_ta_c_10, :p11_ta_d_2, :p11_ta_d_3, :p11_ta_d_4, :p11_ta_d_5, :p11_ta_d_6, :p11_ta_d_7, :p11_ta_d_8, :p11_ta_d_9, :p11_ta_d_10, :p11_ta_e_2, :p11_ta_e_3, :p11_ta_e_4, :p11_ta_e_5, :p11_ta_e_6, :p11_ta_e_7, :p11_ta_e_8, :p11_ta_e_9, :p11_ta_e_10, :p11_ta_f_2, :p11_ta_f_3, :p11_ta_f_4, :p11_ta_f_5, :p11_ta_f_6, :p11_ta_f_7, :p11_ta_f_8, :p11_ta_f_9, :p11_ta_f_10, :p11_tb_1, :p11_tb_2, :p11_tb_3_a, :p11_tb_3_b, :p11_tb_3_c, :p11_tb_3_d, :p11_tb_4_a, :p11_tb_4_b, :p11_tb_4_c, :p11_tb_4_d, :p11_tb_4_e, :p11_tb_5a_1, :p11_tb_5a_2, :p11_tb_5a_3, :p11_tb_5b_1, :p11_tb_5b_2, :p11_tb_6a, :p11_tb_6b, :p11_tb_7, :p11_tc_1, :p11_tc_2, :p11_tc_3_a, :p11_tc_3_b, :p11_tc_3_c, :p11_tc_3_d, :p11_tc_4_a, :p11_tc_4_b, :p11_tc_5_a, :p11_tc_5_b, :p11_tc_6, :p11_td_1, :p11_td_2, :p11_td_3_a, :p11_td_3_b, :p11_td_4_a, :p11_td_4_b, :p11_td_5, :p11_td_6, :p11_te_1, :p11_te_2, :p11_te_2a_1, :p11_te_2a_2, :p11_te_2b_1, :p11_te_2b_2, :p11_te_2c_1, :p11_te_2c_2, :p11_te_2d_1, :p11_te_2d_2, :p11_te_2_e, :p11_te_3, :p11_te_3a_1, :p11_te_3a_2, :p11_te_3b_1, :p11_te_3b_2, :p11_te_3c_1, :p11_te_3c_2, :p11_te_3d_1, :p11_te_3d_2, :p11_te_2_f, :p11_te_4, :p11_te_4a_1, :p11_te_4a_2, :p11_te_4a_3, :p11_te_4b_1, :p11_te_4b_2, :p11_te_4b_3, :p11_te_4c_1, :p11_te_4c_2, :p11_te_4c_3, :p11_te_4d_1, :p11_te_4d_2, :p11_te_4d_3, :p11_te_4_e, :p11_td_3_c, :p12_b_12_a, :p12_b_12_b, :p12_b_12_c, :p12_b_12_d, :p16_3_7_a, :p16_3_7_c)
    end
end
