.class public Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KR_OPEN_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1066
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 5

    .line 1071
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1072
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1073
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1074
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_FAKE_REJECT_TOOL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1075
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1076
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS_BY_BITMASK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1077
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT_DATA_USAGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1078
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_SUPPORT_DATA_LIMIT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1079
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PERFORMANCE_USE_RPS_XPS_CPUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1080
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ENABLE_MODEM_CLAT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1081
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SYNC_DATA_SETTING_DB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1082
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1083
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_APNSYNC_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1084
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_CYCLEDAY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1085
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_DELAYED_ACK_CONFIG:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1086
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1087
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_FULL_HOTSWAP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1089
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1090
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1091
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1092
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1093
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_IGNORE_SUSPEND_STATE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1094
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_VOLTE_ROAMING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1095
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_IPV6_DAD_TIMER:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1096
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UDP_PREVENT_ICMPv6_WITH_CLAT_IID:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1097
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NO_TRIGGER_WHEN_RAT_CHANGED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1098
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1099
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LINGER_TIME_0:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1100
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_BLOCK_DATA_SETUP_WHEN_PERMANENTLY_FAILED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1102
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string/jumbo v1, "persist.product.lge.data.usim_mobility"

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;)V

    .line 1103
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_USING_MOBILE_DATA_ALWAYS_ON:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1105
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "product.lge.data.support_mpdn"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_MPDN_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1110
    :cond_0
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const/4 v1, 0x1

    const-string v2, "450"

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1111
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1112
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1113
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1115
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1116
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1117
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1118
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1119
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1120
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1121
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1122
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1123
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_BROADCAST_ACTION_ANY_DATA_INTENT_WHEN_CONNECTION_STATE_CHANGED_ONLY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1124
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1126
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const/4 v1, 0x0

    const-string v2, "45011"

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v2, "45005"

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_CEHCK_PACKAGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PROTECT_MMS_FROM_VPN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_COMBINE_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_SELECT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v2, "45008"

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "45002"

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_MMS_APN_MENU_NOT_CONRTOL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SET_LTE_AVAILABLE_PROP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SET_LTE_AVAILABLE_PROP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL_NO_SIM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL_NO_SIM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const/4 v0, 0x0

    const-string/jumbo v4, "persist.product.lge.data.apn_combine_kt"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_COMBINE_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_COMBINE_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_1
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_SELECT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_SELECT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :goto_0
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_EXCLUDE_UID:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v2, "45006"

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PROTECT_MMS_FROM_VPN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_LGU:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UNPAID_NOTIFICATION_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NOTI_ROAMING_DISABLE_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DISCONNECT_DEFAULT_PDN_WITHOUT_DNS_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_OTA_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_RECOVERY_REATTACH_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    return-void
.end method

.method public require4MTK()V
    .locals 0

    .line 1196
    return-void
.end method

.method public require4QCT()V
    .locals 1

    .line 1190
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_APNSYNC:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1191
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_IPV6_MTU:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1192
    return-void
.end method
