.class public Lcom/lge/lgdata/LGDataRuntimeFeatureManager;
.super Ljava/lang/Object;
.source "LGDataRuntimeFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final PHONE_COUNT_MAX:I = 0x2

.field public static final PHONE_ID_ALL:I = -0x1

.field public static final PHONE_ID_DDS:I = -0x2

.field public static final PHONE_ID_INVALID:I = -0x3

.field public static final PHONE_ID_PRIMARY:I = 0x0

.field public static final PHONE_ID_SECONDARY:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "LGDataRuntimeFeatureManager"

.field private static final VDBG:Z

.field private static sInstance:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;


# instance fields
.field private mDefaultPhoneId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFeatureCacheManager:Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;

.field private mFeatureChangedObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string/jumbo v0, "persist.product.lge.data.vdbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->VDBG:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->sInstance:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureCacheManager:Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureChangedObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mDefaultPhoneId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 175
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 176
    .local v0, "phoneCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runtime Feature Manager is enabled, phoneCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->logv(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;

    invoke-direct {v1, p0, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;-><init>(Lcom/lge/lgdata/LGDataRuntimeFeatureManager;I)V

    iput-object v1, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureCacheManager:Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;

    .line 179
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->registerFeatureChangedObserver()V

    .line 180
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/lgdata/LGDataRuntimeFeatureManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    .line 28
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mDefaultPhoneId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private getDefaultPhoneId()I
    .locals 1

    .line 283
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mDefaultPhoneId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/lge/lgdata/LGDataRuntimeFeatureManager;
    .locals 2

    const-class v0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v1, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->sInstance:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    invoke-direct {v1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;-><init>()V

    sput-object v1, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->sInstance:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    .line 186
    :cond_0
    sget-object v1, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->sInstance:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;
    .locals 1

    .line 190
    const-string v0, "lgdataruntimefeature"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 291
    const-string v0, "LGDataRuntimeFeatureManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 306
    const-string v0, "LGDataRuntimeFeatureManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 310
    const-string v0, "LGDataRuntimeFeatureManager"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 296
    sget-boolean v0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "LGDataRuntimeFeatureManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 302
    const-string v0, "LGDataRuntimeFeatureManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method private registerFeatureChangedObserver()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureChangedObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getService()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureCacheManager:Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;

    invoke-interface {v0, v1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->registerObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V

    .line 160
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureChangedObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    const-string/jumbo v0, "registerFeatureChangedObserver is done"

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-boolean v1, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "NullPointerException in registerFeatureChangedObserver"

    invoke-static {v1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 162
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "re":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "RemoteException in registerFeatureChangedObserver"

    invoke-static {v1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 172
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected isEnabled(ILcom/lge/lgdata/LGDataRuntimeFeature;)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 199
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureCacheManager:Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->getCache(ILcom/lge/lgdata/LGDataRuntimeFeature;)Ljava/lang/Boolean;

    move-result-object v0

    .line 201
    .local v0, "cacheData":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 206
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->registerFeatureChangedObserver()V

    .line 207
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getService()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->isEnabled(ILcom/lge/lgdata/LGDataRuntimeFeature;)Z

    move-result v1

    .line 208
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureCacheManager:Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->putCache(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    return v1

    .line 213
    .end local v1    # "ret":Z
    :catch_0
    move-exception v1

    .line 214
    .local v1, "npe":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service could be not ready in isEnabled, feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->logw(Ljava/lang/String;)V

    .line 215
    sget-boolean v2, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->VDBG:Z

    if-eqz v2, :cond_1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException in isEnabled, feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 211
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 212
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in isEnabled, feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 218
    .end local v1    # "re":Landroid/os/RemoteException;
    nop

    .line 220
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method protected isEnabled(Lcom/lge/lgdata/LGDataRuntimeFeature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 194
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->isEnabled(ILcom/lge/lgdata/LGDataRuntimeFeature;)Z

    move-result v0

    return v0
.end method

.method public reloadFeatures()V
    .locals 2

    .line 247
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getDefaultPhoneId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->reloadFeatures(IZ)V

    .line 248
    return-void
.end method

.method public reloadFeatures(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->reloadFeatures(IZ)V

    .line 252
    return-void
.end method

.method public reloadFeatures(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "resetManaullyChangedFeatures"    # Z

    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->registerFeatureChangedObserver()V

    .line 262
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getService()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->reloadFeatures(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "NullPointerException in reloadFeatures"

    invoke-static {v1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 264
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 265
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemoteException in reloadFeatures"

    invoke-static {v1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 268
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 269
    :goto_1
    return-void
.end method

.method public reloadFeatures(Z)V
    .locals 1
    .param p1, "resetManaullyChangedFeatures"    # Z

    .line 255
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->reloadFeatures(IZ)V

    .line 256
    return-void
.end method

.method public setDefaultDataPhoneId(I)V
    .locals 2
    .param p1, "defaultPhoneId"    # I

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getService()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->setDefaultDataPhoneId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "NullPointerException in setDefaultDataPhoneId"

    invoke-static {v1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 275
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 276
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemoteException in setDefaultDataPhoneId"

    invoke-static {v1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 279
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 280
    :goto_1
    return-void
.end method

.method protected setEnable(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "enabled"    # Z

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->registerFeatureChangedObserver()V

    .line 233
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getService()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;->setEnable(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V

    .line 234
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->mFeatureCacheManager:Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->putCache(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "npe":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service could be not ready in setEnable, feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->logw(Ljava/lang/String;)V

    .line 240
    sget-boolean v1, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NullPointerException in setEnable, feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 236
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 237
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException in setEnable, feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 243
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 244
    :cond_0
    :goto_1
    return-void
.end method

.method protected setEnable(Lcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "enabled"    # Z

    .line 225
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->getDefaultPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->setEnable(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V

    .line 226
    return-void
.end method
