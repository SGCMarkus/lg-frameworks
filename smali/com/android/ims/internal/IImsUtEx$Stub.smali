.class public abstract Lcom/android/ims/internal/IImsUtEx$Stub;
.super Landroid/os/Binder;
.source "IImsUtEx.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUtEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUtEx"

.field static final TRANSACTION_isServiceBlockedByNetwork:I = 0x12

.field static final TRANSACTION_queryCLIPForLine:I = 0x6

.field static final TRANSACTION_queryCLIRForLine:I = 0x5

.field static final TRANSACTION_queryCOLPForLine:I = 0x8

.field static final TRANSACTION_queryCOLRForLine:I = 0x7

.field static final TRANSACTION_queryCallBarringForLine:I = 0x2

.field static final TRANSACTION_queryCallForwardForLine:I = 0x3

.field static final TRANSACTION_queryCallWaitingForLine:I = 0x4

.field static final TRANSACTION_transactForLine:I = 0x9

.field static final TRANSACTION_updateCLIPForLine:I = 0xe

.field static final TRANSACTION_updateCLIRForLine:I = 0xd

.field static final TRANSACTION_updateCOLPForLine:I = 0x10

.field static final TRANSACTION_updateCOLRForLine:I = 0xf

.field static final TRANSACTION_updateCallBarringForLine:I = 0xa

.field static final TRANSACTION_updateCallForwardForLine:I = 0xb

.field static final TRANSACTION_updateCallWaitingForLine:I = 0xc

.field static final TRANSACTION_updateExtendCallBarring:I = 0x1

.field static final TRANSACTION_updateExtendCallBarringForLine:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 152
    const-string v0, "com.android.ims.internal.IImsUtEx"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 160
    if-nez p0, :cond_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    const-string v0, "com.android.ims.internal.IImsUtEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 164
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsUtEx;

    if-eqz v1, :cond_1

    .line 165
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsUtEx;

    return-object v1

    .line 167
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsUtEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUtEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/ims/internal/IImsUtEx;
    .locals 1

    .line 1031
    sget-object v0, Lcom/android/ims/internal/IImsUtEx$Stub$Proxy;->sDefaultImpl:Lcom/android/ims/internal/IImsUtEx;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 176
    packed-switch p0, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 248
    :pswitch_0
    const-string v0, "isServiceBlockedByNetwork"

    return-object v0

    .line 244
    :pswitch_1
    const-string/jumbo v0, "updateExtendCallBarringForLine"

    return-object v0

    .line 240
    :pswitch_2
    const-string/jumbo v0, "updateCOLPForLine"

    return-object v0

    .line 236
    :pswitch_3
    const-string/jumbo v0, "updateCOLRForLine"

    return-object v0

    .line 232
    :pswitch_4
    const-string/jumbo v0, "updateCLIPForLine"

    return-object v0

    .line 228
    :pswitch_5
    const-string/jumbo v0, "updateCLIRForLine"

    return-object v0

    .line 224
    :pswitch_6
    const-string/jumbo v0, "updateCallWaitingForLine"

    return-object v0

    .line 220
    :pswitch_7
    const-string/jumbo v0, "updateCallForwardForLine"

    return-object v0

    .line 216
    :pswitch_8
    const-string/jumbo v0, "updateCallBarringForLine"

    return-object v0

    .line 212
    :pswitch_9
    const-string/jumbo v0, "transactForLine"

    return-object v0

    .line 208
    :pswitch_a
    const-string/jumbo v0, "queryCOLPForLine"

    return-object v0

    .line 204
    :pswitch_b
    const-string/jumbo v0, "queryCOLRForLine"

    return-object v0

    .line 200
    :pswitch_c
    const-string/jumbo v0, "queryCLIPForLine"

    return-object v0

    .line 196
    :pswitch_d
    const-string/jumbo v0, "queryCLIRForLine"

    return-object v0

    .line 192
    :pswitch_e
    const-string/jumbo v0, "queryCallWaitingForLine"

    return-object v0

    .line 188
    :pswitch_f
    const-string/jumbo v0, "queryCallForwardForLine"

    return-object v0

    .line 184
    :pswitch_10
    const-string/jumbo v0, "queryCallBarringForLine"

    return-object v0

    .line 180
    :pswitch_11
    const-string/jumbo v0, "updateExtendCallBarring"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/android/ims/internal/IImsUtEx;)Z
    .locals 1
    .param p0, "impl"    # Lcom/android/ims/internal/IImsUtEx;

    .line 1024
    sget-object v0, Lcom/android/ims/internal/IImsUtEx$Stub$Proxy;->sDefaultImpl:Lcom/android/ims/internal/IImsUtEx;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1025
    sput-object p0, Lcom/android/ims/internal/IImsUtEx$Stub$Proxy;->sDefaultImpl:Lcom/android/ims/internal/IImsUtEx;

    .line 1026
    const/4 v0, 0x1

    return v0

    .line 1028
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 171
    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 259
    invoke-static {p1}, Lcom/android/ims/internal/IImsUtEx$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.android.ims.internal.IImsUtEx"

    .line 264
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_6

    const/4 v0, 0x0

    packed-switch v8, :pswitch_data_0

    .line 512
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 504
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUtEx$Stub;->isServiceBlockedByNetwork()Z

    move-result v0

    .line 506
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const v1, true
    if-eq v0, v1, :cond_7
    const v2, 0
    .line 507
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V
    goto :goto_3
    :cond_7
    const v2, 1
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V
    :goto_3

    .line 508
    return v12

    .line 485
    .end local v0    # "_result":Z
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 491
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_0

    .line 495
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .line 497
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateExtendCallBarringForLine(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v3

    .line 498
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    return v12

    .line 473
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v12

    .line 478
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v7, v1, v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateCOLPForLine(Ljava/lang/String;Z)I

    move-result v2

    .line 479
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    return v12

    .line 461
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateCOLRForLine(Ljava/lang/String;I)I

    move-result v2

    .line 467
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    return v12

    .line 449
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v12

    .line 454
    .local v0, "_arg1":Z
    :cond_2
    invoke-virtual {v7, v1, v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateCLIPForLine(Ljava/lang/String;Z)I

    move-result v2

    .line 455
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    return v12

    .line 437
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateCLIRForLine(Ljava/lang/String;I)I

    move-result v2

    .line 443
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    return v12

    .line 423
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v12

    .line 429
    .local v0, "_arg1":Z
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .local v2, "_arg2":I
    invoke-virtual {v7, v1, v0, v2}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateCallWaitingForLine(Ljava/lang/String;ZI)I

    move-result v3

    .line 431
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    return v12

    .line 403
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 407
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 409
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 411
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 413
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 415
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 416
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateCallForwardForLine(Ljava/lang/String;IILjava/lang/String;II)I

    move-result v0

    .line 417
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    return v12

    .line 387
    .end local v0    # "_result":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 395
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateCallBarringForLine(Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v4

    .line 397
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    return v12

    .line 370
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 378
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_4
    const/4 v1, 0x0

    .line 380
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v7, v0, v1}, Lcom/android/ims/internal/IImsUtEx$Stub;->transactForLine(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 381
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    return v12

    .line 360
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->queryCOLPForLine(Ljava/lang/String;)I

    move-result v1

    .line 364
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    return v12

    .line 350
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->queryCOLRForLine(Ljava/lang/String;)I

    move-result v1

    .line 354
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    return v12

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->queryCLIPForLine(Ljava/lang/String;)I

    move-result v1

    .line 344
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    return v12

    .line 330
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->queryCLIRForLine(Ljava/lang/String;)I

    move-result v1

    .line 334
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    return v12

    .line 320
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lcom/android/ims/internal/IImsUtEx$Stub;->queryCallWaitingForLine(Ljava/lang/String;)I

    move-result v1

    .line 324
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    return v12

    .line 304
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsUtEx$Stub;->queryCallForwardForLine(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v4

    .line 314
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    return v12

    .line 290
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/ims/internal/IImsUtEx$Stub;->queryCallBarringForLine(Ljava/lang/String;II)I

    move-result v3

    .line 298
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    return v12

    .line 273
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_2

    .line 281
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_5
    const/4 v1, 0x0

    .line 283
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {v7, v0, v1}, Lcom/android/ims/internal/IImsUtEx$Stub;->updateExtendCallBarring(ILandroid/os/Bundle;)I

    move-result v2

    .line 284
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    return v12

    .line 268
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":I
    :cond_6
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
