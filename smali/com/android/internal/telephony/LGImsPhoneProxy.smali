.class public Lcom/android/internal/telephony/LGImsPhoneProxy;
.super Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;
.source "LGImsPhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;,
        Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;
    }
.end annotation


# static fields
.field private static final ACTION_DOD_LOG_SERVICE:Ljava/lang/String; = "com.lge.ims.action.DOD_LOG_SERVICE"

.field private static final BAL_ITEM_RADIO_ECC_PRIORITY:I = 0xf

.field private static final BAL_ITEM_RADIO_IMS_CALL_STATE:I = 0xb

.field private static final BAL_ITEM_RADIO_IMS_REG_STATE:I = 0xd

.field private static final BAL_ITEM_RADIO_LTE_RF_QUALITY:I = 0xe

.field private static final BAL_ITEM_RADIO_VOLTE_NV_ITEMS:I = 0xc

.field private static final CALL_TYPE_SIZE:I = 0x2

.field private static final CHIP_VENDOR:Ljava/lang/String;

.field private static final DEBUG_LOG:Z

.field private static final EVENT_CLEAR_NETWORK_INFO:I = 0x9d

.field private static final EVENT_DATA_ENABLED_CHANGED:I = 0x9e

.field private static final EVENT_IMS_BOOT_COMPLETED_SYNC_UP:I = 0x98

.field private static final EVENT_START_PHONE_IF:I = 0x9b

.field private static final EVENT_STOP_PHONE_IF:I = 0x9c

.field private static final EVENT_UPDATE_PHONE_ID:I = 0x97

.field public static final IMS_LTE_AC_BARRING_FOR_EMERGENCY:I = 0x69

.field public static final IMS_LTE_EMC_BS:I = 0x67

.field public static final IMS_LTE_EMERGENCY_SUPPORT:I = 0x68

.field public static final IMS_LTE_VOPS:I = 0x65

.field private static final IMS_NETWORK_AC_BARRING_FOR_EMERGENCY:I = 0x4

.field private static final IMS_NETWORK_CELL_IDENTITY:I = 0x9

.field private static final IMS_NETWORK_CELL_TYPE:I = 0xb

.field private static final IMS_NETWORK_EMC_BS:I = 0x2

.field private static final IMS_NETWORK_EMEGENCY_SUPPORT:I = 0x3

.field private static final IMS_NETWORK_MAX:I = 0xe

.field private static final IMS_NETWORK_MCC:I = 0x5

.field private static final IMS_NETWORK_MNC:I = 0x6

.field private static final IMS_NETWORK_PLMN1_SIB1:I = 0x7

.field private static final IMS_NETWORK_PLMN2_SIB1:I = 0x8

.field private static final IMS_NETWORK_RAT:I = 0x0

.field private static final IMS_NETWORK_SECTOR_ID:I = 0xc

.field private static final IMS_NETWORK_SUBNET_MASK:I = 0xd

.field private static final IMS_NETWORK_TAC:I = 0xa

.field private static final IMS_NETWORK_VOPS:I = 0x1

.field public static final IMS_NOT_REGISTERED:I = 0x0

.field public static final IMS_REGISTERED:I = 0x1

.field public static final IMS_REGISTERED_VOLTE_UNSUPPORTED:I = 0x2

.field private static final IMS_REG_FAILED:I = 0x10000

.field public static final IMS_WCDMA_VOPS:I = 0x66

.field private static final LOG_TAG:Ljava/lang/String; = "LGIMS_IPP"

.field private static final MODEM_INFO_IMS_REG_STATUS:I = 0x60039

.field private static final MODEM_INFO_IMS_RF_QUALITY:I = 0x6003e

.field private static final MODEM_INFO_SKT_VTCALL_STATE:I = 0x6002d

.field private static final MODEM_RP_DUALVOLTE_SUPPORTED:I = 0xd0072

.field private static final MODEM_RP_ECC_PRIORITY:I = 0xd0062

.field private static final MQI_HDVOICE_SETTING:I = 0x0

.field private static final MQI_IMS_RESPONSE:I = 0x1

.field private static final PHONE_STATE_1X_REGISTRATION:I = 0x2

.field private static final PHONE_STATE_CDMA_LOCK_INFO:I = 0x1

.field private static final PHONE_STATE_DATA_LIMIT_CHANGED:I = 0xa

.field private static final PHONE_STATE_DEVICE_LOG_EVENT_SETTINGS:I = 0x7

.field private static final PHONE_STATE_ICC_EF_READ_DONE:I = 0x3

.field private static final PHONE_STATE_IMS_PREF_STATE:I = 0x4

.field private static final PHONE_STATE_IMS_REG_CONTROL:I = 0x5

.field private static final PHONE_STATE_LTE_RF_QUALITY:I = 0x6

.field private static final PHONE_STATE_MODEM_ECC_PRIORITY:I = 0x8

.field private static final PHONE_STATE_USAT_ENVELOPE_RESPONSE:I = 0x9

.field private static final RESULT_FAILURE:[Ljava/lang/String;

.field private static final RIL_ICC_EF_LINEAR_FIXED_READ_DONE:I = 0x65

.field private static final RIL_ICC_EF_TRANSPARENT_READ_DONE:I = 0x66

.field private static final RIL_IMS_NETWORK_INFO:I = 0x76

.field private static final RIL_IMS_PREF_STATE_IND:I = 0x6e

.field private static final RIL_IMS_SET_E911_STATE:I = 0x68

.field private static final RIL_IMS_SSAC_IND:I = 0x6f

.field private static final RIL_IMS_STATUS_FOR_UICC:I = 0x69

.field private static final RIL_IMS_STAUS_SET_DONE_FOR_DAN:I = 0x67

.field private static final RIL_LTE_STATE:I = 0x70

.field private static final RIL_MODEM_BOOT_COMPLETED:I = 0x74

.field private static final RIL_REQUEST_IMS_NEW_REGISTRATION:I = 0x7a

.field private static final RIL_REQUEST_UPDATE_IMS_STATUS_W_ERROR:I = 0x7b

.field private static final RIL_RESPONSE:I = 0x64

.field private static final RIL_RESPONSE_ACB_SKIP:I = 0x6d

.field private static final RIL_RESPONSE_CALL:I = 0x79

.field private static final RIL_RESPONSE_ECC_PRIORITY:I = 0x72

.field private static final RIL_RESPONSE_ENVELOPE_MESSAGE:I = 0x73

.field private static final RIL_RESPONSE_LTE_RF_QUALITY:I = 0x71

.field private static final RIL_RESPONSE_REGISTRATION:I = 0x78

.field private static final RIL_RESPONSE_SCM_MODE:I = 0x77

.field private static final RIL_RESPONSE_TRM:I = 0x7c

.field private static final RIL_RESPONSE_UPDATE_REG_STATE:I = 0x6a

.field private static final RIL_RESPONSE_VOICE_DOMAIN:I = 0x6b

.field private static final RIL_RESPONSE_VOLTE_CALL_STATE:I = 0x6c

.field private static final RIL_RESPONSE_VSS_SET_IMS_STATUS:I = 0x75

.field private static final SYS_INFO_ACB_SKIP_NOTI:I = 0x1f

.field private static final SYS_INFO_ACCESS_NETWORK_INFO:I = 0x3

.field private static final SYS_INFO_APN:I = 0x9

.field private static final SYS_INFO_CALL:I = 0x29

.field private static final SYS_INFO_CLEAR_NETWORK_INFO:I = 0x2c

.field private static final SYS_INFO_CLOSE_DATA_CONNECTION:I = 0x5

.field private static final SYS_INFO_CS_CALL_PROTECTION:I = 0x6

.field private static final SYS_INFO_CS_CALL_STATE:I = 0xf

.field private static final SYS_INFO_ENABLE_DATA_FLUSH:I = 0x21

.field private static final SYS_INFO_EXIT_E911_MODE:I = 0x1d

.field private static final SYS_INFO_FDN_AVAILABILITY:I = 0x1e

.field private static final SYS_INFO_FDN_STATUS:I = 0x1c

.field private static final SYS_INFO_GET_FDN_LIST:I = 0x22

.field private static final SYS_INFO_GET_IN_CDMA_EMERGENCY_CALL:I = 0x2d

.field private static final SYS_INFO_GET_ISIM_STATE:I = 0x19

.field private static final SYS_INFO_GET_PREF_REG_STATE:I = 0x65

.field private static final SYS_INFO_ICC_EF_READ:I = 0x7

.field private static final SYS_INFO_IMS_BOOT_COMPLETED_SYNC_UP:I = 0x20

.field private static final SYS_INFO_IMS_REGISTRATION_STATE:I = 0x4

.field private static final SYS_INFO_IMS_REGISTRATION_STATE_FOR_MODEM:I = 0x12

.field private static final SYS_INFO_IMS_REGISTRATION_STATE_ON_INTERNET:I = 0xc8

.field private static final SYS_INFO_IMS_REG_INDICATOR:I = 0x16

.field private static final SYS_INFO_IMS_REG_STATUS_FOR_DAN:I = 0xb

.field private static final SYS_INFO_IMS_STATUS_FOR_UICC:I = 0x10

.field private static final SYS_INFO_LTE_NETWORK_FEATURE:I = 0x8

.field private static final SYS_INFO_MOBILE_QUALITY_INFO:I = 0x1a

.field private static final SYS_INFO_MODEM_INFO:I = 0x1

.field public static final SYS_INFO_MSIM_IMS_CALL_STATE:I = 0x26

.field private static final SYS_INFO_REGISTRATION:I = 0x28

.field private static final SYS_INFO_SCM_MODE:I = 0x2a

.field private static final SYS_INFO_SEND_ENVELOPE_MESSAGE:I = 0x24

.field public static final SYS_INFO_SEND_SECURE_CALL_INFO:I = 0x25

.field private static final SYS_INFO_SET_CFU_STATE:I = 0x14

.field private static final SYS_INFO_SET_E911_STATE:I = 0xd

.field private static final SYS_INFO_SET_E911_TELEPHONY:I = 0xe

.field private static final SYS_INFO_SET_IMS_CONFIG:I = 0x2e

.field private static final SYS_INFO_SET_IMS_STATUS:I = 0x68

.field private static final SYS_INFO_SET_PEER_SIM_SUSPEND:I = 0x1b

.field private static final SYS_INFO_SET_PHONE_ID:I = 0x18

.field private static final SYS_INFO_SINGNAL_STRENGTH:I = 0x15

.field private static final SYS_INFO_TRM:I = 0x2b

.field private static final SYS_INFO_UPDATE_ECALL_STATE:I = 0x23

.field private static final SYS_INFO_UPDATE_IMS_INITIAL_REG_STATE:I = 0x69

.field private static final SYS_INFO_UPDATE_IMS_STATUS_W_ERROR:I = 0x6a

.field private static final SYS_INFO_UPDATE_REG_STATE:I = 0x64

.field private static final SYS_INFO_UPDATE_VOICE_DOMAIN_STATE:I = 0x66

.field private static final SYS_INFO_UPDATE_VOLTE_CALL_STATE:I = 0x67

.field private static sCdmaLessEnabled:Z

.field private static sContext:Landroid/content/Context;

.field private static sHVoLteEnabled:Z

.field private static sImsPhoneProxy:Lcom/android/internal/telephony/LGImsPhoneProxy;

.field private static sMtkImsConfigSupported:Z


# instance fields
.field private mActivePhoneId:I

.field private mImsPhoneIFs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;",
            ">;"
        }
    .end annotation
.end field

.field private mIsimHandler:Lcom/android/internal/telephony/LGImsIsimHandler;

.field private final mLock:Ljava/lang/Object;

.field private mUiccHandler:Lcom/android/internal/telephony/LGImsUiccHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->DEBUG_LOG:Z

    .line 86
    const-string v0, "ro.vendor.lge.chip.vendor"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->CHIP_VENDOR:Ljava/lang/String;

    .line 303
    const-string v0, "FAILURE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->RESULT_FAILURE:[Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sImsPhoneProxy:Lcom/android/internal/telephony/LGImsPhoneProxy;

    .line 305
    sput-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sContext:Landroid/content/Context;

    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sHVoLteEnabled:Z

    .line 307
    sput-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sCdmaLessEnabled:Z

    .line 308
    sput-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sMtkImsConfigSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mIsimHandler:Lcom/android/internal/telephony/LGImsIsimHandler;

    .line 312
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mUiccHandler:Lcom/android/internal/telephony/LGImsUiccHandler;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mLock:Ljava/lang/Object;

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mActivePhoneId:I

    .line 317
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mImsPhoneIFs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 356
    sget-object v1, Lcom/android/internal/telephony/LGImsPhoneProxy;->CHIP_VENDOR:Ljava/lang/String;

    const-string v2, "mtk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    nop

    .line 358
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sMtkImsConfigSupported:Z

    .line 360
    :cond_1
    return-void
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->RESULT_FAILURE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->CHIP_VENDOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->isImsConfigRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .line 64
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->isHVoLteEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->isCdmaLessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->DEBUG_LOG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/LGImsPhoneProxy;)Lcom/android/internal/telephony/LGImsIsimHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mIsimHandler:Lcom/android/internal/telephony/LGImsIsimHandler;

    return-object v0
.end method

.method public static create(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 331
    const-string v0, "LGIMS_IPP"

    const-string v1, "LGImsPhoneProxy::create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getInstance()Lcom/android/internal/telephony/LGImsPhoneProxy;

    move-result-object v0

    .line 334
    .local v0, "imsPhoneProxy":Lcom/android/internal/telephony/LGImsPhoneProxy;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/LGImsPhoneProxy;->setPhones(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 335
    return-void
.end method

.method private getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .locals 1

    .line 699
    iget v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mActivePhoneId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    return-object v0
.end method

.method private getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .locals 3
    .param p1, "phoneId"    # I

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mImsPhoneIFs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 705
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-nez v0, :cond_0

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneIF is null; phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGIMS_IPP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    return-object v0
.end method

.method static getInstance()Lcom/android/internal/telephony/LGImsPhoneProxy;
    .locals 2

    .line 321
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sImsPhoneProxy:Lcom/android/internal/telephony/LGImsPhoneProxy;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/android/internal/telephony/LGImsPhoneProxy;

    invoke-direct {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sImsPhoneProxy:Lcom/android/internal/telephony/LGImsPhoneProxy;

    .line 323
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sImsPhoneProxy:Lcom/android/internal/telephony/LGImsPhoneProxy;

    const-string v1, "com.lge.ims.phone"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 326
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sImsPhoneProxy:Lcom/android/internal/telephony/LGImsPhoneProxy;

    return-object v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p1, "phoneId"    # I

    .line 713
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 714
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static isCdmaLessEnabled()Z
    .locals 1

    .line 342
    sget-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sCdmaLessEnabled:Z

    return v0
.end method

.method private static isHVoLteEnabled()Z
    .locals 1

    .line 338
    sget-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sHVoLteEnabled:Z

    return v0
.end method

.method private static isImsConfigRequired()Z
    .locals 1

    .line 346
    sget-boolean v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->sMtkImsConfigSupported:Z

    return v0
.end method

.method private static isImsSmsServiceRequired()Z
    .locals 2

    .line 351
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy;->CHIP_VENDOR:Ljava/lang/String;

    const-string v1, "mtk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addNetworkInfoCallback(ILcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 552
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->addNetworkInfoCallback(Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V

    .line 555
    :cond_0
    return-void
.end method

.method public fetchFDNList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "contentUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 718
    const-string v0, "LGIMS_IPP"

    const/4 v1, 0x0

    .line 719
    .local v1, "fdnCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 720
    .local v2, "nCursorCount":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 721
    .local v9, "fdnContentUri":Landroid/net/Uri;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v3

    .line 723
    .local v10, "fdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/LGImsPhoneProxy;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    .line 724
    if-eqz v1, :cond_1

    .line 725
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v2, v3

    .line 726
    if-eqz v2, :cond_1

    .line 727
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 729
    :cond_0
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 737
    :cond_1
    if-eqz v1, :cond_2

    .line 738
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 737
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 733
    :catch_0
    move-exception v3

    .line 734
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Exception while getting FDN list from Provider"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 738
    goto :goto_0

    .line 742
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/LGImsPhoneProxy;->DEBUG_LOG:Z

    if-eqz v3, :cond_3

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchFDNList:FDN List count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_3
    return-object v10

    .line 737
    :goto_2
    if-eqz v1, :cond_4

    .line 738
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getAllCellInfo(I)Ljava/util/List;
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 456
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 457
    return-object v1

    .line 461
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 462
    :catchall_0
    move-exception v2

    .line 463
    .local v2, "t":Ljava/lang/Throwable;
    return-object v1
.end method

.method public getHdVoiceSetting()I
    .locals 2

    .line 665
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 666
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getHdVoiceSetting()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getImsRegIndicator()I
    .locals 2

    .line 659
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 660
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getImsRegIndicator()I

    move-result v1

    goto :goto_0

    .line 661
    :cond_0
    const/4 v1, 0x2

    .line 660
    :goto_0
    return v1
.end method

.method public getImsResponse()Ljava/lang/String;
    .locals 2

    .line 670
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 671
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getImsResponse()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getIsimInterface(I)Lcom/android/internal/telephony/ILGImsIsim;
    .locals 1
    .param p1, "slotId"    # I

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mIsimHandler:Lcom/android/internal/telephony/LGImsIsimHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimInterface(I)Lcom/android/internal/telephony/ILGImsIsim;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPcscfAddress(ILjava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 469
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 470
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSysInfo(IILjava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "param"    # I
    .param p3, "paramEx"    # Ljava/lang/String;

    .line 421
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 422
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getSysInfo(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSysInfoById(IILjava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "param"    # I
    .param p3, "paramEx"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 475
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 476
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getSysInfo(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getUiccInterface(I)Lcom/android/internal/telephony/ILGImsUicc;
    .locals 1
    .param p1, "slotId"    # I

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mUiccHandler:Lcom/android/internal/telephony/LGImsUiccHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler;->getUiccInterface(I)Lcom/android/internal/telephony/ILGImsUicc;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isNetworkInfoNotificationEnabled(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 532
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 533
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoNotificationEnabled()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public removeNetworkInfoCallback(ILcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    .line 559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 561
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->removeNetworkInfoCallback(Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V

    .line 564
    :cond_0
    return-void
.end method

.method public requestCellInfo(IILcom/android/internal/telephony/ILGImsNetworkInfoCallback;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    .param p4, "enforceUpdate"    # Z

    .line 539
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 541
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->requestCellInfo(ILcom/android/internal/telephony/ILGImsNetworkInfoCallback;Z)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 545
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/LGImsPhoneProxy;->RESULT_FAILURE:[Ljava/lang/String;

    return-object v1
.end method

.method public requestImsRegistration(I)V
    .locals 1
    .param p1, "controlType"    # I

    .line 681
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 683
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->requestImsRegControl(I)V

    .line 686
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    .line 445
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 447
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setCallback(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;)V

    .line 450
    :cond_0
    return-void
.end method

.method public setCallbackById(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    .param p2, "phoneId"    # I

    .line 499
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 501
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setCallback(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;)V

    .line 504
    :cond_0
    return-void
.end method

.method public setOemSsaHdvAlarmEvent([B)Z
    .locals 5
    .param p1, "mask"    # [B

    .line 615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.ims.action.DOD_LOG_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "LGIMS_IPP"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 618
    sget-boolean v3, Lcom/android/internal/telephony/LGImsPhoneProxy;->DEBUG_LOG:Z

    if-eqz v3, :cond_2

    .line 619
    const-string v3, "setOemSsatHdvAlarmEvent failed.."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return v2

    .line 623
    :cond_0
    sget-boolean v3, Lcom/android/internal/telephony/LGImsPhoneProxy;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send OemSsaHdvAlarmEvent Intent: length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_1
    array-length v1, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    aget-byte v1, p1, v2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 628
    aget-byte v1, p1, v2

    const-string v2, "byte_array_param"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 629
    sget-object v1, Lcom/android/internal/telephony/LGImsPhoneProxy;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 630
    return v3

    .line 633
    :cond_2
    return v2
.end method

.method public setOemUknightHdvAlarmEvent([B)Z
    .locals 6
    .param p1, "mask"    # [B

    .line 638
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 639
    return v0

    .line 642
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 643
    return v0

    .line 646
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v1

    .line 648
    .local v1, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v1, :cond_2

    .line 649
    const/4 v3, 0x7

    const/4 v4, 0x2

    aget-byte v0, p1, v0

    const-string v5, ""

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$100(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 651
    return v2

    .line 654
    :cond_2
    return v0
.end method

.method public setPhoneId(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mImsPhoneIFs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 574
    .local v0, "imsPhoneCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneId :: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mActivePhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imsPIFCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGIMS_IPP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 578
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mImsPhoneIFs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 580
    .local v3, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-nez v3, :cond_0

    .line 581
    goto :goto_2

    .line 584
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 586
    .local v4, "handler":Landroid/os/Handler;
    if-nez v4, :cond_1

    .line 587
    goto :goto_2

    .line 590
    :cond_1
    const/16 v5, 0x9b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 591
    const-string v6, "remove old EVENT_START_PHONE_IF"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    :cond_2
    const/16 v6, 0x9c

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 595
    const-string v7, "remove old EVENT_STOP_PHONE_IF"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 599
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 601
    .local v7, "msg":Landroid/os/Message;
    if-ne v1, p1, :cond_4

    .line 602
    iput v5, v7, Landroid/os/Message;->what:I

    goto :goto_1

    .line 604
    :cond_4
    iput v6, v7, Landroid/os/Message;->what:I

    .line 607
    :goto_1
    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    .end local v3    # "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .end local v4    # "handler":Landroid/os/Handler;
    .end local v7    # "msg":Landroid/os/Message;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    .end local v1    # "index":I
    :cond_5
    iput p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mActivePhoneId:I

    .line 611
    return-void
.end method

.method public setPhones(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 372
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/LGImsPhoneProxy;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    .line 373
    const-string v1, "LGIMS_IPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhones :: phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , ci = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    array-length v1, p2

    if-lez v1, :cond_6

    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 380
    :cond_2
    sput-object p1, Lcom/android/internal/telephony/LGImsPhoneProxy;->sContext:Landroid/content/Context;

    .line 381
    invoke-static {p1}, Lcom/android/ims/ImsFeatureProvider;->hasHVoLteForPhone(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/LGImsPhoneProxy;->sHVoLteEnabled:Z

    .line 382
    invoke-static {p1}, Lcom/android/ims/ImsFeatureProvider;->hasCdmaLessForPhone(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/LGImsPhoneProxy;->sCdmaLessEnabled:Z

    .line 384
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 385
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 387
    .local v3, "phoneId":I
    const-string v4, "LGIMS_IPP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v4, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    aget-object v5, p2, v2

    aget-object v6, p3, v2

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;-><init>(Lcom/android/internal/telephony/LGImsPhoneProxy;ILcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 390
    .local v4, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mImsPhoneIFs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-virtual {v4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->init()V

    .line 384
    .end local v3    # "phoneId":I
    .end local v4    # "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    .end local v2    # "i":I
    :cond_3
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mActivePhoneId:I

    .line 406
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mIsimHandler:Lcom/android/internal/telephony/LGImsIsimHandler;

    if-eqz v1, :cond_4

    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mIsimHandler:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->dispose()V

    .line 410
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mUiccHandler:Lcom/android/internal/telephony/LGImsUiccHandler;

    if-eqz v1, :cond_5

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mUiccHandler:Lcom/android/internal/telephony/LGImsUiccHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsUiccHandler;->dispose()V

    .line 414
    :cond_5
    new-instance v1, Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mIsimHandler:Lcom/android/internal/telephony/LGImsIsimHandler;

    .line 415
    new-instance v1, Lcom/android/internal/telephony/LGImsUiccHandler;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/LGImsUiccHandler;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy;->mUiccHandler:Lcom/android/internal/telephony/LGImsUiccHandler;

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 377
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    .line 366
    :cond_7
    :goto_2
    sget-boolean v1, Lcom/android/internal/telephony/LGImsPhoneProxy;->DEBUG_LOG:Z

    if-eqz v1, :cond_8

    .line 367
    const-string v1, "LGIMS_IPP"

    const-string v2, "setPhones :: invalid phone or ci"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_8
    monitor-exit v0

    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSysInfo(IIILjava/lang/String;)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "paramEx"    # Ljava/lang/String;

    .line 427
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 429
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setSysInfo(IIILjava/lang/String;)V

    .line 432
    :cond_0
    return-void
.end method

.method public setSysInfoById(IIILjava/lang/String;I)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "paramEx"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .line 481
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 483
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setSysInfo(IIILjava/lang/String;)V

    .line 486
    :cond_0
    return-void
.end method

.method public setSysInfoEx(I[I[Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "param"    # [I
    .param p3, "paramEx"    # [Ljava/lang/String;

    .line 436
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getActiveImsPhoneIF()Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 438
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setSysInfoEx(I[I[Ljava/lang/String;)V

    .line 441
    :cond_0
    return-void
.end method

.method public setSysInfoExById(I[I[Ljava/lang/String;I)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "param"    # [I
    .param p3, "paramEx"    # [Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 490
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 492
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setSysInfoEx(I[I[Ljava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method public sizeOfBerTlvLen(B)I
    .locals 2
    .param p1, "firstByteOfLen"    # B

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "size":I
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    .line 691
    const/4 v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    const/16 v1, 0x81

    if-ne p1, v1, :cond_1

    .line 693
    const/4 v0, 0x2

    .line 695
    :cond_1
    :goto_0
    return v0
.end method

.method public start(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 510
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->startPhoneIF()V

    .line 513
    :cond_0
    return-void
.end method

.method public stop(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 517
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsPhoneIF(I)Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    move-result-object v0

    .line 519
    .local v0, "imsPhoneIF":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    if-eqz v0, :cond_0

    .line 520
    invoke-static {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V

    .line 522
    :cond_0
    return-void
.end method
