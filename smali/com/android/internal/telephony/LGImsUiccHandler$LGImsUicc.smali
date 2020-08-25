.class final Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;
.super Lcom/android/internal/telephony/ILGImsUicc$Stub;
.source "LGImsUiccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsUiccHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGImsUicc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
    }
.end annotation


# static fields
.field private static final MAX_SMSP_ADDRESS:I = 0xc

.field private static final MAX_SMSP_NON_ALPHA_ID:I = 0x1c


# instance fields
.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

.field final synthetic this$0:Lcom/android/internal/telephony/LGImsUiccHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsUiccHandler;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/ILGImsUicc$Stub;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 165
    new-instance p1, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;Lcom/android/internal/telephony/LGImsUiccHandler$1;)V

    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    .line 166
    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getRecordBytesList(I)Ljava/util/List;
    .locals 3
    .param p1, "fileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 324
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$500(II)Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    move-result-object v0

    .line 326
    .local v0, "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    invoke-static {v0}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->access$600(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->loadLinearFixedAllAsBytes(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->loadTransparent(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)[B

    move-result-object v1

    .line 331
    .local v1, "result":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v2, "resultAsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object v2

    .line 332
    .end local v2    # "resultAsList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getEccList()Ljava/lang/String;
    .locals 7

    .line 170
    const/16 v0, 0x6fb7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->getRecordBytesList(I)Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "eccRecords":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez v0, :cond_0

    .line 173
    const/4 v1, 0x0

    return-object v1

    .line 176
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string v1, ""

    return-object v1

    .line 180
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 185
    .local v3, "data":[B
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "efEcc":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_2
    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v3, v5, v6}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$200([BII)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "category":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 195
    const-string v5, "00"

    .line 198
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .end local v3    # "data":[B
    .end local v4    # "efEcc":Ljava/lang/String;
    .end local v5    # "category":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$300()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EccList :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$400(Ljava/lang/String;)V

    .line 207
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getRecordBytes(I)[B
    .locals 3
    .param p1, "fileId"    # I

    .line 314
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$500(II)Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    move-result-object v0

    .line 316
    .local v0, "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    invoke-static {v0}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->access$600(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->loadLinearFixedAsBytes(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)[B

    move-result-object v1

    return-object v1

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->loadTransparent(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)[B

    move-result-object v1

    return-object v1
.end method

.method public getRecordString(I)Ljava/lang/String;
    .locals 3
    .param p1, "fileId"    # I

    .line 284
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$500(II)Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    move-result-object v0

    .line 286
    .local v0, "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    invoke-static {v0}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->access$600(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->loadLinearFixed(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->loadTransparentAsString(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRecordStringArray(I)[Ljava/lang/String;
    .locals 4
    .param p1, "fileId"    # I

    .line 295
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$500(II)Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    move-result-object v1

    .line 297
    .local v1, "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    invoke-static {v1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->access$600(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->loadLinearFixedAll(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mRunner:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->loadTransparentAsString(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 303
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 304
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 305
    return-object v2

    .line 308
    .end local v2    # "result":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSimState()Ljava/lang/String;
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    .line 214
    .local v0, "simState":I
    packed-switch v0, :pswitch_data_0

    .line 233
    const-string v1, "UNKNOWN"

    return-object v1

    .line 220
    :pswitch_0
    const-string v1, "LOADED"

    return-object v1

    .line 231
    :pswitch_1
    const-string v1, "CARD_RESTRICTED"

    return-object v1

    .line 229
    :pswitch_2
    const-string v1, "CARD_IO_ERROR"

    return-object v1

    .line 218
    :pswitch_3
    const-string v1, "NOT_READY"

    return-object v1

    .line 222
    :pswitch_4
    const-string v1, "READY"

    return-object v1

    .line 227
    :pswitch_5
    const-string v1, "LOCKED"

    return-object v1

    .line 216
    :pswitch_6
    const-string v1, "ABSENT"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSmscAddress()Ljava/lang/String;
    .locals 9

    .line 239
    const/16 v0, 0x6f42

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->getRecordBytes(I)[B

    move-result-object v0

    .line 241
    .local v0, "smsp":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 242
    return-object v1

    .line 245
    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1c

    .line 247
    .local v2, "nonAlphaStartPos":I
    if-lez v2, :cond_3

    .line 248
    aget-byte v3, v0, v2

    .line 251
    .local v3, "paramIndicator":I
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 252
    add-int/lit8 v4, v2, 0x1

    const/16 v6, 0xc

    add-int/2addr v4, v6

    .line 253
    .local v4, "smscStartPos":I
    new-array v7, v6, [B

    .line 256
    .local v7, "smsc":[B
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v0, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    nop

    .line 262
    aget-byte v6, v7, v8

    .line 264
    .local v6, "len":I
    if-gtz v6, :cond_1

    .line 265
    return-object v1

    .line 268
    :cond_1
    add-int/lit8 v1, v6, -0x1

    invoke-static {v7, v5, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "smscAddress":Ljava/lang/String;
    const/4 v5, 0x1

    aget-byte v8, v7, v5

    and-int/lit8 v8, v8, 0x70

    shr-int/lit8 v8, v8, 0x4

    if-ne v8, v5, :cond_2

    .line 272
    const-string v5, "+"

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 275
    :cond_2
    return-object v1

    .line 257
    .end local v1    # "smscAddress":Ljava/lang/String;
    .end local v6    # "len":I
    :catchall_0
    move-exception v5

    .line 258
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSmsAddress :: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$400(Ljava/lang/String;)V

    .line 259
    return-object v1

    .line 279
    .end local v3    # "paramIndicator":I
    .end local v4    # "smscStartPos":I
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v7    # "smsc":[B
    :cond_3
    return-object v1
.end method
