.class public Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NA_CDMA_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 1

    .line 228
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_USE_BEARERBITMASK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 229
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 230
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ALLOWED_DATA_CALL_ON_ECBM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 231
    return-void
.end method

.method public require4MTK()V
    .locals 1

    .line 240
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LISTEN_IMS_CALL_EVENT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 241
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_DO_NOT_CHECK_VOICE_DATA_CONCURRENT_FOR_IMS_CALL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 242
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 236
    return-void
.end method
