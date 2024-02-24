onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_top/dut/wb_clk_i
add wave -noupdate /tb_top/dut/wb_rst_i
add wave -noupdate /tb_top/dut/wb_adr_i
add wave -noupdate /tb_top/dut/wb_dat_i
add wave -noupdate /tb_top/dut/wb_dat_o
add wave -noupdate /tb_top/dut/wb_sel_i
add wave -noupdate /tb_top/dut/wb_we_i
add wave -noupdate /tb_top/dut/wb_stb_i
add wave -noupdate /tb_top/dut/wb_cyc_i
add wave -noupdate /tb_top/dut/wb_ack_o
add wave -noupdate /tb_top/dut/wb_err_o
add wave -noupdate /tb_top/dut/wb_int_o
add wave -noupdate /tb_top/dut/ss_pad_o
add wave -noupdate /tb_top/dut/sclk_pad_o
add wave -noupdate /tb_top/dut/mosi_pad_o
add wave -noupdate /tb_top/dut/miso_pad_i
add wave -noupdate /tb_top/dut/divider
add wave -noupdate /tb_top/dut/ctrl
add wave -noupdate /tb_top/dut/ss
add wave -noupdate /tb_top/dut/wb_dat
add wave -noupdate /tb_top/dut/rx
add wave -noupdate /tb_top/dut/rx_negedge
add wave -noupdate /tb_top/dut/tx_negedge
add wave -noupdate /tb_top/dut/char_len
add wave -noupdate /tb_top/dut/go
add wave -noupdate /tb_top/dut/lsb
add wave -noupdate /tb_top/dut/ie
add wave -noupdate /tb_top/dut/ass
add wave -noupdate /tb_top/dut/spi_divider_sel
add wave -noupdate /tb_top/dut/spi_ctrl_sel
add wave -noupdate /tb_top/dut/spi_tx_sel
add wave -noupdate /tb_top/dut/spi_ss_sel
add wave -noupdate /tb_top/dut/tip
add wave -noupdate /tb_top/dut/pos_edge
add wave -noupdate /tb_top/dut/neg_edge
add wave -noupdate /tb_top/dut/last_bit
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/clk_in
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/rst
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/enable
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/go
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/last_clk
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/divider
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/clk_out
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/pos_edge
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/neg_edge
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/cnt
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/cnt_zero
add wave -noupdate -expand -group clk_gen /tb_top/dut/clgen/cnt_one
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/clk
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/rst
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/latch
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/byte_sel
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/len
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/lsb
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/go
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/pos_edge
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/neg_edge
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/rx_negedge
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/tx_negedge
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/tip
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/last
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/p_in
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/p_out
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/s_clk
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/s_in
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/s_out
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/cnt
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/data
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/tx_bit_pos
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/rx_bit_pos
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/rx_clk
add wave -noupdate -expand -group {shift reg} /tb_top/dut/shift/tx_clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {684490 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 239
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1549120 ps}
