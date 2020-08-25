.class public Lcom/android/internal/telephony/ILGImsPhoneProxy$Default;
.super Ljava/lang/Object;
.source "ILGImsPhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/ILGImsPhoneProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ILGImsPhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNetworkInfoCallback(ILcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllCellInfo(I)Ljava/util/List;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimInterface(I)Lcom/android/internal/telephony/ILGImsIsim;
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPcscfAddress(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSysInfo(IILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "param"    # I
    .param p3, "paramEx"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSysInfoById(IILjava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "param"    # I
    .param p3, "paramEx"    # Ljava/lang/String;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiccInterface(I)Lcom/android/internal/telephony/ILGImsUicc;
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNetworkInfoNotificationEnabled(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public removeNetworkInfoCallback(ILcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public requestCellInfo(IILcom/android/internal/telephony/ILGImsNetworkInfoCallback;Z)[Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    .param p4, "enforceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallback(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public setCallbackById(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;I)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public setSysInfo(IIILjava/lang/String;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "paramEx"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public setSysInfoById(IIILjava/lang/String;I)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "paramEx"    # Ljava/lang/String;
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public setSysInfoEx(I[I[Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "param"    # [I
    .param p3, "paramEx"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public setSysInfoExById(I[I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "param"    # [I
    .param p3, "paramEx"    # [Ljava/lang/String;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public start(I)V
    .locals 0
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public stop(I)V
    .locals 0
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method
