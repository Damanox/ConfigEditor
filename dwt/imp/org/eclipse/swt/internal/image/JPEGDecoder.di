// D import file generated from 'org\eclipse\swt\internal\image\JPEGDecoder.d'
module org.eclipse.swt.internal.image.JPEGDecoder;
import org.eclipse.swt.SWT;
import java.io.InputStream;
import org.eclipse.swt.internal.image.LEDataInputStream;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.graphics.ImageLoaderEvent;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import java.lang.all;
public class JPEGDecoder
{
	static const int DCTSIZE = 8;

	static const int DCTSIZE2 = 64;

	static const int NUM_QUANT_TBLS = 4;

	static const int NUM_HUFF_TBLS = 4;

	static const int NUM_ARITH_TBLS = 16;

	static const int MAX_COMPS_IN_SCAN = 4;

	static const int MAX_COMPONENTS = 10;

	static const int MAX_SAMP_FACTOR = 4;

	static const int D_MAX_BLOCKS_IN_MCU = 10;

	static const int HUFF_LOOKAHEAD = 8;

	static const int MAX_Q_COMPS = 4;

	static const int IFAST_SCALE_BITS = 2;

	static const int MAXJSAMPLE = 255;

	static const int CENTERJSAMPLE = 128;

	static const int MIN_GET_BITS = 32 - 7;

	static const int INPUT_BUFFER_SIZE = 4096;

	static const int SCALEBITS = 16;

	static const int ONE_HALF = 1 << SCALEBITS - 1;

	static const int RGB_RED = 2;

	static const int RGB_GREEN = 1;

	static const int RGB_BLUE = 0;

	static const int RGB_PIXELSIZE = 3;

	static const int JBUF_PASS_THRU = 0;

	static const int JBUF_SAVE_SOURCE = 1;

	static const int JBUF_CRANK_DEST = 2;

	static const int JBUF_SAVE_AND_PASS = 3;

	static const int JPEG_MAX_DIMENSION = 65500;

	static const int BITS_IN_JSAMPLE = 8;

	static const int JDITHER_NONE = 0;

	static const int JDITHER_ORDERED = 1;

	static const int JDITHER_FS = 2;

	static const int JDCT_ISLOW = 0;

	static const int JDCT_IFAST = 1;

	static const int JDCT_FLOAT = 2;

	static const int JDCT_DEFAULT = JDCT_ISLOW;

	static const int JCS_UNKNOWN = 0;

	static const int JCS_GRAYSCALE = 1;

	static const int JCS_RGB = 2;

	static const int JCS_YCbCr = 3;

	static const int JCS_CMYK = 4;

	static const int JCS_YCCK = 5;

	static const int SAVED_COEFS = 6;

	static const int Q01_POS = 1;

	static const int Q10_POS = 8;

	static const int Q20_POS = 16;

	static const int Q11_POS = 9;

	static const int Q02_POS = 2;

	static const int CTX_PREPARE_FOR_IMCU = 0;

	static const int CTX_PROCESS_IMCU = 1;

	static const int CTX_POSTPONED_ROW = 2;

	static const int APP0_DATA_LEN = 14;

	static const int APP14_DATA_LEN = 12;

	static const int APPN_DATA_LEN = 14;

	static const int M_SOF0 = 192;

	static const int M_SOF1 = 193;

	static const int M_SOF2 = 194;

	static const int M_SOF3 = 195;

	static const int M_SOF5 = 197;

	static const int M_SOF6 = 198;

	static const int M_SOF7 = 199;

	static const int M_JPG = 200;

	static const int M_SOF9 = 201;

	static const int M_SOF10 = 202;

	static const int M_SOF11 = 203;

	static const int M_SOF13 = 205;

	static const int M_SOF14 = 206;

	static const int M_SOF15 = 207;

	static const int M_DHT = 196;

	static const int M_DAC = 204;

	static const int M_RST0 = 208;

	static const int M_RST1 = 209;

	static const int M_RST2 = 210;

	static const int M_RST3 = 211;

	static const int M_RST4 = 212;

	static const int M_RST5 = 213;

	static const int M_RST6 = 214;

	static const int M_RST7 = 215;

	static const int M_SOI = 216;

	static const int M_EOI = 217;

	static const int M_SOS = 218;

	static const int M_DQT = 219;

	static const int M_DNL = 220;

	static const int M_DRI = 221;

	static const int M_DHP = 222;

	static const int M_EXP = 223;

	static const int M_APP0 = 224;

	static const int M_APP1 = 225;

	static const int M_APP2 = 226;

	static const int M_APP3 = 227;

	static const int M_APP4 = 228;

	static const int M_APP5 = 229;

	static const int M_APP6 = 230;

	static const int M_APP7 = 231;

	static const int M_APP8 = 232;

	static const int M_APP9 = 233;

	static const int M_APP10 = 234;

	static const int M_APP11 = 235;

	static const int M_APP12 = 236;

	static const int M_APP13 = 237;

	static const int M_APP14 = 238;

	static const int M_APP15 = 239;

	static const int M_JPG0 = 240;

	static const int M_JPG13 = 253;

	static const int M_COM = 254;

	static const int M_TEM = 1;

	static const int M_ERROR = 256;

	static const int CSTATE_START = 100;

	static const int CSTATE_SCANNING = 101;

	static const int CSTATE_RAW_OK = 102;

	static const int CSTATE_WRCOEFS = 103;

	static const int DSTATE_START = 200;

	static const int DSTATE_INHEADER = 201;

	static const int DSTATE_READY = 202;

	static const int DSTATE_PRELOAD = 203;

	static const int DSTATE_PRESCAN = 204;

	static const int DSTATE_SCANNING = 205;

	static const int DSTATE_RAW_OK = 206;

	static const int DSTATE_BUFIMAGE = 207;

	static const int DSTATE_BUFPOST = 208;

	static const int DSTATE_RDCOEFS = 209;

	static const int DSTATE_STOPPING = 210;

	static const int JPEG_REACHED_SOS = 1;

	static const int JPEG_REACHED_EOI = 2;

	static const int JPEG_ROW_COMPLETED = 3;

	static const int JPEG_SCAN_COMPLETED = 4;

	static const int JPEG_SUSPENDED = 0;

	static const int JPEG_HEADER_OK = 1;

	static const int JPEG_HEADER_TABLES_ONLY = 2;

	static const int DECOMPRESS_DATA = 0;

	static const int DECOMPRESS_SMOOTH_DATA = 1;

	static const int DECOMPRESS_ONEPASS = 2;

	static const int CONSUME_DATA = 0;

	static const int DUMMY_CONSUME_DATA = 1;

	static const int PROCESS_DATA_SIMPLE_MAIN = 0;

	static const int PROCESS_DATA_CONTEXT_MAIN = 1;

	static const int PROCESS_DATA_CRANK_POST = 2;

	static const int POST_PROCESS_1PASS = 0;

	static const int POST_PROCESS_DATA_UPSAMPLE = 1;

	static const int NULL_CONVERT = 0;

	static const int GRAYSCALE_CONVERT = 1;

	static const int YCC_RGB_CONVERT = 2;

	static const int GRAY_RGB_CONVERT = 3;

	static const int YCCK_CMYK_CONVERT = 4;

	static const int NOOP_UPSAMPLE = 0;

	static const int FULLSIZE_UPSAMPLE = 1;

	static const int H2V1_FANCY_UPSAMPLE = 2;

	static const int H2V1_UPSAMPLE = 3;

	static const int H2V2_FANCY_UPSAMPLE = 4;

	static const int H2V2_UPSAMPLE = 5;

	static const int INT_UPSAMPLE = 6;

	static const int INPUT_CONSUME_INPUT = 0;

	static const int COEF_CONSUME_INPUT = 1;

	static int[] extend_test = [0, 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384];

	static int[] extend_offset = [0, (-1 << 1) + 1, (-1 << 2) + 1, (-1 << 3) + 1, (-1 << 4) + 1, (-1 << 5) + 1, (-1 << 6) + 1, (-1 << 7) + 1, (-1 << 8) + 1, (-1 << 9) + 1, (-1 << 10) + 1, (-1 << 11) + 1, (-1 << 12) + 1, (-1 << 13) + 1, (-1 << 14) + 1, (-1 << 15) + 1];

	static int[] jpeg_natural_order = [0, 1, 8, 16, 9, 2, 3, 10, 17, 24, 32, 25, 18, 11, 4, 5, 12, 19, 26, 33, 40, 48, 41, 34, 27, 20, 13, 6, 7, 14, 21, 28, 35, 42, 49, 56, 57, 50, 43, 36, 29, 22, 15, 23, 30, 37, 44, 51, 58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54, 47, 55, 62, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63];

	static final class JQUANT_TBL
	{
		short[DCTSIZE2] quantval;
		bool sent_table;
	}

	static final class JHUFF_TBL
	{
		byte[17] bits;
		byte[256] huffval;
		bool sent_table;
	}

	static final class bitread_perm_state
	{
		int get_buffer;
		int bits_left;
	}

	static final class bitread_working_state
	{
		byte[] buffer;
		int bytes_offset;
		int bytes_in_buffer;
		int get_buffer;
		int bits_left;
		jpeg_decompress_struct cinfo;
	}

	static final class savable_state
	{
		int EOBRUN;
		int[MAX_COMPS_IN_SCAN] last_dc_val;
	}

	static final class d_derived_tbl
	{
		int[18] maxcode;
		int[17] valoffset;
		JHUFF_TBL pub;
		int[1 << HUFF_LOOKAHEAD] look_nbits;
		byte[1 << HUFF_LOOKAHEAD] look_sym;
	}

	static final class jpeg_d_coef_controller
	{
		int consume_data;
		int decompress_data;
		short[][][] coef_arrays;
		int MCU_ctr;
		int MCU_vert_offset;
		int MCU_rows_per_iMCU_row;
		short[][D_MAX_BLOCKS_IN_MCU] MCU_buffer;
		short[][][][MAX_COMPONENTS] whole_image;
		int[] coef_bits_latch;
		short[] workspace;
		void start_input_pass(jpeg_decompress_struct cinfo);
		void start_iMCU_row(jpeg_decompress_struct cinfo);
	}

	static abstract class jpeg_entropy_decoder
	{
		abstract void start_pass(jpeg_decompress_struct cinfo);
		abstract bool decode_mcu(jpeg_decompress_struct cinfo, short[][] MCU_data);
		bool insufficient_data;
		bitread_working_state br_state_local;
		savable_state state_local;
		public this();

	}

	static final class huff_entropy_decoder : jpeg_entropy_decoder
	{
		bitread_perm_state bitstate;
		savable_state saved;
		int restarts_to_go;
		d_derived_tbl[NUM_HUFF_TBLS] dc_derived_tbls;
		d_derived_tbl[NUM_HUFF_TBLS] ac_derived_tbls;
		d_derived_tbl[D_MAX_BLOCKS_IN_MCU] dc_cur_tbls;
		d_derived_tbl[D_MAX_BLOCKS_IN_MCU] ac_cur_tbls;
		bool[D_MAX_BLOCKS_IN_MCU] dc_needed;
		bool[D_MAX_BLOCKS_IN_MCU] ac_needed;
		public this();

		override void start_pass(jpeg_decompress_struct cinfo);
		override bool decode_mcu(jpeg_decompress_struct cinfo, short[][] MCU_data);
		void start_pass_huff_decoder(jpeg_decompress_struct cinfo);
		bool process_restart(jpeg_decompress_struct cinfo);
	}

	static final class phuff_entropy_decoder : jpeg_entropy_decoder
	{
		bitread_perm_state bitstate;
		savable_state saved;
		int restarts_to_go;
		d_derived_tbl[NUM_HUFF_TBLS] derived_tbls;
		d_derived_tbl ac_derived_tbl;
		int[DCTSIZE2] newnz_pos;
		public this();

		override void start_pass(jpeg_decompress_struct cinfo);
		override bool decode_mcu(jpeg_decompress_struct cinfo, short[][] MCU_data);
		bool decode_mcu_DC_refine(jpeg_decompress_struct cinfo, short[][] MCU_data);
		bool decode_mcu_AC_refine(jpeg_decompress_struct cinfo, short[][] MCU_data);
		bool decode_mcu_AC_first(jpeg_decompress_struct cinfo, short[][] MCU_data);
		bool decode_mcu_DC_first(jpeg_decompress_struct cinfo, short[][] MCU_data);
		bool process_restart(jpeg_decompress_struct cinfo);
		void start_pass_phuff_decoder(jpeg_decompress_struct cinfo);
	}

	static final class jpeg_component_info
	{
		int component_id;
		int component_index;
		int h_samp_factor;
		int v_samp_factor;
		int quant_tbl_no;
		int dc_tbl_no;
		int ac_tbl_no;
		int width_in_blocks;
		int height_in_blocks;
		int DCT_scaled_size;
		int downsampled_width;
		int downsampled_height;
		bool component_needed;
		int MCU_width;
		int MCU_height;
		int MCU_blocks;
		int MCU_sample_width;
		int last_col_width;
		int last_row_height;
		JQUANT_TBL quant_table;
		int[] dct_table;
	}

	static final class jpeg_color_quantizer
	{
		int[][] sv_colormap;
		int sv_actual;
		int[][] colorindex;
		bool is_padded;
		int[MAX_Q_COMPS] Ncolors;
		int row_index;
		bool on_odd_row;
		void start_pass(jpeg_decompress_struct cinfo, bool is_pre_scan);
	}

	static final class jpeg_upsampler
	{
		bool need_context_rows;
		byte[][][MAX_COMPONENTS] color_buf;
		int[MAX_COMPONENTS] color_buf_offset;
		int[MAX_COMPONENTS] methods;
		int next_row_out;
		int rows_to_go;
		int[MAX_COMPONENTS] rowgroup_height;
		byte[MAX_COMPONENTS] h_expand;
		byte[MAX_COMPONENTS] v_expand;
		void start_pass(jpeg_decompress_struct cinfo);
	}

	static final class jpeg_marker_reader
	{
		bool saw_SOI;
		bool saw_SOF;
		int next_restart_num;
		int discarded_bytes;
		int length_limit_COM;
		int[16] length_limit_APPn;
	}

	static final class jpeg_d_main_controller
	{
		int process_data;
		byte[][][MAX_COMPONENTS] buffer;
		int[MAX_COMPONENTS] buffer_offset;
		bool buffer_full;
		int[1] rowgroup_ctr;
		byte[][][][2] xbuffer;
		int[][2] xbuffer_offset;
		int whichptr;
		int context_state;
		int rowgroups_avail;
		int iMCU_row_ctr;
		void start_pass(jpeg_decompress_struct cinfo, int pass_mode);
	}

	static final class jpeg_decomp_master
	{
		bool is_dummy_pass;
		int pass_number;
		bool using_merged_upsample;
		jpeg_color_quantizer quantizer_1pass;
		jpeg_color_quantizer quantizer_2pass;
	}

	static final class jpeg_inverse_dct
	{
		int[MAX_COMPONENTS] cur_method;
		void start_pass(jpeg_decompress_struct cinfo);
	}

	static final class jpeg_input_controller
	{
		int consume_input;
		bool has_multiple_scans;
		bool eoi_reached;
		bool inheaders;
	}

	static final class jpeg_color_deconverter
	{
		int color_convert;
		int[] Cr_r_tab;
		int[] Cb_b_tab;
		int[] Cr_g_tab;
		int[] Cb_g_tab;
		void start_pass(jpeg_decompress_struct cinfo);
	}

	static final class jpeg_d_post_controller
	{
		int post_process_data;
		int[] whole_image;
		int[][] buffer;
		int strip_height;
		int starting_row;
		int next_row;
		void start_pass(jpeg_decompress_struct cinfo, int pass_mode);
	}

	static final class jpeg_decompress_struct
	{
		bool is_decompressor;
		int global_state;
		InputStream inputStream;
		byte[] buffer;
		int bytes_in_buffer;
		int bytes_offset;
		bool start_of_file;
		int image_width;
		int image_height;
		int num_components;
		int jpeg_color_space;
		int out_color_space;
		int scale_num;
		int scale_denom;
		double output_gamma = 0;
		bool buffered_image;
		bool raw_data_out;
		int dct_method;
		bool do_fancy_upsampling;
		bool do_block_smoothing;
		bool quantize_colors;
		int dither_mode;
		bool two_pass_quantize;
		int desired_number_of_colors;
		bool enable_1pass_quant;
		bool enable_external_quant;
		bool enable_2pass_quant;
		int output_width;
		int output_height;
		int out_color_components;
		int output_components;
		int rec_outbuf_height;
		int actual_number_of_colors;
		int[] colormap;
		int output_scanline;
		int input_scan_number;
		int input_iMCU_row;
		int output_scan_number;
		int output_iMCU_row;
		int[][] coef_bits;
		JQUANT_TBL[NUM_QUANT_TBLS] quant_tbl_ptrs;
		JHUFF_TBL[NUM_HUFF_TBLS] dc_huff_tbl_ptrs;
		JHUFF_TBL[NUM_HUFF_TBLS] ac_huff_tbl_ptrs;
		int data_precision;
		jpeg_component_info[] comp_info;
		bool progressive_mode;
		bool arith_code;
		byte[NUM_ARITH_TBLS] arith_dc_L;
		byte[NUM_ARITH_TBLS] arith_dc_U;
		byte[NUM_ARITH_TBLS] arith_ac_K;
		int restart_interval;
		bool saw_JFIF_marker;
		byte JFIF_major_version;
		byte JFIF_minor_version;
		byte density_unit;
		short X_density;
		short Y_density;
		bool saw_Adobe_marker;
		byte Adobe_transform;
		bool CCIR601_sampling;
		jpeg_marker_reader marker_list;
		int max_h_samp_factor;
		int max_v_samp_factor;
		int min_DCT_scaled_size;
		int total_iMCU_rows;
		byte[] sample_range_limit;
		int sample_range_limit_offset;
		int comps_in_scan;
		jpeg_component_info[MAX_COMPS_IN_SCAN] cur_comp_info;
		int MCUs_per_row;
		int MCU_rows_in_scan;
		int blocks_in_MCU;
		int[D_MAX_BLOCKS_IN_MCU] MCU_membership;
		int Ss;
		int Se;
		int Ah;
		int Al;
		int unread_marker;
		int[DCTSIZE2] workspace;
		int[1] row_ctr;
		jpeg_decomp_master master;
		jpeg_d_main_controller main;
		jpeg_d_coef_controller coef;
		jpeg_d_post_controller post;
		jpeg_input_controller inputctl;
		jpeg_marker_reader marker;
		jpeg_entropy_decoder entropy;
		jpeg_inverse_dct idct;
		jpeg_upsampler upsample;
		jpeg_color_deconverter cconvert;
		jpeg_color_quantizer cquantize;
	}

	static void error();
	static void error(int code);
	static void error(String msg);
	static void jinit_marker_reader(jpeg_decompress_struct cinfo);
	static void jinit_d_coef_controller(jpeg_decompress_struct cinfo, bool need_full_buffer);
	static void start_output_pass(jpeg_decompress_struct cinfo);
	static void jpeg_create_decompress(jpeg_decompress_struct cinfo);
	static void jpeg_calc_output_dimensions(jpeg_decompress_struct cinfo);
	static bool use_merged_upsample(jpeg_decompress_struct cinfo);
	static void prepare_range_limit_table(jpeg_decompress_struct cinfo);
	static void build_ycc_rgb_table(jpeg_decompress_struct cinfo);
	static void jinit_color_deconverter(jpeg_decompress_struct cinfo);
	static void jinit_d_post_controller(jpeg_decompress_struct cinfo, bool need_full_buffer);
	static void make_funny_pointers(jpeg_decompress_struct cinfo);
	static void alloc_funny_pointers(jpeg_decompress_struct cinfo);
	static void jinit_d_main_controller(jpeg_decompress_struct cinfo, bool need_full_buffer);
	static long jround_up(long a, long b);
	static void jinit_upsampler(jpeg_decompress_struct cinfo);
	static void jinit_phuff_decoder(jpeg_decompress_struct cinfo);
	static void jinit_huff_decoder(jpeg_decompress_struct cinfo);
	static void jinit_inverse_dct(jpeg_decompress_struct cinfo);
	static const int CONST_BITS = 13;

	static const int PASS1_BITS = 2;

	static const int RANGE_MASK = MAXJSAMPLE * 4 + 3;

	static void jpeg_idct_islow(jpeg_decompress_struct cinfo, jpeg_component_info compptr, short[] coef_block, byte[][] output_buf, int output_buf_offset, int output_col);
	static void upsample(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int[] in_row_group_ctr, int in_row_groups_avail, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail);
	static bool smoothing_ok(jpeg_decompress_struct cinfo);
	static void master_selection(jpeg_decompress_struct cinfo);
	static void jinit_master_decompress(jpeg_decompress_struct cinfo);
	static void jcopy_sample_rows(byte[][] input_array, int source_row, byte[][] output_array, int dest_row, int num_rows, int num_cols);
	static bool jpeg_start_decompress(jpeg_decompress_struct cinfo);
	static void prepare_for_output_pass(jpeg_decompress_struct cinfo);
	static bool jpeg_resync_to_restart(jpeg_decompress_struct cinfo, int desired);
	static bool read_restart_marker(jpeg_decompress_struct cinfo);
	static bool jpeg_fill_bit_buffer(bitread_working_state state, int get_buffer, int bits_left, int nbits);
	static int jpeg_huff_decode(bitread_working_state state, int get_buffer, int bits_left, d_derived_tbl htbl, int min_bits);
	static int decompress_onepass(jpeg_decompress_struct cinfo, byte[][][] output_buf, int[] output_buf_offset);
	static int decompress_smooth_data(jpeg_decompress_struct cinfo, byte[][][] output_buf, int[] output_buf_offset);
	static int decompress_data(jpeg_decompress_struct cinfo, byte[][][] output_buf, int[] output_buf_offset);
	static void post_process_data(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int[] in_row_group_ctr, int in_row_groups_avail, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail);
	static void set_bottom_pointers(jpeg_decompress_struct cinfo);
	static void set_wraparound_pointers(jpeg_decompress_struct cinfo);
	static void process_data_crank_post(jpeg_decompress_struct cinfo, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail);
	static void process_data_context_main(jpeg_decompress_struct cinfo, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail);
	static void process_data_simple_main(jpeg_decompress_struct cinfo, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail);
	static int jpeg_read_scanlines(jpeg_decompress_struct cinfo, byte[][] scanlines, int max_lines);
	static bool output_pass_setup(jpeg_decompress_struct cinfo);
	static bool get_dht(jpeg_decompress_struct cinfo);
	static bool get_dqt(jpeg_decompress_struct cinfo);
	static bool get_dri(jpeg_decompress_struct cinfo);
	static bool get_dac(jpeg_decompress_struct cinfo);
	static bool get_sos(jpeg_decompress_struct cinfo);
	static bool get_sof(jpeg_decompress_struct cinfo, bool is_prog, bool is_arith);
	static void sep_upsample(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int[] in_row_group_ctr, int in_row_groups_avail, byte[][] output_buf, int[] out_row_ctr, int out_rows_avail);
	static void noop_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index);
	static void fullsize_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index);
	static void h2v1_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index);
	static void h2v2_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index);
	static void h2v1_fancy_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index);
	static void h2v2_fancy_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index);
	static void int_upsample(jpeg_decompress_struct cinfo, jpeg_component_info compptr, byte[][] input_data, int input_data_offset, byte[][][] output_data_ptr, int[] output_data_offset, int output_data_index);
	static void null_convert(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int input_row, byte[][] output_buf, int output_buf_offset, int num_rows);
	static void grayscale_convert(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int input_row, byte[][] output_buf, int output_buf_offset, int num_rows);
	static void gray_rgb_convert(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int input_row, byte[][] output_buf, int output_buf_offset, int num_rows);
	static void ycc_rgb_convert(jpeg_decompress_struct cinfo, byte[][][] input_buf, int[] input_buf_offset, int input_row, byte[][] output_buf, int output_buf_offset, int num_rows);
	static bool process_APPn(int n, jpeg_decompress_struct cinfo);
	static bool process_COM(jpeg_decompress_struct cinfo);
	static void skip_input_data(jpeg_decompress_struct cinfo, int num_bytes);
	static bool skip_variable(jpeg_decompress_struct cinfo);
	static bool get_interesting_appn(jpeg_decompress_struct cinfo);
	static void examine_app0(jpeg_decompress_struct cinfo, byte[] data, int datalen, int remaining);
	static void examine_app14(jpeg_decompress_struct cinfo, byte[] data, int datalen, int remaining);
	static bool get_soi(jpeg_decompress_struct cinfo);
	static void jinit_input_controller(jpeg_decompress_struct cinfo);
	static void reset_marker_reader(jpeg_decompress_struct cinfo);
	static void reset_input_controller(jpeg_decompress_struct cinfo);
	static void finish_output_pass(jpeg_decompress_struct cinfo);
	static void jpeg_destroy(jpeg_decompress_struct cinfo);
	static void jpeg_destroy_decompress(jpeg_decompress_struct cinfo);
	static bool jpeg_input_complete(jpeg_decompress_struct cinfo);
	static bool jpeg_start_output(jpeg_decompress_struct cinfo, int scan_number);
	static bool jpeg_finish_output(jpeg_decompress_struct cinfo);
	static bool jpeg_finish_decompress(jpeg_decompress_struct cinfo);
	static int jpeg_read_header(jpeg_decompress_struct cinfo, bool require_image);
	static int dummy_consume_data(jpeg_decompress_struct cinfo);
	static int consume_data(jpeg_decompress_struct cinfo);
	static int consume_input(jpeg_decompress_struct cinfo);
	static bool fill_input_buffer(jpeg_decompress_struct cinfo);
	static bool first_marker(jpeg_decompress_struct cinfo);
	static bool next_marker(jpeg_decompress_struct cinfo);
	static int read_markers(jpeg_decompress_struct cinfo);
	static long jdiv_round_up(long a, long b);
	static void initial_setup(jpeg_decompress_struct cinfo);
	static void per_scan_setup(jpeg_decompress_struct cinfo);
	static void latch_quant_tables(jpeg_decompress_struct cinfo);
	static void jpeg_make_d_derived_tbl(jpeg_decompress_struct cinfo, bool isDC, int tblno, d_derived_tbl dtbl);
	static void start_input_pass(jpeg_decompress_struct cinfo);
	static void finish_input_pass(jpeg_decompress_struct cinfo);
	static int consume_markers(jpeg_decompress_struct cinfo);
	static void default_decompress_parms(jpeg_decompress_struct cinfo);
	static void init_source(jpeg_decompress_struct cinfo);
	static int jpeg_consume_input(jpeg_decompress_struct cinfo);
	static void jpeg_abort(jpeg_decompress_struct cinfo);
	static bool isFileFormat(LEDataInputStream stream);
	static ImageData[] loadFromByteStream(InputStream inputStream, ImageLoader loader);
}

