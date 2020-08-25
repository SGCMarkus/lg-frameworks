.class public interface abstract Lcom/android/internal/telephony/ILGImsIsimCallback;
.super Ljava/lang/Object;
.source "ILGImsIsimCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILGImsIsimCallback$Stub;,
        Lcom/android/internal/telephony/ILGImsIsimCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onIsimStateChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
