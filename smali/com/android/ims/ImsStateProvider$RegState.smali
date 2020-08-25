.class public final Lcom/android/ims/ImsStateProvider$RegState;
.super Ljava/lang/Object;
.source "ImsStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegState"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "reg_state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    nop

    .line 76
    const-string v0, "content://com.lge.ims.provider.ims_state/reg_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsStateProvider$RegState;->CONTENT_URI:Landroid/net/Uri;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkType(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 98
    sget-object v0, Lcom/android/ims/ImsStateProvider$RegState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$RegState;->getNetworkType(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getNetworkType(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 102
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network_type"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getRegState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getState(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 84
    sget-object v0, Lcom/android/ims/ImsStateProvider$RegState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$RegState;->getState(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getState(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 88
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getRegState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 107
    sget-object v0, Lcom/android/ims/ImsStateProvider$RegState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/android/ims/ImsStateProvider;->access$200(Landroid/content/ContentResolver;Landroid/database/ContentObserver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static unregisterObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 111
    invoke-static {p0, p1}, Lcom/android/ims/ImsStateProvider;->access$300(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 112
    return-void
.end method
