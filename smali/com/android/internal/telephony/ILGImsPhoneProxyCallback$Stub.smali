.class public abstract Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub;
.super Landroid/os/Binder;
.source "ILGImsPhoneProxyCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ILGImsPhoneProxyCallback"

.field static final TRANSACTION_onLteStateChanged:I = 0x2

.field static final TRANSACTION_onPhoneStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.android.internal.telephony.ILGImsPhoneProxyCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.android.internal.telephony.ILGImsPhoneProxyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    .locals 1

    .line 184
    sget-object v0, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;)Z
    .locals 1
    .param p0, "impl"    # Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 178
    sput-object p0, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    .line 179
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
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

    .line 65
    const-string v0, "com.android.internal.telephony.ILGImsPhoneProxyCallback"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 90
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 93
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub;->onLteStateChanged([I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v1

    .line 75
    .end local v2    # "_arg0":[I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 83
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub;->onPhoneStateChanged(IIILjava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v1
.end method
