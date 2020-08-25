.class public Lcom/lge/lgdata/LGDataFeaturePersistentTester;
.super Ljava/lang/Object;
.source "LGDataFeaturePersistentTester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LGDataFeaturePersistentTester"

.field protected static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field protected static final TAG_FEATURE_ATTR_ENABLE:Ljava/lang/String; = "enable"

.field protected static final TAG_FEATURE_ATTR_NAME:Ljava/lang/String; = "name"

.field protected static final TAG_ROOT:Ljava/lang/String; = "features"

.field private static final TEST_XML_FILE_PATH:Ljava/lang/String; = "/data/logger/data_features_test.xml"

.field private static sInstance:Lcom/lge/lgdata/LGDataFeaturePersistentTester;


# instance fields
.field private mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->sInstance:Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-virtual {p0}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->loadFeatures()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/lge/lgdata/LGDataFeaturePersistentTester;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    .line 23
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/lge/lgdata/LGDataFeaturePersistentTester;
    .locals 2

    const-class v0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->sInstance:Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    invoke-direct {v1}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;-><init>()V

    sput-object v1, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->sInstance:Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    .line 48
    :cond_0
    sget-object v1, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->sInstance:Lcom/lge/lgdata/LGDataFeaturePersistentTester;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 287
    const-string v0, "LGDataFeaturePersistentTester"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 298
    const-string v0, "LGDataFeaturePersistentTester"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 302
    const-string v0, "LGDataFeaturePersistentTester"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 293
    const-string v0, "LGDataFeaturePersistentTester"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method private static newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 3

    .line 269
    :try_start_0
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 270
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 271
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    return-object v0

    .line 273
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    .line 282
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXmlSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method private writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const-string v0, "    "

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string v0, "feature"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    const-string v2, "name"

    invoke-interface {p1, v1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string v0, "\n"

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    return-void
.end method


# virtual methods
.method public clearPersistentFeatures()V
    .locals 2

    .line 250
    const-string/jumbo v0, "persist.product.lge.data.rfm.debug.pt"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 252
    invoke-virtual {p0}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->saveFeatures()V

    .line 253
    return-void
.end method

.method public enablePersistentFeature(Lcom/lge/lgdata/LGDataRuntimeFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p2, "enable"    # Z

    .line 244
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {p0}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->saveFeatures()V

    .line 246
    const-string/jumbo v0, "persist.product.lge.data.rfm.debug.pt"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public getFeatureSet()Lcom/lge/lgdata/ILGDataFeatureSet;
    .locals 1

    .line 87
    new-instance v0, Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;

    invoke-direct {v0, p0}, Lcom/lge/lgdata/LGDataFeaturePersistentTester$PersistentTestFeatureSet;-><init>(Lcom/lge/lgdata/LGDataFeaturePersistentTester;)V

    return-object v0
.end method

.method public getPersistentFeatureValue(Lcom/lge/lgdata/LGDataRuntimeFeature;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 260
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPersistentFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/lge/lgdata/LGDataRuntimeFeature;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public loadFeatures()V
    .locals 14

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "loadedFeatureNumber":I
    const-string v1, "loadFeatures():  = /data/logger/data_features_test.xml"

    invoke-direct {p0, v1}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->log(Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/logger/data_features_test.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 100
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v2, v3

    .line 104
    nop

    .line 107
    :try_start_1
    invoke-static {}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 108
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 110
    const/4 v5, 0x0

    .line 111
    .local v5, "type":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    .line 112
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v5, v6

    goto :goto_0

    .line 115
    :cond_0
    const-string v7, "features"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 120
    :cond_1
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v7

    .line 121
    if-ne v5, v6, :cond_2

    .line 122
    nop

    .line 167
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    nop

    .line 169
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :goto_2
    goto/16 :goto_6

    .line 170
    :catch_0
    move-exception v3

    goto :goto_2

    .line 124
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_2
    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 125
    goto :goto_1

    .line 127
    :cond_3
    :try_start_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "nodeName":Ljava/lang/String;
    const-string v8, "feature"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 132
    const-string v8, "name"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "attrFeatureName":Ljava/lang/String;
    const-string v9, "enable"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "attrEnabled":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 136
    const-string v10, "loadFeatures(): Invalid line, no feature name attribute"

    invoke-direct {p0, v10}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->logw(Ljava/lang/String;)V

    .line 137
    goto :goto_1

    .line 140
    :cond_4
    if-nez v9, :cond_5

    .line 141
    const-string v10, "loadFeatures(): Invalid line, no feature enabled attribute"

    invoke-direct {p0, v10}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->logw(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    goto :goto_1

    .line 146
    :cond_5
    :try_start_4
    invoke-static {v8}, Lcom/lge/lgdata/LGDataRuntimeFeature;->valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataRuntimeFeature;

    move-result-object v10

    .line 147
    .local v10, "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "true"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "1"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move v11, v6

    .line 148
    .local v11, "enabled":Z
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadFeatures(): new persistent feature found, feature="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", enabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->log(Ljava/lang/String;)V

    .line 150
    iget-object v12, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v13, Ljava/lang/Boolean;

    invoke-direct {v13, v11}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v12, v10, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    nop

    .end local v10    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    .end local v11    # "enabled":Z
    add-int/lit8 v0, v0, 0x1

    .line 155
    goto :goto_5

    .line 153
    :catch_1
    move-exception v10

    .line 154
    .local v10, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadFeatures(): Failed to find runtime feature for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->logw(Ljava/lang/String;)V

    .line 157
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "attrFeatureName":Ljava/lang/String;
    .end local v9    # "attrEnabled":Ljava/lang/String;
    .end local v10    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_5
    goto/16 :goto_1

    .line 129
    .restart local v7    # "nodeName":Ljava/lang/String;
    :cond_8
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFeatures(): does not well-formed. Invalid tagName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "loadedFeatureNumber":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/lge/lgdata/LGDataFeaturePersistentTester;
    throw v4

    .line 116
    .end local v7    # "nodeName":Ljava/lang/String;
    .restart local v0    # "loadedFeatureNumber":I
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/lge/lgdata/LGDataFeaturePersistentTester;
    :cond_9
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "loadFeatures(): does not start with features tag"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "loadedFeatureNumber":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/lge/lgdata/LGDataFeaturePersistentTester;
    throw v4
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    .restart local v0    # "loadedFeatureNumber":I
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/lge/lgdata/LGDataFeaturePersistentTester;
    :catchall_0
    move-exception v3

    goto :goto_7

    .line 162
    :catch_2
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "loadFeatures(): Error loading item"

    invoke-direct {p0, v4, v3}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 169
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 159
    :catch_3
    move-exception v3

    .line 160
    .local v3, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    const-string v4, "loadFeatures(): Error parsing item"

    invoke-direct {p0, v4, v3}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 167
    .end local v3    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 169
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 176
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFeatures(): Persistent Feature Loading Completed, Number of loaded feature(s)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->log(Ljava/lang/String;)V

    .line 178
    return-void

    .line 169
    :goto_7
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 172
    goto :goto_8

    .line 170
    :catch_4
    move-exception v4

    .line 172
    :goto_8
    throw v3

    .line 101
    :catch_5
    move-exception v3

    .line 102
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    const-string v4, "loadFeatures(): No feature file, fileName=/data/logger/data_features_test.xml"

    invoke-direct {p0, v4}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->log(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public saveFeatures()V
    .locals 11

    .line 194
    const-string v0, "features"

    const-string v1, "\n"

    const-string/jumbo v2, "saveFeatures():  = /data/logger/data_features_test.xml"

    invoke-direct {p0, v2}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->log(Ljava/lang/String;)V

    .line 196
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/logger/data_features_test.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 201
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v3, v4

    .line 205
    nop

    .line 207
    invoke-static {}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 210
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-eqz v4, :cond_1

    .line 211
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 212
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 213
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    iget-object v6, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 218
    .local v7, "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    iget-object v8, p0, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->mPersistentlyChangedFeatures:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 219
    .local v8, "value":Ljava/lang/Boolean;
    invoke-virtual {v7}, Lcom/lge/lgdata/LGDataRuntimeFeature;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {p0, v4, v9, v10}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->writeFeatureAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 220
    .end local v7    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    .end local v8    # "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 222
    :cond_0
    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_1

    .line 226
    :cond_1
    const-string/jumbo v0, "saveFeatures() XmlSerializer is null"

    invoke-direct {p0, v0}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :goto_1
    nop

    .line 235
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 238
    :goto_2
    goto :goto_3

    .line 236
    :catch_0
    move-exception v0

    goto :goto_2

    .line 233
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 228
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 235
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 241
    :goto_3
    return-void

    .line 235
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 238
    goto :goto_5

    .line 236
    :catch_2
    move-exception v1

    .line 238
    :goto_5
    throw v0

    .line 202
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_3
    move-exception v0

    .line 203
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "saveFeatures(): Error to open file, fileName=/data/logger/data_features_test.xml"

    invoke-direct {p0, v1, v0}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 204
    return-void
.end method
