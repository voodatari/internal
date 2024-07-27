#!/bin/sh

# DEVICE CONFIG - CPU
DC_CPU_CORES=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "cores")
DC_CPU_DEFAULT=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "default")
DC_CPU_GOVERNOR=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "governor")
DC_CPU_SCALER=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "scaler")
DC_CPU_SAMPLING_RATE=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "sampling_rate")
DC_CPU_UP_THRESHOLD=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "up_threshold")
DC_CPU_SAMPLING_DOWN_FACTOR=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "sampling_down_factor")
DC_CPU_IO_IS_BUSY=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "io_is_busy")
DC_CPU_SAMPLING_RATE_DEFAULT=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "sampling_rate_default")
DC_CPU_UP_THRESHOLD_DEFAULT=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "up_threshold_default")
DC_CPU_SAMPLING_DOWN_FACTOR_DEFAULT=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "sampling_down_factor_default")
DC_CPU_IO_IS_BUSY_DEFAULT=$(PARSE_INI "$DEVICE_CONFIG" "cpu" "io_is_busy_default")

export DC_CPU_CORES
export DC_CPU_DEFAULT
export DC_CPU_GOVERNOR
export DC_CPU_SCALER
export DC_CPU_SAMPLING_RATE
export DC_CPU_UP_THRESHOLD
export DC_CPU_SAMPLING_DOWN_FACTOR
export DC_CPU_IO_IS_BUSY
export DC_CPU_SAMPLING_RATE_DEFAULT
export DC_CPU_UP_THRESHOLD_DEFAULT
export DC_CPU_SAMPLING_DOWN_FACTOR_DEFAULT
export DC_CPU_IO_IS_BUSY_DEFAULT
