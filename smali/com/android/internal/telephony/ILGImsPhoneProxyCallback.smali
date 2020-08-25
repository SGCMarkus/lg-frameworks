.class public interface abstract Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;
.super Ljava/lang/Object;
.source "ILGImsPhoneProxyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Stub;,
        Lcom/android/internal/telephony/ILGImsPhoneProxyCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onLteStateChanged([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPhoneStateChanged(IIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
