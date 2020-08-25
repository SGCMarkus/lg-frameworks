.class public interface abstract Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
.super Ljava/lang/Object;
.source "ILGDataRuntimeFeatureObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;,
        Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract ddsChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract featureChanged(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract featuresChanged(I[Lcom/lge/lgdata/LGDataRuntimeFeature;[Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
