.class public Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DCM_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1383
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 5

    .line 1387
    const v0, 0x313e5

    const-string/jumbo v1, "persist.product.lge.data.rcis_ver"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1391
    .local v1, "rcisVersion":I
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SET_DATA_STATUS_BY_BITMASK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1392
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_ALLOW_DATACALL_DURING_PPAC:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1393
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_APNSYNC_SKIP_DATA_ATTACHED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1394
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_DCM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1395
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_DCM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1396
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1397
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1398
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_VPN_DEF_PROXY_DCM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1399
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_BULLET_FIX:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1400
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ENABLE_PROFILE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1401
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS_BY_BITMASK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1403
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1404
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1408
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_ALL_NETWORK_CAPABILITY_FOR_DEFAULT_TYPE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "44010"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_APN_CHANGE_DCM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SUPL_APN_CHANGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    if-lt v1, v0, :cond_0

    .line 1413
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SET_IMS_PROFILE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    goto :goto_0

    .line 1415
    :cond_0
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SET_IMS_PROFILE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1421
    :goto_0
    return-void
.end method

.method public require4MTK()V
    .locals 0

    .line 1430
    return-void
.end method

.method public require4QCT()V
    .locals 1

    .line 1425
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_APNSYNC:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1426
    return-void
.end method
