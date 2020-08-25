.class public interface abstract Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;
.super Ljava/lang/Object;
.source "ILGDataRuntimeFeatureManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;,
        Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Default;
    }
.end annotation


# virtual methods
.method public abstract isEnabled(ILcom/lge/lgdata/LGDataRuntimeFeature;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reloadFeatures(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDefaultDataPhoneId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnable(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
