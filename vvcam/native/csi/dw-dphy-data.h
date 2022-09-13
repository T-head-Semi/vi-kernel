/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (c) 2018-2019 Synopsys, Inc. and/or its affiliates.
 *
 * Synopsys DesignWare MIPI D-PHY platform data
 *
 * Author: Luis Oliveira <Luis.Oliveira@synopsys.com>
 */

#include <linux/phy/phy.h>
#include <linux/kernel.h>
#include <dw-mipi-csi-pltfrm.h>

#ifndef __DW_DPHY_DATA_H__
#define __DW_DPHY_DATA_H__

struct dw_phy_pdata {
	u32 dphy_frequency;
	u8 dphy_te_len;
	u32 config_8l;
	u8 dphy_gen;
	u8 phy_type;
	u8 id;
};

static const struct pdata_names phys[] = {
	{ .name = "phy-dw-dphy.0.0", },
	{ .name = "phy-dw-dphy.1.1", },
};

struct dw_dphy_rx;

struct plat_dw_dphy {
	int (*get_resources)(struct device *dev, struct dw_dphy_rx *dphy);
};
#endif /*__DW_DPHY_DATA_H__ */
