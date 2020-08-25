.class public Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ATT_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 687
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 3

    .line 692
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_APNSYNC:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 693
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_NOT_REQUIRED_DUN_BY_ALLTYPE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 694
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 695
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 696
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_ENABLE_PRIVACY_LOG:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string/jumbo v1, "persist.product.lge.data.service.privacy.enable"

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;)V

    .line 697
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY_AFTER_DETACH_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 698
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_KEEP_PREFERAPN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 699
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL_NO_SIM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 700
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_BULLET_FIX:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 701
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_RESET_DATA_ROAMING_WHEN_NETWORK_SETTINGS_RESET:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 702
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_EPDG_X509_CERTIFICATION:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 703
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_BLOCKED_STATE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 704
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PERMANENT_FAIL_EPDG:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 705
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NO_TRIGGER_WHEN_RAT_CHANGED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 706
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_XCAP_AFTER_OTA_UPDATE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 707
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_KEEP_IMS_PDN_AFTER_SIM_REMOVED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 710
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_SUPPORT_BACKOFF_TIMER:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 711
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_DATA_USAGE_DEFAULT_CONFIG_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 712
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_MMS_TYPE_BLOCK_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string/jumbo v1, "persist.product.lge.gsm.mms.enabled"

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;)V

    .line 713
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ALLOW_HIPRI_ON_PREFERRED_APN_ONLY_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 714
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_BACKUP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 715
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_HANDLE_DATA_CALL_LIST_CHANGED_EVENT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 716
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_SOFTPHONE_TYPE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const-string/jumbo v1, "persist.product.lge.data.softphone"

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;)V

    .line 717
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_RETRY_WHEN_LOST_CONNECTION:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 718
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATA_DISABLE_NOTI_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 719
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_HANDLE_ETHERNET_ON_CONNECTIVITY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 720
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_GET_INITIAL_PROFILE_FOR_NAO_GSM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 721
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_GET_MODEM_PROFILE_ID_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 722
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MTU_SIZE_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 723
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_HOTSPOT_APN_REJECT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 726
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 727
    const-string v0, "1"

    const-string/jumbo v1, "persist.product.lge.data.iwlan"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string/jumbo v1, "persist.product.lge.data.useperguarding"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string/jumbo v1, "persist.product.lge.data.iwlan.priv_iid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 734
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 735
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_XCAP_TYPE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 736
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGE_DATA_IMS_ISIM_REFRESH_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 737
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 738
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_DATARECOVERY_EXCEPTION:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 739
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY_NOT_SENDING_ENABLED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 740
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_TUNNEL_TERMINATION_POWER_DOWN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 741
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_RECONFIGURE_FOR_ATT_LAB_TEST:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 742
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_CELLULAR_PREFERRED_FOR_EMERGENCY_PDN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 743
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_DEFAULT_APN_DOES_NOT_HANDLE_SPECIFIC_TYPE_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 744
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_SUPPORT_VOWIFI_CALL_UI:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 745
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_PREVENT_TRIGGERING_HANDOVER_DURING_SRVCC:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 746
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_RESET_THROTTLE_AFTER_RADIO_OFF:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 747
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_XCAP_APN_MERGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 748
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_UPADTE_SIGNALSTRENGTH_AFTER_CELLULAR_QUALITY_CHANGED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 749
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_SERVICE_QUALITY_REPORT_ENABLED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 750
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 751
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SUPPURT_ALL_ACCESS_FEATURE_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSetFactory;->BUILD_CHARACTERISTICS:Ljava/lang/String;

    const-string/jumbo v2, "tablet"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public require4MTK()V
    .locals 1

    .line 759
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ATT_IMS_DAM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 760
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_EVENT_DATA_TIMER_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 761
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_QOS_INACTIVE_NOTIFY_FOR_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 762
    return-void
.end method

.method public require4QCT()V
    .locals 1

    .line 755
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ATT_IMS_DAM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 756
    return-void
.end method
