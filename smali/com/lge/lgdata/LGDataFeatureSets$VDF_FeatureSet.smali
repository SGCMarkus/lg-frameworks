.class public Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "VDF_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1785
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 1

    .line 1789
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_SUPPORT_BACKOFF_TIMER:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1790
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_FDN_DATA_CALL_BLOCK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1791
    return-void
.end method

.method public require4MTK()V
    .locals 0

    .line 1799
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 1795
    return-void
.end method
