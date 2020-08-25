.class public abstract Lcom/android/internal/telephony/ILGImsUicc$Stub;
.super Landroid/os/Binder;
.source "ILGImsUicc.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGImsUicc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ILGImsUicc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILGImsUicc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ILGImsUicc"

.field static final TRANSACTION_getEccList:I = 0x1

.field static final TRANSACTION_getRecordBytes:I = 0x6

.field static final TRANSACTION_getRecordString:I = 0x4

.field static final TRANSACTION_getRecordStringArray:I = 0x5

.field static final TRANSACTION_getSimState:I = 0x2

.field static final TRANSACTION_getSmscAddress:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "com.android.internal.telephony.ILGImsUicc"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ILGImsUicc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsUicc;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    const-string v0, "com.android.internal.telephony.ILGImsUicc"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ILGImsUicc;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ILGImsUicc;

    return-object v1

    .line 85
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ILGImsUicc$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ILGImsUicc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/telephony/ILGImsUicc;
    .locals 1

    .line 338
    sget-object v0, Lcom/android/internal/telephony/ILGImsUicc$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsUicc;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/telephony/ILGImsUicc;)Z
    .locals 1
    .param p0, "impl"    # Lcom/android/internal/telephony/ILGImsUicc;

    .line 331
    sget-object v0, Lcom/android/internal/telephony/ILGImsUicc$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsUicc;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 332
    sput-object p0, Lcom/android/internal/telephony/ILGImsUicc$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsUicc;

    .line 333
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 89
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-string v0, "com.android.internal.telephony.ILGImsUicc"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 147
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ILGImsUicc$Stub;->getRecordBytes(I)[B

    move-result-object v3

    .line 151
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 153
    return v2

    .line 137
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ILGImsUicc$Stub;->getRecordStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 143
    return v2

    .line 127
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ILGImsUicc$Stub;->getRecordString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v2

    .line 119
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsUicc$Stub;->getSmscAddress()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v2

    .line 111
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsUicc$Stub;->getSimState()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v2

    .line 103
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/ILGImsUicc$Stub;->getEccList()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v2

    .line 98
    .end local v1    # "_result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
