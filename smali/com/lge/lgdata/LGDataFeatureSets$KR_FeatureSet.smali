.class public Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KR_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 924
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 5

    .line 931
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_APNSYNC:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 932
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 933
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 934
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_HIDE_NETWORKINTERFACE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 935
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_KEEP_IMS_PDN_AFTER_SIM_REMOVED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 936
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_FAKE_REJECT_TOOL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 937
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 938
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS_BY_BITMASK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 939
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT_DATA_USAGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 940
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_SUPPORT_DATA_LIMIT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 941
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PERFORMANCE_USE_RPS_XPS_CPUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 942
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ENABLE_MODEM_CLAT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 943
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SYNC_DATA_SETTING_DB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 944
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 945
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_APNSYNC_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 946
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_CYCLEDAY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 948
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_DELAYED_ACK_CONFIG:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 949
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_DISABLE_PRIVACY_LOG_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 950
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_FULL_HOTSWAP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 952
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 953
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 954
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 955
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 956
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_IGNORE_SUSPEND_STATE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 957
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_IPV6_MTU:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 958
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_VOLTE_ROAMING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 959
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_IPV6_DAD_TIMER:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 960
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UDP_PREVENT_ICMPv6_WITH_CLAT_IID:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 961
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NO_TRIGGER_WHEN_RAT_CHANGED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 962
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_KERNEL_DATA_HAL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 963
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 964
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LINGER_TIME_0:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 965
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_BLOCK_DATA_SETUP_WHEN_PERMANENTLY_FAILED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 970
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string/jumbo v1, "persist.product.lge.data.usim_mobility"

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;)V

    .line 972
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "product.lge.data.support_mpdn"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_MPDN_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 983
    :cond_0
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const/4 v1, 0x1

    const-string v2, "450"

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 984
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 985
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 986
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 987
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 988
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 989
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 990
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 991
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 992
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 993
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 994
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 995
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 996
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_BROADCAST_ACTION_ANY_DATA_INTENT_WHEN_CONNECTION_STATE_CHANGED_ONLY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 997
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY_FOR_TETHERING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 1000
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v1, "45005"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_NT_MODE_WCDMA_PREF_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SIB9:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATA_STALL_DNS_QUERY_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "45011"

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_SELECT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v1, "45008"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v3, "45002"

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const/4 v0, 0x0

    const-string/jumbo v4, "persist.product.lge.data.support_lte_preferred"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1025
    sget-object v4, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LTE_PREFERRED_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v4, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    sget-object v4, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LTE_PREFERRED_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v4, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_1
    const-string/jumbo v4, "persist.product.lge.data.apn_combine_kt"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_COMBINE_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_COMBINE_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_2
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_SELECT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_SELECT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :goto_0
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string v1, "45006"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DISCONNECT_DEFAULT_PDN_WITHOUT_DNS_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_OTA_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_RECOVERY_REATTACH_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public require4MTK()V
    .locals 1

    .line 1056
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_USER_APN_INITIAL_ATTACH_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1057
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1058
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_QOS_CONFIG_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1059
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_IPV6_MTU_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1060
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1061
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 1052
    return-void
.end method
