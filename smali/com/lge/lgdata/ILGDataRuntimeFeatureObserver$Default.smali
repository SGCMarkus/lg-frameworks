.class public Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Default;
.super Ljava/lang/Object;
.source "ILGDataRuntimeFeatureObserver.java"

# interfaces
.implements Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public ddsChanged(I)V
    .locals 0
    .param p1, "defaultPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public featureChanged(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "newValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public featuresChanged(I[Lcom/lge/lgdata/LGDataRuntimeFeature;[Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "enabledFeatures"    # [Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "disabledFeatures"    # [Lcom/lge/lgdata/LGDataRuntimeFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
