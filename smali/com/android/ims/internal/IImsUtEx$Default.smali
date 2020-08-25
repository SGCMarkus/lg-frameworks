.class public Lcom/android/ims/internal/IImsUtEx$Default;
.super Ljava/lang/Object;
.source "IImsUtEx.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public isServiceBlockedByNetwork()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public queryCLIPForLine(Ljava/lang/String;)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public queryCLIRForLine(Ljava/lang/String;)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public queryCOLPForLine(Ljava/lang/String;)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public queryCOLRForLine(Ljava/lang/String;)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public queryCallBarringForLine(Ljava/lang/String;II)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public queryCallForwardForLine(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public queryCallWaitingForLine(Ljava/lang/String;)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public transactForLine(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "ssInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public updateCLIPForLine(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public updateCLIRForLine(Ljava/lang/String;I)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public updateCOLPForLine(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public updateCOLRForLine(Ljava/lang/String;I)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "presentation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public updateCallBarringForLine(Ljava/lang/String;II[Ljava/lang/String;)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # I
    .param p4, "barringList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public updateCallForwardForLine(Ljava/lang/String;IILjava/lang/String;II)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "condition"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public updateCallWaitingForLine(Ljava/lang/String;ZI)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public updateExtendCallBarring(ILandroid/os/Bundle;)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "ssInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public updateExtendCallBarringForLine(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    return v0
.end method
