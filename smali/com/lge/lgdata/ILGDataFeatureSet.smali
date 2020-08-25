.class public abstract Lcom/lge/lgdata/ILGDataFeatureSet;
.super Ljava/lang/Object;
.source "ILGDataFeatureSet.java"


# static fields
.field private static final DBG:Z = true

.field private static final EMPTY_PROPERTY:Ljava/lang/String; = "rfm_empty_prop"

.field private static final NO_SIM_NUMERIC:Ljava/lang/String; = "0"

.field private static final mIsMultiSimEnabled:Z


# instance fields
.field protected mBase:Lcom/lge/lgdata/ILGDataFeatureSet;

.field private mBooleanSupplierBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/function/BooleanSupplier;",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mMccBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMultiSimFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mPropBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPropValueBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemovedFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSingleSimFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/lge/lgdata/ILGDataFeatureSet;->mIsMultiSimEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mFeatures:Landroid/util/ArraySet;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMccBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropValueBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSingleSimFeatures:Landroid/util/ArraySet;

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMultiSimFeatures:Landroid/util/ArraySet;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBooleanSupplierBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mRemovedFeatures:Landroid/util/ArraySet;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBase:Lcom/lge/lgdata/ILGDataFeatureSet;

    .line 52
    return-void
.end method

.method private getBooleanSupplierBasedFeatures()Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 185
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBooleanSupplierBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBooleanSupplierBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BooleanSupplier;

    .line 187
    .local v2, "bs":Ljava/util/function/BooleanSupplier;
    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBooleanSupplierBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 190
    .end local v2    # "bs":Ljava/util/function/BooleanSupplier;
    :cond_0
    goto :goto_0

    .line 193
    :cond_1
    return-object v0
.end method

.method private getMccBasedFeatures(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 123
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMccBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 125
    .local v1, "noMccFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 128
    :cond_0
    return-object v0

    .line 132
    .end local v1    # "noMccFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 133
    return-object v0

    .line 136
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "mcc":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMccBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 138
    .local v2, "mccFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 141
    :cond_3
    return-object v0
.end method

.method private getPropBasedFeatures()Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 148
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    .local v2, "propName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 153
    .end local v2    # "propName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    return-object v0
.end method

.method private getPropValueBasedFeatures()Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 163
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropValueBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropValueBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "propValPair":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "="

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 167
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "propName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "propVal":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    const-string/jumbo v6, "rfm_empty_prop"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropValueBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 172
    .end local v4    # "propName":Ljava/lang/String;
    .end local v5    # "propVal":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 173
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abnormal PropValueBaseFeature found, pair="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/lgdata/ILGDataFeatureSet;->logw(Ljava/lang/String;)V

    .line 175
    .end local v2    # "propValPair":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :goto_1
    goto :goto_0

    .line 178
    :cond_2
    return-object v0
.end method

.method private getSimBasedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 5
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "mvnoType"    # Ljava/lang/String;
    .param p3, "mvnoData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 97
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 99
    .local v1, "noSimFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 102
    :cond_0
    return-object v0

    .line 105
    .end local v1    # "noSimFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_1
    const-string v1, ""

    invoke-static {p1, v1, v1}, Lcom/lge/lgdata/ILGDataFeatureSet;->opHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "mnoHashCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 107
    .local v2, "mvoFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 111
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/lge/lgdata/ILGDataFeatureSet;->opHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "mvnoHashCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 113
    .local v4, "mvnoFeatures":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-eqz v4, :cond_3

    .line 114
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 116
    :cond_3
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void
.end method

.method private static opHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "mvnoType"    # Ljava/lang/String;
    .param p2, "mvnoData"    # Ljava/lang/String;

    .line 84
    move-object v0, p0

    .line 85
    .local v0, "key":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_1
    return-object v0
.end method


# virtual methods
.method protected final OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OFF: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 354
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mRemovedFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method protected final ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 216
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method protected final ON_BS(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/util/function/BooleanSupplier;)V
    .locals 2
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "bs"    # Ljava/util/function/BooleanSupplier;

    .line 337
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBooleanSupplierBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 343
    .local v0, "bsFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-nez v0, :cond_1

    .line 344
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 345
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBooleanSupplierBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 348
    return-void

    .line 338
    .end local v0    # "bsFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON_BS: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    const-string v1, "null"

    goto :goto_1

    :cond_3
    const-string v1, "not null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method protected final ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;)V
    .locals 1
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "mcc"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V

    .line 254
    return-void
.end method

.method protected final ON_MCC(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "enabledBeforeSimLoaded"    # Z

    .line 258
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMccBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 264
    .local v0, "mccFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-nez v0, :cond_1

    .line 265
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 266
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMccBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 270
    if-eqz p3, :cond_3

    .line 271
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMccBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 272
    .local v1, "noMccFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-nez v1, :cond_2

    .line 273
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v3

    .line 274
    iget-object v3, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMccBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v1    # "noMccFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_3
    return-void

    .line 259
    .end local v0    # "mccFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON_MCC: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method protected final ON_MULTI_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON_MULTI_SIM: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 329
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMultiSimFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method protected final ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "property"    # Ljava/lang/String;

    .line 282
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 288
    .local v0, "propFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-nez v0, :cond_1

    .line 289
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 290
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 293
    return-void

    .line 283
    .end local v0    # "propFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON_PROP: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method protected final ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 297
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    move-object v0, p3

    .line 303
    .local v0, "notEmptyValue":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    const-string/jumbo v0, "rfm_empty_prop"

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropValueBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 308
    .local v1, "propValFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-nez v1, :cond_2

    .line 309
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 310
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mPropValueBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 313
    return-void

    .line 298
    .end local v0    # "notEmptyValue":Ljava/lang/String;
    .end local v1    # "propValFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON_PROP: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method protected final ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "mvnoType"    # Ljava/lang/String;
    .param p4, "mvnoData"    # Ljava/lang/String;

    .line 223
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/lgdata/ILGDataFeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    return-void
.end method

.method protected final ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "mvnoType"    # Ljava/lang/String;
    .param p4, "mvnoData"    # Ljava/lang/String;
    .param p5, "enabledBeforeSimLoaded"    # Z

    .line 228
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/lge/lgdata/ILGDataFeatureSet;->opHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "opHasCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 235
    .local v1, "simFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-nez v1, :cond_1

    .line 236
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 237
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 241
    if-eqz p5, :cond_3

    .line 242
    iget-object v2, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 243
    .local v2, "noSimFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    if-nez v2, :cond_2

    .line 244
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v4

    .line 245
    iget-object v4, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSimBasedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_2
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v2    # "noSimFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_3
    return-void

    .line 229
    .end local v0    # "opHasCode":Ljava/lang/String;
    .end local v1    # "simFeatureSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON_SIM: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method protected final ON_SINGLE_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ON_SINGLE: Invalid parameter, feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->log(Ljava/lang/String;)V

    .line 319
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSingleSimFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method protected final add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;
    .locals 0
    .param p1, "featureSet"    # Lcom/lge/lgdata/ILGDataFeatureSet;

    .line 55
    iput-object p0, p1, Lcom/lge/lgdata/ILGDataFeatureSet;->mBase:Lcom/lge/lgdata/ILGDataFeatureSet;

    .line 56
    return-object p1
.end method

.method protected final build()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBase:Lcom/lge/lgdata/ILGDataFeatureSet;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/lge/lgdata/ILGDataFeatureSet;->build()V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;->require()V

    .line 204
    invoke-static {}, Lcom/lge/pcas/PCASInfo;->getHwChipVendor()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qct"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;->require4QCT()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/lge/pcas/PCASInfo;->getHwChipVendor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;->require4MTK()V

    .line 210
    :cond_2
    :goto_0
    return-void
.end method

.method public getFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "mvnoType"    # Ljava/lang/String;
    .param p3, "mvnoData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/lge/lgdata/LGDataRuntimeFeature;>;"
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBase:Lcom/lge/lgdata/ILGDataFeatureSet;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/lgdata/ILGDataFeatureSet;->getFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 67
    :cond_0
    if-nez v0, :cond_1

    .line 68
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mRemovedFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 72
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/lge/lgdata/ILGDataFeatureSet;->getMccBasedFeatures(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/lgdata/ILGDataFeatureSet;->getSimBasedFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 75
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;->getPropBasedFeatures()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 76
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;->getPropValueBasedFeatures()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 77
    sget-boolean v1, Lcom/lge/lgdata/ILGDataFeatureSet;->mIsMultiSimEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mMultiSimFeatures:Landroid/util/ArraySet;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mSingleSimFeatures:Landroid/util/ArraySet;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 78
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;->getBooleanSupplierBasedFeatures()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 80
    return-object v0
.end method

.method abstract require()V
.end method

.method abstract require4MTK()V
.end method

.method abstract require4QCT()V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 377
    const-string v0, ""

    .line 378
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBase:Lcom/lge/lgdata/ILGDataFeatureSet;

    if-eqz v1, :cond_0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/lgdata/ILGDataFeatureSet;->mBase:Lcom/lge/lgdata/ILGDataFeatureSet;

    invoke-virtual {v2}, Lcom/lge/lgdata/ILGDataFeatureSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    return-object v0
.end method
