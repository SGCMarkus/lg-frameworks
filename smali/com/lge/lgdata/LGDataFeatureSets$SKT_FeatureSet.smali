.class public Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SKT_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1201
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 7

    .line 1209
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1210
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1211
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_CEHCK_PACKAGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1212
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PROTECT_MMS_FROM_VPN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1213
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_COMBINE_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1214
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1215
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1216
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "45005"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1217
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_USING_MOBILE_DATA_ALWAYS_ON:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1221
    const-string/jumbo v0, "ro.product.lge.data.mptcp.support_mptcp"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1223
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_SWITCH_PRIMARY_MOBILE_SPECIFIED_APP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1224
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_ENABLE_IPV6:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1225
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_ENHANCE_TPUT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1226
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1229
    :cond_0
    return-void
.end method

.method public require4MTK()V
    .locals 1

    .line 1237
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_BLOCK_USIM_SECURE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1238
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNTION_OTA_PDN_SKT_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1239
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_AIRPLANE_OFF_VOICECALL_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1240
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_DELAYED_ACK_CONFIG_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1241
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 1233
    return-void
.end method
