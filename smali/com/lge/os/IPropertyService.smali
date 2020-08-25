.class public interface abstract Lcom/lge/os/IPropertyService;
.super Ljava/lang/Object;
.source "IPropertyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/os/IPropertyService$Stub;,
        Lcom/lge/os/IPropertyService$Default;
    }
.end annotation


# virtual methods
.method public abstract getVendorProperty(ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVendorProperty(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
