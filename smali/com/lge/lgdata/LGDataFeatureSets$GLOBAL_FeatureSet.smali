.class public Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GLOBAL_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1678
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 5

    .line 1683
    const-string/jumbo v0, "persist.radio.multisim.config"

    const-string/jumbo v1, "ss"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1689
    .local v1, "isMultiSimSupported":Z
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_USE_PROXY_OF_PREFERRED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1690
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1691
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1692
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1693
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_XCAP_TYPE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1694
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1695
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_BLOCK_MOBILE_PROVISIONING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1696
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_MERGE_IGNORE_TYPE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1697
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_UPDATE_COTA:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1698
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SUPPORT_ON_DEMAND_DATA_POSSIBLE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1699
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_RESETTING_PROFILE_ID:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1700
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_HANDLE_DATA_CALL_LIST_CHANGED_EVENT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1701
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_DONOT_CHECK_SETTING_DB_IN_FETCHDUN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1702
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT_DATA_USAGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1703
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_SUPPORT_DATA_LIMIT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1704
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_APN_BULLET_FIX:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1705
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1706
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_KEEP_IMS_PDN_AFTER_SIM_REMOVED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1707
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SEND_DDS_CHANGE_DONE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1708
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_MULTISIM_SIM1_SIM2_DATA_ON_DDS_CHANGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1709
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_RESET_DATA_ROAMING_WHEN_NETWORK_SETTINGS_RESET:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1710
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_IGNORE_SUSPEND_STATE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1711
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_USING_DIFFERENT_APN_VOLTE_VOWIFI:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1712
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_FORCE_ANYADDR_TSR_WHILE_REKEY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1713
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_MSIM_TUNEAWAY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1714
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NO_TRIGGER_WHEN_RAT_CHANGED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1715
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1716
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1717
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1718
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PERFORMANCE_USE_RPS_XPS_CPUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1719
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_ALLOW_ONLY_LTE_IWLAN_NETWORK_GLOBAL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1720
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_SET_DEFAULT_PREFERENCE_CELLULAR_ONLY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1721
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SYNC_DATA_SETTING_DB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1722
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IWLAN_TUNNEL_TERMINATION_POWER_DOWN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1723
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING_H3G_WIND:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1724
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SILENT_DDS_SWITCH_FOR_NON_DDS_CALL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1725
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_SET_MTU_SIZE_FOR_EMERGENCY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1726
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_OFF_O2_DURING_GSMONLY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1727
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_EMERGENCY_GLOBAL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1729
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1730
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_BUGFIX_CONNECTION_STATE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1737
    if-nez v1, :cond_0

    .line 1738
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_EMERGENCY_CALL_NO_SIM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1741
    :cond_0
    if-eqz v1, :cond_1

    .line 1742
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SET_CURRENT_FIELD_USING_DDS_SUBID:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1743
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_DUAL_IMS_REGISTRATION_ONAPNCHANGED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1746
    :cond_1
    const-string v2, "TCL"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/pcas/PCASInfo;->isConstOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/pcas/PCASInfo;->isConstCountry([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1747
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_CLEAR_CAUSE_FOR_TCL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1750
    :cond_2
    const-string v2, "CLR"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/pcas/PCASInfo;->isConstOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1751
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATARECOVERY_BLOCK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    const/4 v3, 0x0

    const-string v4, "732101"

    invoke-virtual {p0, v2, v4, v3, v3}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    :cond_3
    const-string v2, "ESA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/pcas/PCASInfo;->isConstCountry([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1756
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_VOLTE_ROAMING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1757
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UPLINK_DOWNLINK_ARROWS_IN_VOICE_CALL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1758
    sget-object v2, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DO_NOT_MAKE_PERMANENT_FAIL_AIRTEL_IND:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1760
    :cond_4
    return-void
.end method

.method public require4MTK()V
    .locals 1

    .line 1773
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_WRONG_ROAMING_STATUS_CHANGE_FOR_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1774
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_SET_MTU_FROM_NETWORK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1775
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_USE_RIL_PROFILEID_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1780
    return-void
.end method

.method public require4QCT()V
    .locals 1

    .line 1764
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_IA_WHEN_NO_PROFILE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1765
    return-void
.end method
