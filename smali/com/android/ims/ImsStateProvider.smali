.class public final Lcom/android/ims/ImsStateProvider;
.super Ljava/lang/Object;
.source "ImsStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsStateProvider$VoWiFiActivationState;,
        Lcom/android/ims/ImsStateProvider$RoamingState;,
        Lcom/android/ims/ImsStateProvider$CallState;,
        Lcom/android/ims/ImsStateProvider$VoLteState;,
        Lcom/android/ims/ImsStateProvider$RegState;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.ims.provider.ims_state"

.field public static final COLUMN_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final COLUMN_CONNECTED_CALL_ON_WIFI:Ljava/lang/String; = "connected_call_on_wifi"

.field public static final COLUMN_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field public static final COLUMN_OPERATOR:Ljava/lang/String; = "operator"

.field public static final COLUMN_SERVICE_STATUS:Ljava/lang/String; = "service_status"

.field public static final COLUMN_SLOT_ID:Ljava/lang/String; = "slot_id"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN_SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final COLUMN_VOLTE_PROVISIONED:Ljava/lang/String; = "volte_provisioned"

.field public static final COLUMN_VOLTE_ROAMING:Ljava/lang/String; = "volte_roaming"

.field public static final COLUMN_VT_PROVISIONED:Ljava/lang/String; = "vt_provisioned"

.field public static final COLUMN_VT_ROAMING:Ljava/lang/String; = "vt_roaming"

.field public static final COLUMN_WFC_PROVISIONED:Ljava/lang/String; = "wfc_provisioned"

.field private static final DBG:Z

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final DEFAULT_SUB_ID:I = 0x7fffffff

.field private static final INVALID_VALUE:I = -0x1

.field private static final MSIM:Z

.field private static final MSIM_CONFIG:Ljava/lang/String;

.field public static final NETWORK_TYPE_WIFI:I = 0x1f

.field private static final PRIMARY_KEY_BASE:I = 0x1

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_INACTIVE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    nop

    .line 62
    const-string/jumbo v0, "persist.radio.multisim.config"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsStateProvider;->MSIM_CONFIG:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/android/ims/ImsStateProvider;->MSIM_CONFIG:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/android/ims/ImsStateProvider;->MSIM_CONFIG:Ljava/lang/String;

    const-string v2, "dsda"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Lcom/android/ims/ImsStateProvider;->MSIM_CONFIG:Ljava/lang/String;

    const-string/jumbo v2, "tsts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/ims/ImsStateProvider;->MSIM:Z

    .line 67
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/ims/ImsStateProvider;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 33
    invoke-static {p0, p1}, Lcom/android/ims/ImsStateProvider;->getDefaultSubId(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 33
    invoke-static {p0}, Lcom/android/ims/ImsStateProvider;->selectForSubId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentResolver;Landroid/database/ContentObserver;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/database/ContentObserver;
    .param p2, "x2"    # Landroid/net/Uri;

    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/ims/ImsStateProvider;->registerContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .line 33
    invoke-static {p0, p1}, Lcom/android/ims/ImsStateProvider;->unregisterContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 33
    invoke-static {p0, p1}, Lcom/android/ims/ImsStateProvider;->getPhoneId(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/android/ims/ImsStateProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 33
    invoke-static {p0}, Lcom/android/ims/ImsStateProvider;->selectForPhoneId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsStateProvider;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCallState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 441
    sget-object v0, Lcom/android/ims/ImsStateProvider$CallState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/ims/ImsStateProvider;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getDefaultSubId(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .line 452
    invoke-static {}, Lcom/android/ims/ImsStateProvider;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0

    .line 456
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->getSubId(I)I

    move-result v1

    .line 458
    .local v1, "subId":I
    invoke-static {v1}, Lcom/android/ims/ImsStateProvider;->isValidSubId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid default subscription; SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsStateProvider;->log(Ljava/lang/String;)V

    .line 460
    invoke-static {p0, p1, v0}, Lcom/android/ims/ImsStateProvider;->getSubId(Landroid/content/ContentResolver;Landroid/net/Uri;I)I

    move-result v1

    .line 463
    :cond_1
    return v1
.end method

.method private static getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 501
    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 506
    :cond_0
    const/4 v0, 0x0

    .line 509
    .local v0, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 511
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 513
    .local v1, "index":I
    if-gez v1, :cond_1

    move v2, p4

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 515
    .local v2, "value":I
    :goto_0
    sget-boolean v3, Lcom/android/ims/ImsStateProvider;->DBG:Z

    if-eqz v3, :cond_2

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInt :: column="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsStateProvider;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_2
    nop

    .line 526
    nop

    .line 527
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 520
    return v2

    .line 526
    .end local v1    # "index":I
    .end local v2    # "value":I
    :cond_3
    if-eqz v0, :cond_4

    .line 527
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 522
    :catchall_0
    move-exception v1

    .line 523
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsStateProvider;->loge(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 526
    .end local v1    # "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 527
    goto :goto_1

    .line 531
    :cond_4
    :goto_2
    return p4

    .line 526
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_5

    .line 527
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 502
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInt :: cr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->loge(Ljava/lang/String;)V

    .line 503
    return p4
.end method

.method private static getPhoneCount()I
    .locals 2

    .line 467
    invoke-static {}, Lcom/android/ims/ImsStateProvider;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x1

    return v0

    .line 471
    :cond_0
    sget-object v0, Lcom/android/ims/ImsStateProvider;->MSIM_CONFIG:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private static getPhoneId(II)I
    .locals 2
    .param p0, "subId"    # I
    .param p1, "defaultPhoneId"    # I

    .line 475
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 477
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/android/ims/ImsStateProvider;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 479
    :cond_0
    move v0, p1

    .line 481
    if-gez p1, :cond_1

    invoke-static {}, Lcom/android/ims/ImsStateProvider;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    const/4 v0, 0x0

    .line 486
    :cond_1
    return v0
.end method

.method private static getPrimaryKey(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 565
    if-gez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p0

    .line 566
    .local v0, "key":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static getRegState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 429
    sget-object v0, Lcom/android/ims/ImsStateProvider$RegState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/ims/ImsStateProvider;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRoamingState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 447
    sget-object v0, Lcom/android/ims/ImsStateProvider$RoamingState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/ims/ImsStateProvider;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getSubId(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 490
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 492
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 493
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 496
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private static getSubId(Landroid/content/ContentResolver;Landroid/net/Uri;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "phoneId"    # I

    .line 570
    nop

    .line 571
    invoke-static {p2}, Lcom/android/ims/ImsStateProvider;->getPrimaryKey(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->selectForPrimaryKey(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    const-string/jumbo v1, "sub_id"

    const/4 v2, -0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 435
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/ims/ImsStateProvider;->getInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static isMultiSimEnabled()Z
    .locals 1

    .line 575
    sget-boolean v0, Lcom/android/ims/ImsStateProvider;->MSIM:Z

    return v0
.end method

.method private static isValidSubId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .line 579
    if-ltz p0, :cond_0

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsStateProvider] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsStateProvider] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void
.end method

.method private static registerContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 537
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    nop

    .line 545
    return v0

    .line 538
    :catchall_0
    move-exception v0

    .line 539
    .local v0, "t":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/ims/ImsStateProvider;->DBG:Z

    if-eqz v1, :cond_0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsStateProvider;->log(Ljava/lang/String;)V

    .line 542
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static selectForPhoneId(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 588
    invoke-static {p0}, Lcom/android/ims/ImsStateProvider;->getPrimaryKey(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->selectForPrimaryKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectForPrimaryKey(I)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # I

    .line 584
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s=\'%d\'"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectForSubId(I)Ljava/lang/String;
    .locals 4
    .param p0, "subId"    # I

    .line 592
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "sub_id"

    aput-object v3, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s=\'%d\'"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unregisterContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 551
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    .line 553
    .local v0, "t":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/ims/ImsStateProvider;->DBG:Z

    if-eqz v1, :cond_0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsStateProvider;->log(Ljava/lang/String;)V

    .line 557
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method
