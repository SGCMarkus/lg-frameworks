.class public abstract Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;
.super Landroid/os/Binder;
.source "ILGImsPhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGImsPhoneProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ILGImsPhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ILGImsPhoneProxy"

.field static final TRANSACTION_addNetworkInfoCallback:I = 0x10

.field static final TRANSACTION_getAllCellInfo:I = 0x5

.field static final TRANSACTION_getIsimInterface:I = 0xd

.field static final TRANSACTION_getPcscfAddress:I = 0x6

.field static final TRANSACTION_getSysInfo:I = 0x1

.field static final TRANSACTION_getSysInfoById:I = 0x7

.field static final TRANSACTION_getUiccInterface:I = 0x12

.field static final TRANSACTION_isNetworkInfoNotificationEnabled:I = 0xe

.field static final TRANSACTION_removeNetworkInfoCallback:I = 0x11

.field static final TRANSACTION_requestCellInfo:I = 0xf

.field static final TRANSACTION_setCallback:I = 0x4

.field static final TRANSACTION_setCallbackById:I = 0xa

.field static final TRANSACTION_setSysInfo:I = 0x2

.field static final TRANSACTION_setSysInfoById:I = 0x8

.field static final TRANSACTION_setSysInfoEx:I = 0x3

.field static final TRANSACTION_setSysInfoExById:I = 0x9

.field static final TRANSACTION_start:I = 0xb

.field static final TRANSACTION_stop:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 129
    const-string v0, "com.android.internal.telephony.ILGImsPhoneProxy"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsPhoneProxy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 137
    if-nez p0, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    const-string v0, "com.android.internal.telephony.ILGImsPhoneProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 141
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ILGImsPhoneProxy;

    if-eqz v1, :cond_1

    .line 142
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ILGImsPhoneProxy;

    return-object v1

    .line 144
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/telephony/ILGImsPhoneProxy;
    .locals 1

    .line 853
    sget-object v0, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsPhoneProxy;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/telephony/ILGImsPhoneProxy;)Z
    .locals 1
    .param p0, "impl"    # Lcom/android/internal/telephony/ILGImsPhoneProxy;

    .line 846
    sget-object v0, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsPhoneProxy;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 847
    sput-object p0, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsPhoneProxy;

    .line 848
    const/4 v0, 0x1

    return v0

    .line 850
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 148
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.telephony.ILGImsPhoneProxy"

    .line 153
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 380
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 370
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .local v1, "_arg0":I
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->getUiccInterface(I)Lcom/android/internal/telephony/ILGImsUicc;

    move-result-object v2

    .line 374
    .local v2, "_result":Lcom/android/internal/telephony/ILGImsUicc;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ILGImsUicc;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 376
    return v11

    .line 359
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/android/internal/telephony/ILGImsUicc;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    move-result-object v1

    .line 364
    .local v1, "_arg1":Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->removeNetworkInfoCallback(ILcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    return v11

    .line 348
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    move-result-object v1

    .line 353
    .restart local v1    # "_arg1":Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->addNetworkInfoCallback(ILcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    return v11

    .line 332
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    move-result-object v2

    .line 340
    .local v2, "_arg2":Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v11

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 341
    .local v3, "_arg3":Z
    :goto_0
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->requestCellInfo(IILcom/android/internal/telephony/ILGImsNetworkInfoCallback;Z)[Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 344
    return v11

    .line 322
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->isNetworkInfoNotificationEnabled(I)Z

    move-result v1

    .line 326
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const v2, true

    if-eq v1, v2, :cond_4
    const v3, 0
    .line 327
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V
    goto :goto_1
    :cond_4
    const v3, 1
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V
    :goto_1

    .line 328
    return v11

    .line 312
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .local v1, "_arg0":I
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->getIsimInterface(I)Lcom/android/internal/telephony/ILGImsIsim;

    move-result-object v2

    .line 316
    .local v2, "_result":Lcom/android/internal/telephony/ILGImsIsim;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/internal/telephony/ILGImsIsim;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 318
    return v11

    .line 303
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/android/internal/telephony/ILGImsIsim;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->stop(I)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    return v11

    .line 294
    .end local v0    # "_arg0":I
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->start(I)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    return v11

    .line 283
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    move-result-object v0

    .line 287
    .local v0, "_arg0":Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->setCallbackById(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;I)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    return v11

    .line 268
    .end local v0    # "_arg0":Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 274
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->setSysInfoExById(I[I[Ljava/lang/String;I)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    return v11

    .line 251
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 255
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 257
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 259
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 261
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 262
    .local v16, "_arg4":I
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->setSysInfoById(IIILjava/lang/String;I)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    return v11

    .line 235
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    .restart local v3    # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->getSysInfoById(IILjava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 245
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 247
    return v11

    .line 223
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->getPcscfAddress(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 231
    return v11

    .line 213
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->getAllCellInfo(I)Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 219
    return v11

    .line 204
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    move-result-object v0

    .line 207
    .local v0, "_arg0":Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->setCallback(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v11

    .line 191
    .end local v0    # "_arg0":Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 197
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->setSysInfoEx(I[I[Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    return v11

    .line 176
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->setSysInfo(IIILjava/lang/String;)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    return v11

    .line 162
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ILGImsPhoneProxy$Stub;->getSysInfo(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 172
    return v11

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v11

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
