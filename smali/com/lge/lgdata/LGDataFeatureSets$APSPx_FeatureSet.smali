.class public Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "APSPx_FeatureSet"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1548
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    return-void
.end method


# virtual methods
.method public require()V
    .locals 1

    .line 1555
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_ENABLE_5GTCPBUFFER:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1557
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TOOL_GPRI_DATA_PROFILE_CHECKER:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1558
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_ADD_APN_FOR_TESTSIM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1560
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ALPS_NUM:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1562
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_USE_SIM_RECORDS_ONLY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1563
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PERFORMANCE_HELPING_CODE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1564
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LG_DATA_LISTENER:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1570
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_DATA_SETTINGS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1571
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_MDM_API:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1572
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_UX_STRING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1574
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_MSIM_VALIDATE_DDS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1575
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_QUERY_ONLY_WHEN_CURRENT_IS_1:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1576
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_STALL_CHECK_DEFAULT_ONLY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1578
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_BLOCKED_STATE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1579
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_DATA_CONTINUITY_SERVICE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1581
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_RIL_BUGFIX_FD_FOR_MPDN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1582
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_RADIOOFF_WAITINGTIME:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1583
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DORMANT_FD:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1584
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1586
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_UPDT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1588
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TOOL_MLT_DEBUG_INFO:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1589
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CLEAR_USAGE_HISTORY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1591
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_NETWORKPOLICY_RESTRICT_BACKGROUND_FOR_POWERSAVE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1593
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATARECOVERY_BLOCK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1594
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SUM_PACKET_TRANSFER:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1600
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_ZERO_RATING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1602
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LINGER_TIME_0:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1604
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_DATA_SECURITY_LOCK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1606
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_KEEP_IMS_PDN_AFTER_SIM_REMOVED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1608
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_SOCKS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1609
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_SYNC_DATA_SETTING_DB:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1610
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_ENABLE_IPV6:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1611
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_PRIMARY_WIFI:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1612
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_SEND_MA_INFO:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1613
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_SWITCH_PRIMARY_MOBILE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1614
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_SWITCH_PRIMARY_WIFI_SPECIFIED_APP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1618
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UDP_PREVENT_ICMPv6_WITH_CLAT_IID:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1619
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LTE_PREFERRED_KT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1620
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_EXCLUDE_UID:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1621
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_TCP_SYN_RETRY_CONFIG_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1622
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP_ENHANCE_TPUT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1623
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TCPIP_MPTCP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1624
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_FULL_HOTSWAP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1625
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NOTI_ROAMING_DISABLE_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1626
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_BROADCAST_ACTION_ANY_DATA_INTENT_WHEN_CONNECTION_STATE_CHANGED_ONLY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1627
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PROTECT_MMS_FROM_VPN:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1629
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_GPRS_REJECTED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1631
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_LTE_ROAMING_LGU:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1632
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1633
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_MPDN_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1634
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1636
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UNPAID_NOTIFICATION_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1637
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1638
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_NO_WAKEUP:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1639
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SIM_ACTION_REQ:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1640
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1641
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1642
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1643
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_HANDLE_DATA_INTERFACE_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1644
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1645
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_PSRETRY:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1646
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_ENHANCE_ROAMING_CHECK_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1647
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1648
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_LGONESOURCE_FROM_ORIGINAL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1649
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_APN_SELECT_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1650
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1651
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_IMS_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1652
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DISPLAY_IP_MPDN_KR:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1653
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS_BY_BITMASK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1654
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1655
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1656
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1657
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_PDN_OTA_UPLUS:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1658
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_TETHER_SUPPORT_IPV4_TETHER_WITH_CLAT_DATA_USAGE:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1659
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_FAKE_REJECT_TOOL:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1660
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DEBUG_SET_MOBILE_DATA_ENABLED:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1662
    return-void
.end method

.method public require4MTK()V
    .locals 1

    .line 1670
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_DATACONNECTION_START_CLATD_ON_PREFIX_RECEIVED_FOR_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1671
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_SIM_MSIM_DDS_HANDLE_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1672
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_ENV_MODIFICATION_BY_MTK:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 1673
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 1666
    return-void
.end method
