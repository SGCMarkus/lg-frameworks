.class public Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Default;
.super Ljava/lang/Object;
.source "ILGDataRuntimeFeatureManager.java"

# interfaces
.implements Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;
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
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled(ILcom/lge/lgdata/LGDataRuntimeFeature;)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public registerObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V
    .locals 0
    .param p1, "obs"    # Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public reloadFeatures(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "resetManaullyChangedFeatures"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public setDefaultDataPhoneId(I)V
    .locals 0
    .param p1, "defaultPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public setEnable(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public unregisterObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V
    .locals 0
    .param p1, "obs"    # Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
