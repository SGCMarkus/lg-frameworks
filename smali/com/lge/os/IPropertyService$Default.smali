.class public Lcom/lge/os/IPropertyService$Default;
.super Ljava/lang/Object;
.source "IPropertyService.java"

# interfaces
.implements Lcom/lge/os/IPropertyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/os/IPropertyService;
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

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVendorProperty(ILjava/lang/String;)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
