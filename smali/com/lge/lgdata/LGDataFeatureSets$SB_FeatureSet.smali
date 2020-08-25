.class public Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SB_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1475
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 6

    .line 1481
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_RESETTING_PROFILE_ID:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1482
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_BULLET_FIX:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1486
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_NETWORK_CAPABILITY_FOR_DEFAULT_TYPE_SB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v1, "44000"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_NETWORK_CAPABILITY_FOR_DEFAULT_TYPE_SB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "44020"

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_NETWORK_CAPABILITY_FOR_DEFAULT_TYPE_SB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v4, "44021"

    invoke-virtual {p0, v0, v4, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_NETWORK_CAPABILITY_FOR_DEFAULT_TYPE_SB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v5, "44101"

    invoke-virtual {p0, v0, v5, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SET_MTU_SIZE_FOR_IMS_SB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SET_MTU_SIZE_FOR_IMS_SB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SET_MTU_SIZE_FOR_IMS_SB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v4, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SET_MTU_SIZE_FOR_IMS_SB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v5, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method public require4MTK()V
    .locals 0

    .line 1506
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 1502
    return-void
.end method
