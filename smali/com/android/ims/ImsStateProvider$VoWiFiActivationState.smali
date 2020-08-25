.class public final Lcom/android/ims/ImsStateProvider$VoWiFiActivationState;
.super Ljava/lang/Object;
.source "ImsStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoWiFiActivationState"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "vowifi_activation_state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 381
    nop

    .line 382
    const-string v0, "content://com.lge.ims.provider.ims_state/vowifi_activation_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsStateProvider$VoWiFiActivationState;->CONTENT_URI:Landroid/net/Uri;

    .line 381
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    return-object p0

    .line 417
    :cond_0
    move-object v0, p0

    .line 419
    .local v0, "op":Ljava/lang/String;
    const-string v1, "NJU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    const-string v0, "ORG"

    .line 423
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "%s-%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getState(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "slotId"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;

    .line 393
    invoke-static {p1, p2, p3}, Lcom/android/ims/ImsStateProvider$VoWiFiActivationState;->getWhereClause(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "where":Ljava/lang/String;
    sget-object v1, Lcom/android/ims/ImsStateProvider$VoWiFiActivationState;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/ims/ImsStateProvider;->access$700(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getWhereClause(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "slotId"    # I
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .line 407
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "slot_id"

    aput-object v3, v1, v2

    .line 408
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, "operator"

    aput-object v3, v1, v2

    .line 409
    invoke-static {p1, p2}, Lcom/android/ims/ImsStateProvider$VoWiFiActivationState;->getOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 407
    const-string v2, "%s=\'%d\' AND %s=\'%s\'"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 399
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoWiFiActivationState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/android/ims/ImsStateProvider;->access$200(Landroid/content/ContentResolver;Landroid/database/ContentObserver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static unregisterObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 403
    invoke-static {p0, p1}, Lcom/android/ims/ImsStateProvider;->access$300(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 404
    return-void
.end method
