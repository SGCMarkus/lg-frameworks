.class Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILGDataRuntimeFeatureManager.java"

# interfaces
.implements Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 198
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 205
    const-string v0, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    return-object v0
.end method

.method public isEnabled(ILcom/lge/lgdata/LGDataRuntimeFeature;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {p2, v0, v3}, Lcom/lge/lgdata/LGDataRuntimeFeature;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    :goto_0
    iget-object v4, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 223
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 224
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->isEnabled(ILcom/lge/lgdata/LGDataRuntimeFeature;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    return v2

    .line 226
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 230
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    nop

    .line 233
    return v2

    .line 230
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V
    .locals 5
    .param p1, "obs"    # Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 289
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 290
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 291
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->registerObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    return-void

    .line 294
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    nop

    .line 300
    return-void

    .line 297
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reloadFeatures(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "resetManaullyChangedFeatures"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 265
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v3, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 271
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 272
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->reloadFeatures(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    return-void

    .line 275
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-void

    .line 278
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setDefaultDataPhoneId(I)V
    .locals 5
    .param p1, "defaultPhoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 328
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 329
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->setDefaultDataPhoneId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    return-void

    .line 332
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    nop

    .line 338
    return-void

    .line 335
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setEnable(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {p2, v0, v3}, Lcom/lge/lgdata/LGDataRuntimeFeature;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 251
    .local v2, "_status":Z
    if-nez v2, :cond_2

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 252
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->setEnable(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    return-void

    .line 255
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V
    .locals 5
    .param p1, "obs"    # Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 308
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 309
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 310
    invoke-static {}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->unregisterObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    return-void

    .line 313
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    nop

    .line 319
    return-void

    .line 316
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
