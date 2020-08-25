.class public Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TLF_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1845
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 4

    .line 1849
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_REJECT_POPUP_TLF:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v1, "21407"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_REJECT_POPUP_TLF:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "23410"

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_REJECT_POPUP_TLF:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "26203"

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_REJECT_POPUP_TLF:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "26207"

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_DATAENABLED_CONFIG_TLF_ES:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SIM_FOR_DUAL_IMSI_TLF_ES:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SIM_ICCID_BASED_TLF_ES:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1856
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_SUPPORT_BACKOFF_TIMER_TLF:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1857
    return-void
.end method

.method public require4MTK()V
    .locals 0

    .line 1865
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 1861
    return-void
.end method
