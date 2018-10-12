class EncuestaController < ApplicationController
  before_action :set_encuestum, only: [:show, :edit, :update, :destroy]

  # GET /encuesta
  # GET /encuesta.json
  def index
    @encuesta = Encuestum.all
  end

  # GET /encuesta/1
  # GET /encuesta/1.json
  def show
  end

  # GET /encuesta/new
  def new
    @encuestum = Encuestum.new
  end

  # GET /encuesta/1/edit
  def edit
  end

  # POST /encuesta
  # POST /encuesta.json
  def create
    @encuestum = Encuestum.new(encuestum_params)

    respond_to do |format|
      if @encuestum.save
        format.html { redirect_to @encuestum, notice: 'Encuestum was successfully created.' }
        format.json { render :show, status: :created, location: @encuestum }
      else
        format.html { render :new }
        format.json { render json: @encuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuesta/1
  # PATCH/PUT /encuesta/1.json
  def update
    respond_to do |format|
      if @encuestum.update(encuestum_params)
        format.html { redirect_to @encuestum, notice: 'Encuestum was successfully updated.' }
        format.json { render :show, status: :ok, location: @encuestum }
      else
        format.html { render :edit }
        format.json { render json: @encuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuesta/1
  # DELETE /encuesta/1.json
  def destroy
    @encuestum.destroy
    respond_to do |format|
      format.html { redirect_to encuesta_url, notice: 'Encuestum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuestum
      @encuestum = Encuestum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuestum_params
      params.require(:encuestum).permit(:hora, :fecha, :latitud, :longitud, :p1_1, :p1_2, :p1_3, :p1_4, :p1_5, :p1_6, :p1_7, :p1_8, :p1_9a, :p1_9b, :p1_10, :p1_11, :p1_11_otra, :p1_12a, :p1_12b1_1, :p1_12b1_2, :p1_12b1_3, :p1_12b1_4, :p1_12b1_5, :p1_12b1_6, :p1_12b1_7, :p1_12b2_1, :p1_12b2_2, :p1_12b2_3, :p1_12b2_4, :p1_12b2_5, :p1_12b2_6, :p1_12b2_7, :p1_12b3_1, :p1_12b3_2, :p1_12b3_3, :p1_12b3_4, :p1_12b3_5, :p1_12b3_6, :p1_12b3_7, :p2_13, :p2_14, :p2_15, :p2_16_1a, :p2_16_1b, :p2_16_2a, :p2_16_2b, :p2_16_3a, :p2_16_3b, :p2_16_4a, :p2_16_4b, :p2_16_5a, :p2_16_5b, :p2_16_5c, :p2_17, :p2_18, :p2_19, :p2_20, :p2_21, :p2_22, :p2_23, :p2_24, :p3_27_1, :p3_27_2, :p3_27_3, :p3_27_4, :p3_27_5, :p3_27_6, :p3_27_7, :p3_27_8, :p3_28_1, :p3_28_2, :p3_28_3, :p3_28_4, :p3_28_5, :p3_28_6, :p3_28_7, :p3_28_8, :p3_29_1, :p3_29_2, :p3_29_3, :p3_29_4, :p3_29_5, :p3_29_6, :p3_29_7, :p3_29_8, :p3_30_1, :p3_30_2, :p3_30_3, :p3_30_4, :p3_30_5, :p3_30_6, :p3_30_7, :p3_30_8, :p3_31_1, :p3_31_2, :p3_31_3, :p3_31_4, :p3_31_5, :p3_31_6, :p3_31_7, :p3_31_8, :p3_32_1, :p3_32_2, :p3_32_3, :p3_32_4, :p3_32_5, :p3_32_6, :p3_32_7, :p3_32_8, :p4_33_1, :p4_33_2, :p4_33_3, :p4_33_4, :p4_33_5, :p4_33_6, :p4_33_7, :p4_33_8, :p4_34_1, :p4_34_2, :p4_34_3, :p4_34_4, :p4_34_5, :p4_34_6, :p4_34_7, :p4_34_8, :p4_35_1, :p4_35_2, :p4_35_3, :p4_35_4, :p4_35_5, :p4_35_6, :p4_35_7, :p4_35_8, :p4_36_1, :p4_36_2, :p4_36_3, :p4_36_4, :p4_36_5, :p4_36_6, :p4_36_7, :p4_36_8, :p4_37_1, :p4_37_2, :p4_37_3, :p4_37_4, :p4_37_5, :p4_37_6, :p4_37_7, :p4_37_8, :p4_39_1, :p4_39_2, :p4_39_3, :p4_39_4, :p4_39_5, :p4_39_6, :p4_39_7, :p4_39_8, :p4_40_1, :p4_40_2, :p4_40_3, :p4_40_4, :p4_40_5, :p4_40_6, :p4_40_7, :p4_40_8, :p4_41_1, :p4_41_2, :p4_41_3, :p4_41_4, :p4_41_5, :p4_41_6, :p4_41_7, :p4_41_8, :p4_42_a_1, :p4_42_a_2, :p4_42_a_3, :p4_42_a_4, :p4_42_a_5, :p4_42_a_6, :p4_42_a_7, :p4_42_a_8, :p4_42_b_1, :p4_42_b_2, :p4_42_b_3, :p4_42_b_4, :p4_42_b_5, :p4_42_b_6, :p4_42_b_7, :p4_42_b_8, :p4_42a_1, :p4_42a_2, :p4_42a_3, :p4_42a_4, :p4_42a_5, :p4_42a_6, :p4_42a_7, :p4_42a_8, :p4_42ao_1, :p4_42ao_2, :p4_42ao_3, :p4_42ao_4, :p4_42ao_5, :p4_42ao_6, :p4_42ao_7, :p4_42ao_8, :p5_43_1m_1, :p5_43_1m_2, :p5_43_1m_3, :p5_43_1m_4, :p5_43_1m_5, :p5_43_1m_6, :p5_43_1m_7, :p5_43_1m_8, :p5_43_2m_1, :p5_43_2m_2, :p5_43_2m_3, :p5_43_2m_4, :p5_43_2m_5, :p5_43_2m_6, :p5_43_2m_7, :p5_43_2m_8, :p4_42bb_8, :p5_apl, :libre_3, :libre_4, :libre_5, :libre_6, :libre_7, :p5_44_1, :p5_44_2, :p5_44_3, :p5_44_4, :p5_44_5, :p5_44_6, :p5_44_7, :p5_44_8, :p5_44_b_1, :p5_44_b_2, :p5_44_b_3, :p5_44_b_4, :p5_44_b_5, :p5_44_b_6, :p5_44_b_7, :p5_44_b_8, :p5_45_1, :p5_45_2, :p5_45_3, :p5_45_4, :p5_45_5, :p5_45_6, :p5_45_7, :p5_45_8, :p5_46_3b_1, :p5_46_3b_2, :p5_46_3b_3, :p5_46_3b_4, :p5_46_3b_5, :p5_46_3b_6, :p5_46_3b_7, :p5_46_3b_8, :p5_46_4a_1, :p5_46_4a_2, :p5_46_4a_3, :p5_46_4a_4, :p5_46_4a_5, :p5_46_4a_6, :p5_46_4a_7, :p5_46_4a_8, :p5_47_1, :p5_47_2, :p5_47_3, :p5_47_4, :p5_47_5, :p5_47_6, :p5_47_7, :p5_47_8, :p6_48_1, :p6_48_2, :p6_48_3, :p6_48_4, :p6_48_5, :p6_48_6, :p6_48_7, :p6_48_8, :p6_49_1, :p6_49_2, :p6_49_3, :p6_49_4, :p6_49_5, :p6_49_6, :p6_49_7, :p6_49_8, :p6_50_1, :p6_50_2, :p6_50_3, :p6_50_4, :p6_50_5, :p6_50_6, :p6_50_7, :p6_50_8, :p6_50_b_1, :p6_50_b_2, :p6_50_b_3, :p6_50_b_4, :p6_50_b_5, :p6_50_b_6, :p6_50_b_7, :p6_50_b_8, :p6_51_1_a, :p6_51_1_b, :p6_51_2_a, :p6_51_2_b, :p6_51_3_a, :p6_51_3_b, :p6_51_4_a, :p6_51_4_b, :p6_51_5_a, :p6_51_5_b, :p6_51_6_a, :p6_51_6_b, :p6_51_7_a, :p6_51_7_b, :p6_51_8_a, :p6_51_8_b, :p6_52_1, :p6_52_2, :p6_52_3, :p6_52_4, :p6_52_5, :p6_52_6, :p6_52_7, :p6_52_8, :p6_53_1, :p6_53_2, :p6_53_3, :p6_53_4, :p6_53_5, :p6_53_6, :p6_53_7, :p6_53_8, :p6_54_1_1a, :p6_54_1_2a, :p6_54_1_3a, :p6_54_2_1a, :p6_54_2_2a, :p6_54_2_3a, :p6_54_3_1a, :p6_54_3_2a, :p6_54_3_3a, :p6_54_4_1a, :p6_54_4_2a, :p6_54_4_3a, :p6_54_5_1a, :p6_54_5_2a, :p6_54_5_3a, :p6_54_6_1a, :p6_54_6_2a, :p6_54_6_3a, :p6_54_7_1a, :p6_54_7_2a, :p6_54_7_3a, :p6_54_8_1a, :p6_54_8_2a, :p6_54_8_3a, :p6_54_1_1b, :p6_54_1_2b, :p6_54_1_3b, :p6_54_2_1b, :p6_54_2_2b, :p6_54_2_3b, :p6_54_3_1b, :p6_54_3_2b, :p6_54_3_3b, :p6_54_4_1b, :p6_54_4_2b, :p6_54_4_3b, :p6_54_5_1b, :p6_54_5_2b, :p6_54_5_3b, :p6_54_6_1b, :p6_54_6_2b, :p6_54_6_3b, :p6_54_7_1b, :p6_54_7_2b, :p6_54_7_3b, :p6_54_8_1b, :p6_54_8_2b, :p6_54_8_3b, :p6_55_1, :p6_55_2, :p6_55_3, :p6_55_4, :p6_55_5, :p6_55_6, :p6_55_7, :p6_55_8, :p6_56_1_1, :p6_56_1_2, :p6_56_1_3, :p6_56_1_4, :p6_56_1_5, :p6_56_2_1, :p6_56_2_2, :p6_56_2_3, :p6_56_2_4, :p6_56_2_5, :p6_56_3_1, :p6_56_3_2, :p6_56_3_3, :p6_56_3_4, :p6_56_3_5, :p6_56_4_1, :p6_56_4_2, :p6_56_4_3, :p6_56_4_4, :p6_56_4_5, :p6_56_5_1, :p6_56_5_2, :p6_56_5_3, :p6_56_5_4, :p6_56_5_5, :p6_56_6_1, :p6_56_6_2, :p6_56_6_3, :p6_56_6_4, :p6_56_6_5, :p6_56_7_1, :p6_56_7_2, :p6_56_7_3, :p6_56_7_4, :p6_56_7_5, :p6_56_8_1, :p6_56_8_2, :p6_56_8_3, :p6_56_8_4, :p6_56_8_5, :p6_57_1, :p6_57_2, :p6_57_3, :p6_57_4, :p6_57_5, :p6_57_6, :p6_57_7, :p6_57_8, :p6_58a_1, :p6_58a_2, :p6_58a_3, :p6_58a_4, :p6_58a_5, :p6_58a_6, :p6_58a_7, :p6_58a_8, :p6_58b_1, :p6_58b_2, :p6_58b_3, :p6_58b_4, :p6_58b_5, :p6_58b_6, :p6_58b_7, :p6_58b_8, :p7_59_1, :p7_59_2, :p7_59_3, :p7_59_4, :p7_59_5, :p7_59_6, :p7_59_7, :p7_59_8, :p7_60_1, :p7_60_2, :p7_60_3, :p7_60_4, :p7_60_5, :p7_60_6, :p7_60_7, :p7_60_8, :p7_61_1, :p7_61_2, :p7_61_3, :p7_61_4, :p7_61_5, :p7_61_6, :p7_61_7, :p7_61_8, :p7_62_1, :p7_62_2, :p7_62_3, :p7_62_4, :p7_62_5, :p7_62_6, :p7_62_7, :p7_62_8, :p7_63_1, :p7_63_2, :p7_63_3, :p7_63_4, :p7_63_5, :p7_63_6, :p7_63_7, :p7_63_8, :p7_64_1, :p7_64_2, :p7_64_3, :p7_64_4, :p7_64_5, :p7_64_6, :p7_64_7, :p7_64_8, :p7_66a_1, :p7_66a_2, :p7_66a_3, :p7_66a_4, :p7_66a_5, :p7_66a_6, :p7_66a_7, :p7_66a_8, :p7_67_1_a, :p7_67_1_b, :p7_67_2_a, :p7_67_2_b, :p7_67_3_a, :p7_67_3_b, :p7_67_4_a, :p7_67_4_b, :p7_67_5_a, :p7_67_5_b, :p7_67_6_a, :p7_67_6_b, :p7_67_7_a, :p7_67_7_b, :p7_67_8_a, :p7_67_8_b, :p7_68o_1, :p7_68o_2, :p7_68o_3, :p7_68o_4, :p7_68o_5, :p7_68o_6, :p7_68o_7, :p7_68o_8, :p7_69_1, :p7_69_2, :p7_69_3, :p7_69_4, :p7_69_5, :p7_69_6, :p7_69_7, :p7_69_8, :p7_70_1, :p7_70_2, :p7_70_3, :p7_70_4, :p7_70_5, :p7_70_6, :p7_70_7, :p7_70_8, :p7_71a_1, :p7_71a_2, :p7_71a_3, :p7_71a_4, :p7_71a_5, :p7_71a_6, :p7_71a_7, :p7_71a_8, :p7_71b_1, :p7_71b_2, :p7_71b_3, :p7_71b_4, :p7_71b_5, :p7_71b_6, :p7_71b_7, :p7_71b_8, :p7_72_1, :p7_72_2, :p7_72_3, :p7_72_4, :p7_72_5, :p7_72_6, :p7_72_7, :p7_72_8, :p7_73a_1, :p7_73a_2, :p7_73a_3, :p7_73a_4, :p7_73a_5, :p7_73a_6, :p7_73a_7, :p7_73a_8, :p7_73b_1, :p7_73b_2, :p7_73b_3, :p7_73b_4, :p7_73b_5, :p7_73b_6, :p7_73b_7, :p7_73b_8, :p7_74a_1, :p7_74a_2, :p7_74a_3, :p7_74a_4, :p7_74a_5, :p7_74a_6, :p7_74a_7, :p7_74a_8, :p7_74b_1, :p7_74b_2, :p7_74b_3, :p7_74b_4, :p7_74b_5, :p7_74b_6, :p7_74b_7, :p7_74b_8, :p7_75a_1, :p7_75a_2, :p7_75a_3, :p7_75a_4, :p7_75a_5, :p7_75a_6, :p7_75a_7, :p7_75a_8, :p7_75b_1, :p7_75b_2, :p7_75b_3, :p7_75b_4, :p7_75b_5, :p7_75b_6, :p7_75b_7, :p7_75b_8, :p7_76a_1, :p7_76a_2, :p7_76a_3, :p7_76a_4, :p7_76a_5, :p7_76a_6, :p7_76a_7, :p7_76a_8, :p7_76b_1, :p7_76b_2, :p7_76b_3, :p7_76b_4, :p7_76b_5, :p7_76b_6, :p7_76b_7, :p7_76b_8, :p7_77a_1, :p7_77a_2, :p7_77a_3, :p7_77a_4, :p7_77a_5, :p7_77a_6, :p7_77a_7, :p7_77a_8, :p7_77b_1, :p7_77b_2, :p7_77b_3, :p7_77b_4, :p7_77b_5, :p7_77b_6, :p7_77b_7, :p7_77b_8, :p7_78a_1, :p7_78a_2, :p7_78a_3, :p7_78a_4, :p7_78a_5, :p7_78a_6, :p7_78a_7, :p7_78a_8, :p7_78b_1, :p7_78b_2, :p7_78b_3, :p7_78b_4, :p7_78b_5, :p7_78b_6, :p7_78b_7, :p7_78b_8, :p7_79a_1, :p7_79a_2, :p7_79a_3, :p7_79a_4, :p7_79a_5, :p7_79a_6, :p7_79a_7, :p7_79a_8, :p7_79b_1, :p7_79b_2, :p7_79b_3, :p7_79b_4, :p7_79b_5, :p7_79b_6, :p7_79b_7, :p7_79b_8, :p7_80a_1, :p7_80a_2, :p7_80a_3, :p7_80a_4, :p7_80a_5, :p7_80a_6, :p7_80a_7, :p7_80a_8, :p7_80b_1, :p7_80b_2, :p7_80b_3, :p7_80b_4, :p7_80b_5, :p7_80b_6, :p7_80b_7, :p7_80b_8, :p7_81a_1, :p7_81a_2, :p7_81a_3, :p7_81a_4, :p7_81a_5, :p7_81a_6, :p7_81a_7, :p7_81a_8, :p7_81b_1, :p7_81b_2, :p7_81b_3, :p7_81b_4, :p7_81b_5, :p7_81b_6, :p7_81b_7, :p7_81b_8, :p4_36o_1, :p4_36o_2, :p4_36o_3, :p4_36o_4, :p4_36o_5, :p4_36o_6, :p4_36o_7, :p4_36o_8, :p7_82_1, :p7_82_2, :p7_82_3, :p7_82_4, :p7_82_5, :p7_82_6, :p7_82_7, :p7_82_8, :p7_83a_1, :p7_83a_2, :p7_83a_3, :p7_83a_4, :p7_83a_5, :p7_83a_6, :p7_83a_7, :p7_83a_8, :p7_83b_1, :p7_83b_2, :p7_83b_3, :p7_83b_4, :p7_83b_5, :p7_83b_6, :p7_83b_7, :p7_83b_8, :p7_84_1, :p7_84_2, :p7_84_3, :p7_84_4, :p7_84_5, :p7_84_6, :p7_84_7, :p7_84_8, :p7_85_1, :p7_85_2, :p7_85_3, :p7_85_4, :p7_85_5, :p7_85_6, :p7_85_7, :p7_85_8, :p7_86_1, :p7_86_2, :p7_86_3, :p7_86_4, :p7_86_5, :p7_86_6, :p7_86_7, :p7_86_8, :p7_87a_1, :p7_87a_2, :p7_87a_3, :p7_87a_4, :p7_87a_5, :p7_87a_6, :p7_87a_7, :p7_87a_8, :p7_87b_1, :p7_87b_2, :p7_87b_3, :p7_87b_4, :p7_87b_5, :p7_87b_6, :p7_87b_7, :p7_87b_8, :p7_88_1, :p7_88_2, :p7_88_3, :p7_88_4, :p7_88_5, :p7_88_6, :p7_88_7, :p7_88_8, :p7_89_1, :p7_89_2, :p7_89_3, :p7_89_4, :p7_89_5, :p7_89_6, :p7_89_7, :p7_89_8, :p7_90_1, :p7_90_2, :p7_90_3, :p7_90_4, :p7_90_5, :p7_90_6, :p7_90_7, :p7_90_8, :p7_91a_1, :p7_91a_2, :p7_91a_3, :p7_91a_4, :p7_91a_5, :p7_91a_6, :p7_91a_7, :p7_91a_8, :p7_91b_1, :p7_91b_2, :p7_91b_3, :p7_91b_4, :p7_91b_5, :p7_91b_6, :p7_91b_7, :p7_91b_8, :p7_92_1, :p7_92_2, :p7_92_3, :p7_92_4, :p7_92_5, :p7_92_6, :p7_92_7, :p7_92_8, :p7_93a_1, :p7_93a_2, :p7_93a_3, :p7_93a_4, :p7_93a_5, :p7_93a_6, :p7_93a_7, :p7_93a_8, :p7_93b_1, :p7_93b_2, :p7_93b_3, :p7_93b_4, :p7_93b_5, :p7_93b_6, :p7_93b_7, :p7_93b_8, :p7_93c_1, :p7_93c_2, :p7_93c_3, :p7_93c_4, :p7_93c_5, :p7_93c_6, :p7_93c_7, :p7_93c_8, :p8_1a, :p8_1b, :p8_2a, :p8_2b, :p8_3a, :p8_3b, :p8_4a, :p8_4b, :p8_5a, :p8_5b, :p8_6, :p8_7a, :p8_7b, :p8_8a, :p8_8b, :p8_9a_1, :p8_9a_2, :p8_9b_1, :p8_9b_2, :p8_9c_1, :p8_9c_2, :p8_9d_1, :p8_9d_2, :p8_10a, :p8_10b, :p8_11a, :p8_11b, :p8_12a, :p8_12b, :p8_13a, :p8_13b, :p9_1, :p9_2, :p9_3, :p9_4, :p9_5, :p9_6, :p9_7, :p9_8_1, :p9_8_2, :p9_8_3, :p9_8_4, :p9_8_5, :p9_8_6, :p9_8_7, :p9_8_8, :p9_8_9, :p9_8_10, :p5_46_1a_1, :p5_46_1a_2, :p5_46_1a_3, :p5_46_1a_4, :p5_46_1a_5, :p5_46_1a_6, :p5_46_1a_7, :p5_46_1a_8, :p5_46_1b_1, :p5_46_1b_2, :p5_46_1b_3, :p5_46_1b_4, :p5_46_1b_5, :p5_46_1b_6, :p5_46_1b_7, :p5_46_1b_8, :p5_46_2a_1, :p5_46_2a_2, :p5_46_2a_3, :p5_46_2a_4, :p5_46_2a_5, :p5_46_2a_6, :p5_46_2a_7, :p5_46_2a_8, :p5_46_2b_1, :p5_46_2b_2, :p5_46_2b_3, :p5_46_2b_4, :p5_46_2b_5, :p5_46_2b_6, :p5_46_2b_7, :p5_46_2b_8, :p5_46_3a_1, :p5_46_3a_2, :p5_46_3a_3, :p5_46_3a_4, :p5_46_3a_5, :p5_46_3a_6, :p5_46_3a_7, :p5_46_3a_8, :p9_9, :p9_10, :p10_1, :p10_1_a, :p10_1_b, :p10_1_c, :p10_1_d, :p10_1_e, :p10_1_f, :p10_2, :p10_t1_a, :p10_t1_a_1, :p10_t1_a_2, :p10_t1_a_3, :p10_t1_a_4, :p10_t1_b, :p10_t1_b_1, :p10_t1_b_2, :p10_t1_b_3, :p10_t1_b_4, :p10_t1_c, :p10_t1_c_1, :p10_t1_c_2, :p10_t1_c_3, :p10_t1_c_4, :p10_3, :p10_t1a_a, :p10_t1a_a_1, :p10_t1a_a_2, :p10_t1a_a_3, :p10_t1a_a_4, :p10_t1a_a_5, :p10_t1a_b, :p10_t1a_b_1, :p10_t1a_b_2, :p10_t1a_b_3, :p10_t1a_b_4, :p10_t1a_b_5, :p10_t1a_c, :p10_t1a_c_1, :p10_t1a_c_2, :p10_t1a_c_3, :p10_t1a_c_4, :p10_t1a_c_5, :p10_4, :p10_4_a, :p10_4_b, :p10_4_c, :p10_4_d, :p10_4_e, :p10_4_f, :p10_4_g, :p10_4_h, :p10_4_i, :p10_t2_a1_1, :p10_t2_a1_2, :p10_t2_a1_3, :p10_t2_a1_4, :p10_t2_a1_5, :p10_t2_a2_1, :p10_t2_a2_2, :p10_t2_a2_3, :p10_t2_a2_4, :p10_t2_a2_5, :p10_t2_a3_1, :p10_t2_a3_2, :p10_t2_a3_3, :p10_t2_a3_4, :p10_t2_a3_5, :p10_t2_b1_1, :p10_t2_b1_2, :p10_t2_b1_3, :p10_t2_b1_4, :p10_t2_b1_5, :p10_t2_b2_1, :p10_t2_b2_2, :p10_t2_b2_3, :p10_t2_b2_4, :p10_t2_b2_5, :p10_t2_c1_1, :p10_t2_c1_2, :p10_t2_c1_3, :p10_t2_c1_4, :p10_t2_c1_5, :p10_t2_c2_1, :p10_t2_c2_2, :p10_t2_c2_3, :p10_t2_c2_4, :p10_t2_c2_5, :p10_t2_d1_1, :p10_t2_d1_2, :p10_t2_d1_3, :p10_t2_d1_4, :p10_t2_d1_5, :p10_t2_d2_1, :p10_t2_d2_2, :p10_t2_d2_3, :p10_t2_d2_4, :p10_t2_d2_5, :p10_t2_d3, :p10_t2_d3_1, :p10_t2_d3_2, :p10_t2_d3_3, :p10_t2_d3_4, :p10_t2_d3_5, :p10_t2_d4_1, :p10_t2_d4_2, :p10_t2_d4_3, :p10_t2_d4_4, :p10_t2_d4_5, :p10_t2_d5_1, :p10_t2_d5_2, :p10_t2_d5_3, :p10_t2_d5_4, :p10_t2_d5_5, :p10_t2_d6_1, :p10_t2_d6_2, :p10_t2_d6_3, :p10_t2_d6_4, :p10_t2_d6_5, :p10_t2_e1_1, :p10_t2_e1_2, :p10_t2_e1_3, :p10_t2_e1_4, :p10_t2_e1_5, :p10_t2_e2_ck, :p10_t2_e2_kc, :p10_t2_e2_4, :p10_t2_e2_5, :p10_t2_e3_1, :p10_t2_e3_2, :p10_t2_e3_3, :p10_t2_e3_4, :p10_t2_e3_5, :p10_t2_f, :p10_t2_f1_1, :p10_t2_f1_2, :p10_t2_f1_3, :p10_t2_f1_4, :p10_t2_f1_5, :p10_t2_f2_cb, :p10_t2_f2_db, :p10_t2_f2_kb, :p10_t2_f2_5, :p10_t2_g, :p10_t2_g_5, :p10_t2_h, :p10_t2_h_1, :p10_t2_h_2, :p10_t2_h_3, :p10_t2_h_4, :p10_t2_h_5, :p10_6, :p10_t3_a1_a, :p10_t3_a1_b, :p10_t3_a_1_a, :p10_t3_a_1_b, :p10_t3_a_1_c, :p10_t3_a_1_d, :p10_t3_a_2_a, :p10_t3_a_2_b, :p10_t3_a_2_c, :p10_t3_a_2_d, :p10_t3_b_a, :p10_t3_b_b, :p10_t3_b_c, :p10_t3_b_d, :p10_t3_c_a, :p10_t3_c_b, :p10_t3_c_c, :p10_t3_c_d, :p10_t3_d_a, :p10_t3_d_b, :p10_t3_d_c, :p10_t3_d_d, :p10_t3_e_a, :p10_t3_e_b, :p10_t3_e_c, :p10_t3_e_d, :p10_t3_f_a, :p10_t3_f_b, :p10_t3_f_c, :p10_t3_f_d, :p10_t3_g_a, :p10_t3_g_b, :p10_t3_g_c, :p10_t3_g_d, :p10_7a, :p10_7b, :p5_46_4b_1, :p5_46_4b_2, :p5_46_4b_3, :p5_46_4b_4, :p5_46_4b_5, :p5_46_4b_6, :p5_46_4b_7, :p5_46_4b_8, :p5_46_5a_1, :p5_46_5a_2, :p5_46_5a_3, :p5_46_5a_4, :p5_46_5a_5, :p5_46_5a_6, :p5_46_5a_7, :p5_46_5a_8, :p5_46_5b_1, :p5_46_5b_2, :p5_46_5b_3, :p5_46_5b_4, :p5_46_5b_5, :p5_46_5b_6, :p5_46_5b_7, :p5_46_5b_8, :p2_22c, :p4_42c_1, :p4_42c_2, :p4_42c_3, :p4_42c_4, :p4_42c_5, :p4_42c_6, :p4_42c_7, :p4_42c_8, :p4_42co_1, :p4_42co_2, :p4_42co_3, :p4_42co_4, :p4_42co_5, :p4_42co_6, :p4_42co_7, :p4_42co_8, :p5_43_1p_1, :p5_43_1p_2, :p5_43_1p_3, :p5_43_1p_4, :p5_43_1p_5, :p5_43_1p_6, :p5_43_1p_7, :p5_43_1p_8, :p5_43_2p_1, :p5_43_2p_2, :p5_43_2p_3, :p5_43_2p_4, :p5_43_2p_5, :p5_43_2p_6, :p5_43_2p_7, :p5_43_2p_8, :libre_8, :libre_9, :libre_10, :libre_11, :libre_12, :libre_13, :libre_14, :libre_15, :p6_52b_1, :p6_52b_2, :p6_52b_3, :p6_52b_4, :p6_52b_5, :p6_52b_6, :p6_52b_7, :p6_52b_8, :p7_66b_1, :p7_66b_2, :p7_66b_3, :p7_66b_4, :p7_66b_5, :p7_66b_6, :p7_66b_7, :p7_66b_8, :p7_66c_1, :p7_66c_2, :p7_66c_3, :p7_66c_4, :p7_66c_5, :p7_66c_6, :p7_66c_7, :p7_66c_8, :p7_66d_1, :p7_66d_2, :p7_66d_3, :p7_66d_4, :p7_66d_5, :p7_66d_6, :p7_66d_7, :p7_66d_8, :p7_94_1, :p7_94_2, :p7_94_3, :p7_94_4, :p7_94_5, :p7_94_6, :p7_94_7, :p7_94_8, :p9_11, :p9_12, :p9_13, :p9_14, :p9_14o, :p9_15, :p9_16, :p9_17a_1, :p9_17a_2, :p9_17a_3, :p9_17a_4, :p9_17a_5, :p9_17a_6, :p9_17a_7, :p9_17a_8, :p9_17a_9, :p9_17a_10, :p9_17a_11, :p9_17a_12, :p9_17a_13, :p9_17b_1, :p9_17b_2, :p9_17b_3, :p9_17b_4, :p9_17b_5, :p9_17b_6, :p9_17b_7, :p9_17b_8, :p9_17b_9, :p9_17b_10, :p9_17b_11, :p9_17b_12, :p9_17b_13, :p9_17c_1, :p9_17c_2, :p9_17c_3, :p9_17c_4, :p9_17c_5, :p9_17c_6, :p9_17c_7, :p9_17c_8, :p9_17c_9, :p9_17c_10, :p9_17c_11, :p9_17c_12, :p9_17c_13, :p10_t3_a1_ap, :p10_t3_a1_bp, :p4_42ba_1, :p4_42ba_2, :p4_42ba_3, :p4_42ba_4, :p4_42ba_5, :p4_42ba_6, :p4_42ba_7, :p4_42ba_8, :p4_42bb_1, :p4_42bb_2, :p4_42bb_3, :p4_42bb_4, :p4_42bb_5, :p4_42bb_6, :p4_42bb_7, :p10_t2_a1x, :p10_t2_a2x, :p10_t2_a3x, :p10_t2_b1x, :p10_t2_b2x, :p10_t2_c1x, :p10_t2_c2x, :p10_t2_d1x, :p10_t2_d2x, :p10_t2_d3x, :p10_t2_d4x, :p10_t2_d5x, :p10_t2_d6x, :p10_t2_e1x, :p10_t2_e2x, :p10_t2_e3x, :p10_t2_f1x, :p10_t2_f2x, :p10_t2_gx, :p10_t2_hx, :codigo, p2_25:[], p2_26:[], p4_38_1:[], p4_38_2:[], p4_38_3:[], p4_38_4:[], p4_38_5:[], p4_38_6:[], p4_38_7:[], p4_38_8:[], p7_68_1:[], p7_68_2:[], p7_68_3:[], p7_68_4:[], p7_68_5:[], p7_68_6:[], p7_68_7:[], p7_68_8:[], p7_65_1:[], p7_65_2:[], p7_65_3:[], p7_65_4:[], p7_65_5:[], p7_65_6:[], p7_65_7:[], p7_65_8:[])
    end
end
