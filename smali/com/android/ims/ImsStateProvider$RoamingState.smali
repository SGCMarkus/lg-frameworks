.class public final Lcom/android/ims/ImsStateProvider$RoamingState;
.super Ljava/lang/Object;
.source "ImsStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoamingState"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "roaming_state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    nop

    .line 303
    const-string v0, "content://com.lge.ims.provider.ims_state/roaming_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsStateProvider$RoamingState;->CONTENT_URI:Landroid/net/Uri;

    .line 302
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVoLteRoaming(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 311
    sget-object v0, Lcom/android/ims/ImsStateProvider$RoamingState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$RoamingState;->getVoLteRoaming(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getVoLteRoaming(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 315
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "volte_roaming"

    invoke-static {p0, v0, v2, v1}, Lcom/android/ims/ImsStateProvider;->getRoamingState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 318
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 319
    invoke-static {p1, v1}, Lcom/android/ims/ImsStateProvider;->access$400(II)I

    move-result v1

    .line 321
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FailOver :: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsStateProvider;->access$500(Ljava/lang/String;)V

    .line 323
    invoke-static {p0, v1}, Lcom/android/ims/ImsStateProvider$RoamingState;->getVoLteRoamingForPhoneId(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 326
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 329
    .end local v1    # "phoneId":I
    :cond_1
    return v0
.end method

.method public static getVoLteRoamingForPhoneId(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneId"    # I

    .line 333
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$600(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "volte_roaming"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getRoamingState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVtRoaming(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 343
    sget-object v0, Lcom/android/ims/ImsStateProvider$RoamingState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$RoamingState;->getVtRoaming(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getVtRoaming(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 347
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "vt_roaming"

    invoke-static {p0, v0, v2, v1}, Lcom/android/ims/ImsStateProvider;->getRoamingState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 350
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 351
    invoke-static {p1, v1}, Lcom/android/ims/ImsStateProvider;->access$400(II)I

    move-result v1

    .line 353
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FailOver :: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsStateProvider;->access$500(Ljava/lang/String;)V

    .line 355
    invoke-static {p0, v1}, Lcom/android/ims/ImsStateProvider$RoamingState;->getVtRoamingForPhoneId(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 358
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 361
    .end local v1    # "phoneId":I
    :cond_1
    return v0
.end method

.method public static getVtRoamingForPhoneId(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneId"    # I

    .line 365
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$600(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vt_roaming"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getRoamingState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 371
    sget-object v0, Lcom/android/ims/ImsStateProvider$RoamingState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/android/ims/ImsStateProvider;->access$200(Landroid/content/ContentResolver;Landroid/database/ContentObserver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static unregisterObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 375
    invoke-static {p0, p1}, Lcom/android/ims/ImsStateProvider;->access$300(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 376
    return-void
.end method
