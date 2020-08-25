.class public Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "USC_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 1

    .line 363
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_REMOVE_APN_SPN_BASED_APN_FOR_CSPIRE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 364
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_NOT_REQUIRED_DUN_BY_ALLTYPE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 365
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 366
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_UNUSED_ISONLYSINGLEDCALLOWED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 367
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 368
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_KERNEL_CONFIG_BIC:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 369
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_RESET_DATA_ROAMING_WHEN_NETWORK_SETTINGS_RESET:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 370
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL_NO_SIM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 371
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_MERGE_IGNORE_TYPE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 372
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_SUPPORT_DATA_LIMIT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 373
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 374
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_KEEP_IMS_PDN_AFTER_SIM_REMOVED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 375
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 376
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 377
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY_NOT_SENDING_ENABLED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 378
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 379
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_MMS_IS_NOT_RETRIEVED_AFTER_VOICECALL_END_WHEN_WIFION:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 380
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_BULLET_FIX:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 381
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 382
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_BUGFIX_CONNECTION_STATE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 385
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_TCP_WINDOW_SCALING_USC:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 386
    return-void
.end method

.method public require4MTK()V
    .locals 0

    .line 394
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 390
    return-void
.end method
