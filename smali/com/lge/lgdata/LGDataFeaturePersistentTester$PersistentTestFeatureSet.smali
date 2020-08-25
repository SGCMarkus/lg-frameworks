.class public Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeaturePersistentTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeaturePersistentTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PersistentTestFeatureSet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/lgdata/LGDataFeaturePersistentTester;


# direct methods
.method protected constructor <init>(Lcom/lge/lgdata/LGDataFeaturePersistentTester;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    .line 53
    iput-object p1, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    .line 54
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public require()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    invoke-static {v0}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->access$000(Lcom/lge/lgdata/LGDataFeaturePersistentTester;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    invoke-static {v0}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->access$000(Lcom/lge/lgdata/LGDataFeaturePersistentTester;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 65
    .local v1, "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    invoke-static {v2}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->access$000(Lcom/lge/lgdata/LGDataFeaturePersistentTester;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 66
    .local v2, "ret":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 67
    invoke-virtual {p0, v1}, Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    .line 71
    .end local v1    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    .end local v2    # "ret":Ljava/lang/Boolean;
    :goto_1
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method public require4MTK()V
    .locals 0

    .line 82
    return-void
.end method

.method public require4QCT()V
    .locals 0

    .line 77
    return-void
.end method
