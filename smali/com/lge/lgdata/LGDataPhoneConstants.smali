.class public Lcom/lge/lgdata/LGDataPhoneConstants;
.super Ljava/lang/Object;
.source "LGDataPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdata/LGDataPhoneConstants$LteStateInfo;,
        Lcom/lge/lgdata/LGDataPhoneConstants$EmcFailCause;,
        Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;,
        Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    }
.end annotation


# static fields
.field public static final ACTION_VOLTE_EMERGENCY_CALL_FAIL_CAUSE:Ljava/lang/String; = "lge.intent.action.DATA_EMERGENCY_FAILED"

.field public static final ACTION_VOLTE_EPS_NETWORK_SUPPORT:Ljava/lang/String; = "lge.intent.action.LTE_NETWORK_SUPPORTED_INFO"

.field public static final ACTION_VOLTE_LTE_STATE_INFO:Ljava/lang/String; = "lge.intent.action.LTE_STATE_INFO"

.field public static final ACTION_VOLTE_NETWORK_SIB_INFO:Ljava/lang/String; = "lge.intent.action.LTE_NETWORK_SIB_INFO"

.field public static final ACTION_VOLTE_ROAMING_IMS_SETUP_FAIL:Ljava/lang/String; = "lge.intent.action.DATA_VOLTE_ROAMING_IMS_SETUP_FAILED"

.field public static final APN_TYPE_ADMIN:Ljava/lang/String; = "admin"

.field public static final APN_TYPE_BIP:Ljava/lang/String; = "bip"

.field public static final APN_TYPE_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final APN_TYPE_KAM:Ljava/lang/String; = "kam"

.field public static final APN_TYPE_SOFTPHONE:Ljava/lang/String; = "softphone"

.field public static final APN_TYPE_VTIMS:Ljava/lang/String; = "vtims"

.field public static final APN_TYPE_VZW800:Ljava/lang/String; = "vzw800"

.field public static final APN_TYPE_VZWAPP:Ljava/lang/String; = "vzwapp"

.field public static final APN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final APN_TYPE_XCAP:Ljava/lang/String; = "xcap"

.field public static final APN_TYPE_ZERORATING:Ljava/lang/String; = "zerorating"

.field public static final BLOCK_BAD_SIGNAL:I = 0x2

.field public static final BLOCK_CONNECTION_FAIL:I = 0x20

.field public static final BLOCK_IMS_REGFAIL:I = 0x1

.field public static final BLOCK_IMS_RTP_FAIL:I = 0x4

.field public static final BLOCK_IPSEC_FAIL:I = 0x8

.field public static final BLOCK_ROAMING:I = 0x10

.field public static final BLOCK_T3402:I = 0x40

.field public static final DATA_SMCAUSE:Ljava/lang/String; = "smCause"

.field public static final FEATURE_ENABLE_ADMIN:Ljava/lang/String; = "enableADMIN"

.field public static final FEATURE_ENABLE_BIP:Ljava/lang/String; = "enableBIP"

.field public static final FEATURE_ENABLE_SOFTPHONE:Ljava/lang/String; = "enableSOFTPHONE"

.field public static final FEATURE_ENABLE_VTIMS:Ljava/lang/String; = "enableVTIMS"

.field public static final FEATURE_ENABLE_VZW800:Ljava/lang/String; = "enable800APN"

.field public static final FEATURE_ENABLE_VZWAPP:Ljava/lang/String; = "enableVZWAPP"

.field public static final FEATURE_ENABLE_WAP:Ljava/lang/String; = "enableWAP"

.field public static final FEATURE_ENABLE_XCAP:Ljava/lang/String; = "enableXCAP"

.field public static final FEATURE_ENABLE_ZERORATING:Ljava/lang/String; = "enableZERORATING"

.field public static final sEMC_FailCause:Ljava/lang/String; = "EMC_FailCause"

.field public static final sEPDN_Barring:Ljava/lang/String; = "EPDN_Barring"

.field public static final sEPDN_Support:Ljava/lang/String; = "EPDN_Support"

.field public static final sEmer_Attach_Support:Ljava/lang/String; = "Emer_Attach_Support"

.field public static final sEmer_Camped_CID:Ljava/lang/String; = "Emer_Camped_CID"

.field public static final sEmer_Camped_TAC:Ljava/lang/String; = "Emer_Camped_TAC"

.field public static final sLteDetachCause:Ljava/lang/String; = "LteDetachCause"

.field public static final sLteStateInfo:Ljava/lang/String; = "LteStateInfo"

.field public static final sLteUpdateResult:Ljava/lang/String; = "LteUpdateResult"

.field public static final sVoPS_Support:Ljava/lang/String; = "VoPS_Support"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
