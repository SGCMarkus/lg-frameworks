.class public final Lcom/android/ims/ImsStateProvider$VoLteState;
.super Ljava/lang/Object;
.source "ImsStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoLteState"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SERVICE_NONE:I = 0x0

.field public static final SERVICE_UC:I = 0x3

.field public static final SERVICE_VOIP:I = 0x1

.field public static final SERVICE_VT:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "volte_state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    nop

    .line 118
    const-string v0, "content://com.lge.ims.provider.ims_state/volte_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallState(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 131
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getCallState(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getCallState(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 135
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_state"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getServiceStatus(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 146
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getServiceStatus(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getServiceStatus(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 150
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "service_status"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVoLteProvisioned(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 159
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getVoLteProvisioned(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getVoLteProvisioned(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 163
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "volte_provisioned"

    invoke-static {p0, v0, v2, v1}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 166
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 167
    invoke-static {p1, v1}, Lcom/android/ims/ImsStateProvider;->access$400(II)I

    move-result v1

    .line 169
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FailOver :: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsStateProvider;->access$500(Ljava/lang/String;)V

    .line 171
    invoke-static {p0, v1}, Lcom/android/ims/ImsStateProvider$VoLteState;->getVoLteProvisionedForPhoneId(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 174
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 177
    .end local v1    # "phoneId":I
    :cond_1
    return v0
.end method

.method public static getVoLteProvisionedForPhoneId(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneId"    # I

    .line 181
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$600(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "volte_provisioned"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVtProvisioned(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 191
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getVtProvisioned(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getVtProvisioned(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 195
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "vt_provisioned"

    invoke-static {p0, v0, v2, v1}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 198
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 199
    invoke-static {p1, v1}, Lcom/android/ims/ImsStateProvider;->access$400(II)I

    move-result v1

    .line 201
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FailOver :: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsStateProvider;->access$500(Ljava/lang/String;)V

    .line 203
    invoke-static {p0, v1}, Lcom/android/ims/ImsStateProvider$VoLteState;->getVtProvisionedForPhoneId(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 206
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 209
    .end local v1    # "phoneId":I
    :cond_1
    return v0
.end method

.method public static getVtProvisionedForPhoneId(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneId"    # I

    .line 213
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$600(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vt_provisioned"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getWfcProvisioned(Landroid/content/ContentResolver;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 223
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getWfcProvisioned(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getWfcProvisioned(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .line 227
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$100(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string/jumbo v2, "wfc_provisioned"

    invoke-static {p0, v0, v2, v1}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 230
    .local v0, "result":I
    if-ne v0, v1, :cond_1

    .line 231
    invoke-static {p1, v1}, Lcom/android/ims/ImsStateProvider;->access$400(II)I

    move-result v1

    .line 233
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FailOver :: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsStateProvider;->access$500(Ljava/lang/String;)V

    .line 235
    invoke-static {p0, v1}, Lcom/android/ims/ImsStateProvider$VoLteState;->getWfcProvisionedForPhoneId(Landroid/content/ContentResolver;I)I

    move-result v2

    return v2

    .line 238
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 241
    .end local v1    # "phoneId":I
    :cond_1
    return v0
.end method

.method public static getWfcProvisionedForPhoneId(Landroid/content/ContentResolver;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneId"    # I

    .line 245
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$600(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wfc_provisioned"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 251
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/android/ims/ImsStateProvider;->access$200(Landroid/content/ContentResolver;Landroid/database/ContentObserver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static unregisterObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 255
    invoke-static {p0, p1}, Lcom/android/ims/ImsStateProvider;->access$300(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 256
    return-void
.end method
