.class Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;
.super Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;
.source "LGDataRuntimeFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataRuntimeFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureCacheManager"
.end annotation


# instance fields
.field private mCache:[Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field final synthetic this$0:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;


# direct methods
.method public constructor <init>(Lcom/lge/lgdata/LGDataRuntimeFeatureManager;I)V
    .locals 2
    .param p2, "phoneCount"    # I

    .line 54
    iput-object p1, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->this$0:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;-><init>()V

    .line 50
    const/4 p1, 0x1

    iput p1, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mPhoneCount:I

    .line 51
    const/4 p1, 0x2

    new-array v0, p1, [Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mCache:[Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    iput p2, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mPhoneCount:I

    .line 56
    iget v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mPhoneCount:I

    if-le v0, p1, :cond_0

    .line 57
    const-string v0, "Number of maximum PhoneCount is 2"

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$000(Ljava/lang/String;)V

    .line 58
    iput p1, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mPhoneCount:I

    .line 60
    :cond_0
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mPhoneCount:I

    if-ge p1, v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mCache:[Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v1, v0, p1

    .line 60
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 63
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method private isValidPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 66
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mPhoneCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clearCache(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mCache:[Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 91
    :cond_0
    return-void
.end method

.method public ddsChanged(I)V
    .locals 2
    .param p1, "defaultPhoneId"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ddsChanged: Invalid phoneId notified: notified defaultPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$100(Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ddsChanged: Update DDS, current DefaultPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->this$0:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    invoke-static {v1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$200(Lcom/lge/lgdata/LGDataRuntimeFeatureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new DefaultPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$100(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->this$0:Lcom/lge/lgdata/LGDataRuntimeFeatureManager;

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$200(Lcom/lge/lgdata/LGDataRuntimeFeatureManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 151
    return-void
.end method

.method public featureChanged(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "newValue"    # Z

    .line 96
    const-string v0, ", newValue="

    if-nez p2, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "featureChanged: feature is null, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$000(Ljava/lang/String;)V

    .line 98
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->getCache(ILcom/lge/lgdata/LGDataRuntimeFeature;)Ljava/lang/Boolean;

    move-result-object v1

    .line 103
    .local v1, "cacheData":Ljava/lang/Boolean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "featureChanged: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", oldValue="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    if-nez v1, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$100(Ljava/lang/String;)V

    .line 107
    .end local v1    # "cacheData":Ljava/lang/Boolean;
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->putCache(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)Ljava/lang/Boolean;

    .line 108
    return-void
.end method

.method public featuresChanged(I[Lcom/lge/lgdata/LGDataRuntimeFeature;[Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "enabledFeatures"    # [Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "disabledFeatures"    # [Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "featuresChanged: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enabledFeatures.length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", disabledFeatures.length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$100(Ljava/lang/String;)V

    .line 116
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, ", feature="

    if-ge v3, v0, :cond_1

    aget-object v5, p2, v3

    .line 118
    .local v5, "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    if-nez v5, :cond_0

    .line 119
    const-string v4, "featuresChanged: feature is null (from enabledFeatures)"

    invoke-static {v4}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$000(Ljava/lang/String;)V

    .line 120
    goto :goto_1

    .line 124
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " enabled"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$100(Ljava/lang/String;)V

    .line 126
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v5, v4}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->putCache(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)Ljava/lang/Boolean;

    .line 116
    .end local v5    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_1
    array-length v0, p3

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    aget-object v5, p3, v3

    .line 131
    .restart local v5    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    if-nez v5, :cond_2

    .line 132
    const-string v6, "featuresChanged: feature is null (from disabledFeatures)"

    invoke-static {v6}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$000(Ljava/lang/String;)V

    .line 133
    goto :goto_3

    .line 137
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " disabled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager;->access$100(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1, v5, v2}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->putCache(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)Ljava/lang/Boolean;

    .line 129
    .end local v5    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    :cond_3
    return-void
.end method

.method public getCache(ILcom/lge/lgdata/LGDataRuntimeFeature;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 81
    invoke-direct {p0, p1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mCache:[Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public putCache(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "newValue"    # Z

    .line 74
    invoke-direct {p0, p1}, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/LGDataRuntimeFeatureManager$FeatureCacheManager;->mCache:[Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v0, v0, p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
