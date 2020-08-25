.class public Lcom/android/internal/telephony/LGImsIsimHandler;
.super Ljava/lang/Object;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;,
        Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;,
        Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;,
        Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;,
        Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    }
.end annotation


# static fields
.field public static final ACTION_ISIM_STATE_CHANGED:Ljava/lang/String; = "com.lge.ims.ISIM_STATE_CHANGED"

.field private static final DBG:Z

.field public static final EF_GBABP:I = 0x6fd5

.field public static final EXTRA_ISIM_STATE:Ljava/lang/String; = "isimState"

.field private static final INTENT_VALUE_ICC_REMOVED:Ljava/lang/String; = "REMOVED"

.field private static final INVALID_ID:I = -0x1

.field private static final ISIM_SESSION_ID:I = 0x4953494d

.field public static final ISIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field public static final ISIM_STATE_NOT_PRESENT:Ljava/lang/String; = "NOT_PRESENT"

.field public static final ISIM_STATE_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final ISIM_STATE_REFRESH_COMPLETED:Ljava/lang/String; = "REFRESH_COMPLETED"

.field public static final ISIM_STATE_REFRESH_STARTED:Ljava/lang/String; = "REFRESH_STARTED"

.field public static final KEY_GBA_AUTS:Ljava/lang/String; = "auts"

.field public static final KEY_GBA_RES:Ljava/lang/String; = "res"

.field private static final TAG:Ljava/lang/String; = "LGImsIsimHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataSubObserver:Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;

.field private final mIsimStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSimEnabled:Z

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/LGImsIsimHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 79
    new-instance v1, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    .line 80
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mDataSubObserver:Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mMultiSimEnabled:Z

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 88
    const/4 v1, 0x1

    .line 89
    .local v1, "phoneCount":I
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 91
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mMultiSimEnabled:Z

    .line 93
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 96
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 97
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    invoke-direct {v6, p0, v3}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler;I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 112
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    .line 114
    .local v5, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v5}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->initializeState()V

    .line 111
    .end local v5    # "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    .end local v4    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v4

    .line 121
    .local v4, "defaultIsimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    new-instance v5, Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mDataSubObserver:Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;

    .line 122
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 123
    const-string v6, "multi_sim_data_call"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mDataSubObserver:Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;

    .line 122
    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    .end local v4    # "defaultIsimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LGImsIsimHandler;I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LGImsIsimHandler;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;

    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/LGImsIsimHandler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->isIccRemoved(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/LGImsIsimHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->handleSimRemoved(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/LGImsIsimHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->handleIsimRefreshStarted(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/LGImsIsimHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;

    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->handleDataSubscriptionSettingsChanged()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 34
    invoke-static {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->getSubId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 34
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler;->broadcastIsimState(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/LGImsIsimHandler;I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    invoke-static {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->lastSubString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/LGImsIsimHandler;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler;->setIccState(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/LGImsIsimHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->handleSimReady(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/LGImsIsimHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->handleSimLoaded(I)V

    return-void
.end method

.method private static broadcastIsimState(Ljava/lang/String;II)V
    .locals 3
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.ims.ISIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    const-string v1, "isimState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    sget-boolean v1, Lcom/android/internal/telephony/LGImsIsimHandler;->DBG:Z

    if-eqz v1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMS-ISIM][Phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Intent :: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 356
    :cond_0
    const/4 v1, -0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 358
    return-void
.end method

.method private static getDefaultDataSubId()I
    .locals 1

    .line 361
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method private getIsimApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "phoneId"    # I

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    .locals 4
    .param p1, "phoneId"    # I

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    return-object v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 188
    .local v0, "sc":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    move v1, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 191
    .local v1, "defaultPhoneId":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    return-object v2
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p1, "phoneId"    # I

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mPhones:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 196
    return-object v1

    .line 199
    :cond_0
    if-ltz p1, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    aget-object v0, v0, p1

    return-object v0

    .line 200
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static getPhoneId(I)I
    .locals 1
    .param p0, "subId"    # I

    .line 365
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private getPhoneIdUsingSlotId(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    const/4 v0, -0x1

    if-gez p1, :cond_0

    .line 209
    return v0

    .line 212
    :cond_0
    const/4 v1, 0x2

    .line 213
    .local v1, "phoneCount":I
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 215
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 219
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 220
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    .line 222
    .local v4, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v4, :cond_3

    .line 223
    invoke-virtual {v4}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/LGImsIsimHandler;->getSlotId(I)I

    move-result v5

    .line 225
    .local v5, "mySlotId":I
    if-ltz v5, :cond_3

    if-eq v5, p1, :cond_2

    .line 226
    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPhoneId()I

    move-result v0

    return v0

    .line 219
    .end local v4    # "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    .end local v5    # "mySlotId":I
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v3    # "i":I
    :cond_4
    return v0

    .line 236
    .end local v1    # "phoneCount":I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 237
    .local v0, "sc":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    return v1
.end method

.method private static getSlotId(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 369
    invoke-static {p0}, Lcom/android/internal/telephony/LGImsIsimHandler;->getSubId(I)I

    move-result v0

    .line 370
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    return v1
.end method

.method private static getSubId(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 374
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 375
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    :goto_0
    return v1
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleDataSubscriptionSettingsChanged()V
    .locals 5

    .line 245
    invoke-static {}, Lcom/android/internal/telephony/LGImsIsimHandler;->getDefaultDataSubId()I

    move-result v0

    .line 246
    .local v0, "subId":I
    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->getPhoneId(I)I

    move-result v1

    .line 247
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v2

    .line 249
    .local v2, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IMS-ISIM] handleDataSubscriptionSettingsChanged :: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 252
    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {v2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const-string v3, "LOADED"

    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->broadcastIsimState(Ljava/lang/String;II)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getState()I

    move-result v3

    if-nez v3, :cond_2

    .line 256
    invoke-virtual {v2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const-string v3, "NOT_READY"

    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->broadcastIsimState(Ljava/lang/String;II)V

    goto :goto_0

    .line 259
    :cond_1
    const-string v3, "NOT_PRESENT"

    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->broadcastIsimState(Ljava/lang/String;II)V

    .line 263
    :cond_2
    :goto_0
    return-void
.end method

.method private handleIsimRefreshStarted(I)V
    .locals 3
    .param p1, "slotId"    # I

    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getPhoneIdUsingSlotId(I)I

    move-result v0

    .line 268
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMS-ISIM] ISIM refresh started; slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v1

    .line 272
    .local v1, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/16 v2, 0xc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 276
    :cond_0
    const-string v2, "[IMS-ISIM] ISIM is not loaded"

    invoke-static {v2}, Lcom/android/internal/telephony/LGImsIsimHandler;->log(Ljava/lang/String;)V

    .line 279
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSimLoaded(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 282
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v0

    .line 284
    .local v0, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v0, :cond_0

    .line 285
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 287
    :cond_0
    return-void
.end method

.method private handleSimReady(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 290
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v0

    .line 292
    .local v0, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v0, :cond_0

    .line 293
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 295
    :cond_0
    return-void
.end method

.method private handleSimRemoved(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 298
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v0

    .line 300
    .local v0, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v0, :cond_0

    .line 301
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 303
    :cond_0
    return-void
.end method

.method private isIccRemoved(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 310
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v0

    .line 312
    .local v0, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v0, :cond_1

    .line 313
    nop

    .line 314
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getIccState()Ljava/lang/String;

    move-result-object v1

    .line 313
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "REMOVED"

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getOldIccState()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getOldIccState()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    return v3

    .line 320
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getIccState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    return v3

    .line 325
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isMultiSimEnabled()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mMultiSimEnabled:Z

    return v0
.end method

.method private static lastSubString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 379
    if-nez p0, :cond_0

    .line 380
    const-string v0, "(null)"

    return-object v0

    .line 381
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const-string v0, "(empty)"

    return-object v0

    .line 384
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "index":I
    :goto_0
    if-gez v0, :cond_3

    move-object v1, p0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 390
    const-string v0, "LGImsIsimHandler"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method private setIccState(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 329
    if-nez p2, :cond_0

    .line 330
    return-void

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v0

    .line 335
    .local v0, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setIccState(Ljava/lang/String;)V

    .line 338
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mSimStateReceiver:Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mIsimStates:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    .line 137
    .local v1, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->dispose()V

    .line 134
    .end local v1    # "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mDataSubObserver:Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mDataSubObserver:Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler;->mDataSubObserver:Lcom/android/internal/telephony/LGImsIsimHandler$DataSubscriptionObserver;

    .line 146
    :cond_3
    return-void
.end method

.method public getIsimInterface(I)Lcom/android/internal/telephony/ILGImsIsim;
    .locals 2
    .param p1, "phoneId"    # I

    .line 149
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v0

    .line 150
    .local v0, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getIsimInterface()Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getIsimState(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimStateObject(I)Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;

    move-result-object v0

    .line 156
    .local v0, "isimState":Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
    const-string v1, "NOT_PRESENT"

    if-nez v0, :cond_0

    .line 157
    return-object v1

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimPresent()Z

    move-result v2

    const-string v3, "NOT_READY"

    if-nez v2, :cond_2

    .line 159
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimAppDetectedAfterSimInserted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    return-object v3

    .line 162
    :cond_1
    return-object v1

    .line 166
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getState()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 174
    return-object v1

    .line 172
    :cond_3
    const-string v1, "REFRESH_STARTED"

    return-object v1

    .line 170
    :cond_4
    const-string v1, "LOADED"

    return-object v1

    .line 168
    :cond_5
    return-object v3
.end method
