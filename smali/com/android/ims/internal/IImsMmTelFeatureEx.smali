.class public interface abstract Lcom/android/ims/internal/IImsMmTelFeatureEx;
.super Ljava/lang/Object;
.source "IImsMmTelFeatureEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub;,
        Lcom/android/ims/internal/IImsMmTelFeatureEx$Default;
    }
.end annotation


# virtual methods
.method public abstract getEmergencyCallConfig()Lcom/android/ims/LGImsECallConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIncomingCallInfo()Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isEmergencyCallAvailableOverWfc()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
