.class public abstract Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub;
.super Landroid/os/Binder;
.source "ILGImsNetworkInfoCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ILGImsNetworkInfoCallback"

.field static final TRANSACTION_onCellInfo:I = 0x1

.field static final TRANSACTION_onNotificationEnabled:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.android.internal.telephony.ILGImsNetworkInfoCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    const-string v0, "com.android.internal.telephony.ILGImsNetworkInfoCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    if-eqz v1, :cond_1

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    return-object v1

    .line 44
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    .locals 1

    .line 152
    sget-object v0, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;)Z
    .locals 1
    .param p0, "impl"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    .line 145
    sget-object v0, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 146
    sput-object p0, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 48
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

    .line 52
    const-string v0, "com.android.internal.telephony.ILGImsNetworkInfoCallback"

    .line 53
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 57
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v1

    .line 73
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 76
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub;->onNotificationEnabled(Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v1

    .line 62
    .end local v2    # "_arg0":Z
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub;->onCellInfo(I[Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v1
.end method
