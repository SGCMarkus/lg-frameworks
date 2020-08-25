.class Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILGDataRuntimeFeatureObserver.java"

# interfaces
.implements Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 142
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public ddsChanged(I)V
    .locals 5
    .param p1, "defaultPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.lge.lgdata.ILGDataRuntimeFeatureObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 200
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;->ddsChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    return-void

    .line 206
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    nop

    .line 208
    return-void

    .line 206
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public featureChanged(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "newValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.lge.lgdata.ILGDataRuntimeFeatureObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p2, v0, v1}, Lcom/lge/lgdata/LGDataRuntimeFeature;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    :goto_0
    if-eqz p3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 166
    .local v1, "_status":Z
    if-nez v1, :cond_2

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 167
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;->featureChanged(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    return-void

    .line 172
    .end local v1    # "_status":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    nop

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public featuresChanged(I[Lcom/lge/lgdata/LGDataRuntimeFeature;[Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enabledFeatures"    # [Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "disabledFeatures"    # [Lcom/lge/lgdata/LGDataRuntimeFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.lge.lgdata.ILGDataRuntimeFeatureObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 182
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 183
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 184
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;->featuresChanged(I[Lcom/lge/lgdata/LGDataRuntimeFeature;[Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    return-void

    .line 190
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    nop

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 149
    const-string v0, "com.lge.lgdata.ILGDataRuntimeFeatureObserver"

    return-object v0
.end method
