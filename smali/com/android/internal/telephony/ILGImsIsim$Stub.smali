.class public abstract Lcom/android/internal/telephony/ILGImsIsim$Stub;
.super Landroid/os/Binder;
.source "ILGImsIsim.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGImsIsim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ILGImsIsim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILGImsIsim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ILGImsIsim"

.field static final TRANSACTION_getBTid:I = 0xa

.field static final TRANSACTION_getChallengeResponse:I = 0x4

.field static final TRANSACTION_getDomain:I = 0x1

.field static final TRANSACTION_getGbaBootstrappingResponse:I = 0xe

.field static final TRANSACTION_getImpi:I = 0x2

.field static final TRANSACTION_getImpu:I = 0x3

.field static final TRANSACTION_getIst:I = 0x5

.field static final TRANSACTION_getKeyLifetime:I = 0xb

.field static final TRANSACTION_getNafExternalKey:I = 0xf

.field static final TRANSACTION_getPcscfAddress:I = 0x6

.field static final TRANSACTION_getRand:I = 0x9

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_isGbaSupported:I = 0xc

.field static final TRANSACTION_setCallback:I = 0x8

.field static final TRANSACTION_setGbaBootstrappingParameters:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 137
    const-string v0, "com.android.internal.telephony.ILGImsIsim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsIsim;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    const-string v0, "com.android.internal.telephony.ILGImsIsim"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 149
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ILGImsIsim;

    if-eqz v1, :cond_1

    .line 150
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ILGImsIsim;

    return-object v1

    .line 152
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ILGImsIsim$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/telephony/ILGImsIsim;
    .locals 1

    .line 719
    sget-object v0, Lcom/android/internal/telephony/ILGImsIsim$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsIsim;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/telephony/ILGImsIsim;)Z
    .locals 1
    .param p0, "impl"    # Lcom/android/internal/telephony/ILGImsIsim;

    .line 712
    sget-object v0, Lcom/android/internal/telephony/ILGImsIsim$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsIsim;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 713
    sput-object p0, Lcom/android/internal/telephony/ILGImsIsim$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsIsim;

    .line 714
    const/4 v0, 0x1

    return v0

    .line 716
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 156
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    const-string v0, "com.android.internal.telephony.ILGImsIsim"

    .line 161
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 300
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 303
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getNafExternalKey([B)[B

    move-result-object v3

    .line 304
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 306
    return v2

    .line 282
    .end local v1    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 286
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 287
    .local v3, "_arg1":[B
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v4

    .line 288
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v4, :cond_0

    .line 290
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {v4, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 294
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    :goto_0
    return v2

    .line 269
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 273
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->setGbaBootstrappingParameters([BLjava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    return v2

    .line 261
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->isGbaSupported()Z

    move-result v1

    .line 263
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return v2

    .line 253
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getKeyLifetime()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    return v2

    .line 245
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getBTid()Ljava/lang/String;

    move-result-object v1

    .line 247
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    return v2

    .line 237
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getRand()[B

    move-result-object v1

    .line 239
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 241
    return v2

    .line 228
    .end local v1    # "_result":[B
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ILGImsIsimCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsIsimCallback;

    move-result-object v1

    .line 231
    .local v1, "_arg0":Lcom/android/internal/telephony/ILGImsIsimCallback;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->setCallback(Lcom/android/internal/telephony/ILGImsIsimCallback;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    return v2

    .line 220
    .end local v1    # "_arg0":Lcom/android/internal/telephony/ILGImsIsimCallback;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getState()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return v2

    .line 212
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getPcscfAddress()[Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 216
    return v2

    .line 204
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getIst()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v2

    .line 194
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return v2

    .line 186
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getImpu()[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 190
    return v2

    .line 178
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getImpi()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return v2

    .line 170
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 172
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v2

    .line 165
    .end local v1    # "_result":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
