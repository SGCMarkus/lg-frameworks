.class public final Lcom/android/ims/ImsStateProvider$CallState;
.super Ljava/lang/Object;
.source "ImsStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallState"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "call_state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 261
    nop

    .line 262
    const-string v0, "content://com.lge.ims.provider.ims_state/call_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsStateProvider$CallState;->CONTENT_URI:Landroid/net/Uri;

    .line 261
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectedCallOnWifi(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 283
    sget-object v0, Lcom/android/ims/ImsStateProvider$CallState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$CallState;->getConnectedCallOnWifi(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getConnectedCallOnWifi(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 287
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connected_call_on_wifi"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getCallState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getState(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 270
    sget-object v0, Lcom/android/ims/ImsStateProvider$CallState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$CallState;->getState(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getState(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 274
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getCallState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 292
    sget-object v0, Lcom/android/ims/ImsStateProvider$CallState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/android/ims/ImsStateProvider;->access$200(Landroid/content/ContentResolver;Landroid/database/ContentObserver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static unregisterObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 296
    invoke-static {p0, p1}, Lcom/android/ims/ImsStateProvider;->access$300(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 297
    return-void
.end method
