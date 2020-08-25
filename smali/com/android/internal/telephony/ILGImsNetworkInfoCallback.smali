.class public interface abstract Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
.super Ljava/lang/Object;
.source "ILGImsNetworkInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Stub;,
        Lcom/android/internal/telephony/ILGImsNetworkInfoCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCellInfo(I[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNotificationEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
