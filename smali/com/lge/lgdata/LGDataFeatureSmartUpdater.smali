.class public Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
.super Ljava/lang/Object;
.source "LGDataFeatureSmartUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;,
        Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;,
        Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;,
        Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final SMART_UPDATE_PATH:Ljava/lang/String; = "/data/shared/lgdata/config/"

.field private static final TAG:Ljava/lang/String; = "LGDataFeatureSmartUpdater"

.field private static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final TAG_FEATURE_ATTR_CHIPSET:Ljava/lang/String; = "chipset"

.field private static final TAG_FEATURE_ATTR_ENABLE:Ljava/lang/String; = "enable"

.field private static final TAG_FEATURE_ATTR_MVNO_DATA:Ljava/lang/String; = "mvno_match_data"

.field private static final TAG_FEATURE_ATTR_MVNO_TYPE:Ljava/lang/String; = "mvno_type"

.field private static final TAG_FEATURE_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final TAG_FEATURE_ATTR_NUMERIC:Ljava/lang/String; = "numeric"

.field private static final TAG_FEATURE_ATTR_PROPERTY_NAME:Ljava/lang/String; = "prop_name"

.field private static final TAG_FEATURE_ATTR_PROPERTY_VALUE:Ljava/lang/String; = "prop_value"

.field private static final TAG_ROOT:Ljava/lang/String; = "features"

.field private static final TAG_ROOT_ATTR_VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 429
    const-string v0, "LGDataFeatureSmartUpdater"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 440
    const-string v0, "LGDataFeatureSmartUpdater"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 444
    const-string v0, "LGDataFeatureSmartUpdater"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 435
    const-string v0, "LGDataFeatureSmartUpdater"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method private needFeatureUpdate(Ljava/lang/String;)Z
    .locals 12
    .param p1, "xmlVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "needFeatureUpdate(): parameter xmlVersion is empty"

    invoke-direct {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->logw(Ljava/lang/String;)V

    .line 243
    return v1

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 247
    .local v0, "xmlSdFomatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "yyDDDHHmm"

    const/16 v4, 0x9

    if-ne v2, v4, :cond_1

    .line 248
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    .line 250
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyMMddHHmm"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 257
    :goto_0
    const-string/jumbo v2, "ro.build.version.incremental"

    const-string v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "swVersion":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_3

    .line 261
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 263
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 265
    .local v3, "swSdFomatter":Ljava/text/SimpleDateFormat;
    const-wide/16 v4, -0x1

    .line 268
    .local v4, "timeDiff":J
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 269
    .local v6, "xmlVersionDate":Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 270
    .local v7, "swVersionDate":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "needFeatureUpdate(): xmlVersionDate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", swVersionDate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", timeDiff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v6    # "xmlVersionDate":Ljava/util/Date;
    .end local v7    # "swVersionDate":Ljava/util/Date;
    goto :goto_1

    .line 273
    :catch_0
    move-exception v6

    .line 274
    .local v6, "pe":Ljava/text/ParseException;
    const-string v7, "needFeatureUpdate(): Fail to parse version information"

    invoke-direct {p0, v7, v6}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 277
    .end local v6    # "pe":Ljava/text/ParseException;
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 259
    .end local v3    # "swSdFomatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "timeDiff":J
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needFeatureUpdate(): Wrong incremental version information, ro.build.version.incremental="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v2    # "swVersion":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needFeatureUpdate(): wrong version format, xmlVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->logw(Ljava/lang/String;)V

    .line 253
    return v1
.end method

.method private static newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 3

    .line 418
    :try_start_0
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 419
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 420
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    return-object v0

    .line 422
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public loadFeatures(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/lgdata/ILGDataFeatureSet;
    .locals 20
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .line 282
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;

    invoke-direct {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;-><init>(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;)V

    move-object v4, v0

    .line 284
    .local v4, "ret":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/shared/lgdata/config/features_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFeatures():  = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", operator="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", country="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->log(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 289
    .local v6, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 292
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f

    move-object v7, v0

    .line 296
    nop

    .line 299
    :try_start_1
    invoke-static {}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v9, v0

    .line 300
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    const/4 v0, 0x0

    move v10, v0

    .line 303
    .local v10, "type":I
    :goto_0
    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    const/4 v0, 0x2

    if-eq v10, v0, :cond_0

    .line 304
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, v0

    goto :goto_0

    .line 398
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v6

    goto/16 :goto_10

    .line 394
    :catch_0
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_c

    .line 391
    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_d

    .line 307
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "type":I
    :cond_0
    :try_start_3
    const-string v0, "features"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 312
    const-string/jumbo v0, "version"

    invoke-interface {v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->needFeatureUpdate(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_1

    .line 313
    :try_start_4
    const-string v0, "loadFeatures(): SW version is higher than xml feature version, do not load xml feature file"

    invoke-direct {v1, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    goto :goto_1

    .line 316
    :catch_2
    move-exception v0

    .line 319
    :goto_1
    nop

    .line 399
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 402
    goto :goto_2

    .line 400
    :catch_3
    move-exception v0

    .line 319
    :goto_2
    return-object v8

    .line 323
    :cond_1
    :goto_3
    :try_start_7
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v10, v0

    .line 324
    if-ne v10, v11, :cond_2

    .line 325
    nop

    .line 399
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 402
    move-object/from16 v16, v6

    goto/16 :goto_f

    .line 400
    :catch_4
    move-exception v0

    .line 403
    move-object/from16 v16, v6

    goto/16 :goto_f

    .line 327
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "type":I
    :cond_2
    const/4 v0, 0x3

    if-eq v10, v0, :cond_f

    const/4 v0, 0x4

    if-ne v10, v0, :cond_3

    .line 328
    move-object/from16 v16, v6

    move/from16 v18, v10

    goto/16 :goto_b

    .line 330
    :cond_3
    :try_start_9
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 331
    .local v12, "nodeName":Ljava/lang/String;
    const-string v0, "feature"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 335
    const-string v0, "name"

    invoke-interface {v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 336
    .local v13, "attrFeatureName":Ljava/lang/String;
    const-string v0, "enable"

    invoke-interface {v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 337
    .local v14, "attrEnabled":Ljava/lang/String;
    const-string v0, "chipset"

    invoke-interface {v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v15, v0

    .line 339
    .local v15, "attrChipset":Ljava/lang/String;
    if-nez v13, :cond_4

    .line 340
    :try_start_a
    const-string v0, "loadFeatures(): Invalid line, no feature name attribute"

    invoke-direct {v1, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->logw(Ljava/lang/String;)V

    .line 341
    move-object/from16 v16, v6

    move/from16 v18, v10

    goto/16 :goto_b

    .line 344
    :cond_4
    if-nez v14, :cond_5

    .line 345
    const-string v0, "loadFeatures(): Invalid line, no feature enabled attribute"

    invoke-direct {v1, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->logw(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 346
    move-object/from16 v16, v6

    move/from16 v18, v10

    goto/16 :goto_b

    .line 350
    :cond_5
    :try_start_b
    invoke-static {v13}, Lcom/lge/lgdata/LGDataRuntimeFeature;->valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataRuntimeFeature;

    move-result-object v0

    .line 351
    .local v0, "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v8, "true"

    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v8, :cond_7

    :try_start_c
    const-string v8, "1"

    invoke-static {v14, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    .line 385
    .end local v0    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :catch_5
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v10

    goto/16 :goto_9

    .line 351
    .restart local v0    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :cond_7
    :goto_4
    const/4 v11, 0x1

    :goto_5
    move v8, v11

    .line 352
    .local v8, "enabled":Z
    :try_start_d
    sget-object v11, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->ALL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    .line 353
    .local v11, "chipsetType":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-nez v16, :cond_a

    .line 354
    :try_start_e
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qct"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 355
    sget-object v2, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->QCT:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    move-object v11, v2

    goto :goto_6

    .line 356
    :cond_8
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mtk"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 357
    sget-object v2, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->MTK:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    move-object v11, v2

    goto :goto_6

    .line 359
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFeatures(): Chipset.ALL is used for feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", because chipset attribute is unknown, chipset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->logw(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 363
    :cond_a
    :goto_6
    :try_start_f
    new-instance v2, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    invoke-direct {v2, v1, v0, v8, v11}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;-><init>(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Lcom/lge/lgdata/LGDataRuntimeFeature;ZLcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;)V

    .line 365
    .local v2, "newXmlFeature":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    const-string/jumbo v3, "prop_name"
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .end local v6    # "file":Ljava/io/File;
    .local v16, "file":Ljava/io/File;
    :try_start_10
    invoke-interface {v9, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "attrPropertyName":Ljava/lang/String;
    const-string/jumbo v6, "numeric"

    move/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "enabled":Z
    .local v17, "enabled":Z
    invoke-interface {v9, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, "attrNumeric":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 370
    const-string/jumbo v8, "prop_value"
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move/from16 v18, v10

    const/4 v10, 0x0

    .end local v10    # "type":I
    .local v18, "type":I
    :try_start_11
    invoke-interface {v9, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 371
    .local v8, "attrPropertyValue":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 372
    invoke-virtual {v2, v3, v8}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->addPropCondition(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    goto :goto_7

    .line 374
    :cond_b
    invoke-virtual {v2, v3}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->addPropCondition(Ljava/lang/String;)Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    .line 376
    .end local v8    # "attrPropertyValue":Ljava/lang/String;
    :goto_7
    move-object/from16 v19, v3

    goto :goto_8

    .end local v18    # "type":I
    .restart local v10    # "type":I
    :cond_c
    move/from16 v18, v10

    .end local v10    # "type":I
    .restart local v18    # "type":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 378
    const-string v8, "mvno_type"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, "attrMvnoType":Ljava/lang/String;
    const-string v10, "mvno_match_data"

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "attrPropertyName":Ljava/lang/String;
    .local v19, "attrPropertyName":Ljava/lang/String;
    invoke-interface {v9, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 380
    .local v3, "attrMvnoData":Ljava/lang/String;
    invoke-virtual {v2, v6, v8, v3}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->addSimCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    goto :goto_8

    .line 376
    .end local v8    # "attrMvnoType":Ljava/lang/String;
    .end local v19    # "attrPropertyName":Ljava/lang/String;
    .local v3, "attrPropertyName":Ljava/lang/String;
    :cond_d
    move-object/from16 v19, v3

    .line 383
    .end local v3    # "attrPropertyName":Ljava/lang/String;
    .restart local v19    # "attrPropertyName":Ljava/lang/String;
    :goto_8
    invoke-virtual {v4, v2}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->addXmlFeature(Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 387
    .end local v0    # "feature":Lcom/lge/lgdata/LGDataRuntimeFeature;
    .end local v2    # "newXmlFeature":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    .end local v6    # "attrNumeric":Ljava/lang/String;
    .end local v11    # "chipsetType":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;
    .end local v17    # "enabled":Z
    .end local v19    # "attrPropertyName":Ljava/lang/String;
    goto :goto_a

    .line 385
    :catch_6
    move-exception v0

    goto :goto_9

    .end local v18    # "type":I
    .restart local v10    # "type":I
    :catch_7
    move-exception v0

    move/from16 v18, v10

    .end local v10    # "type":I
    .restart local v18    # "type":I
    goto :goto_9

    .end local v16    # "file":Ljava/io/File;
    .end local v18    # "type":I
    .local v6, "file":Ljava/io/File;
    .restart local v10    # "type":I
    :catch_8
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v10

    .line 386
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "type":I
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v18    # "type":I
    :goto_9
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFeatures(): Failed to find runtime feature for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->logw(Ljava/lang/String;)V

    .line 389
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v13    # "attrFeatureName":Ljava/lang/String;
    .end local v14    # "attrEnabled":Ljava/lang/String;
    .end local v15    # "attrChipset":Ljava/lang/String;
    :goto_a
    goto :goto_b

    .line 332
    .end local v16    # "file":Ljava/io/File;
    .end local v18    # "type":I
    .restart local v6    # "file":Ljava/io/File;
    .restart local v10    # "type":I
    .restart local v12    # "nodeName":Ljava/lang/String;
    :cond_e
    move-object/from16 v16, v6

    move/from16 v18, v10

    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "type":I
    .restart local v16    # "file":Ljava/io/File;
    .restart local v18    # "type":I
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFeatures(): does not well-formed. Invalid tagName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "ret":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
    .end local p1    # "operator":Ljava/lang/String;
    .end local p2    # "country":Ljava/lang/String;
    throw v0

    .line 327
    .end local v12    # "nodeName":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v4    # "ret":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "type":I
    .restart local p0    # "this":Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
    .restart local p1    # "operator":Ljava/lang/String;
    .restart local p2    # "country":Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v6

    move/from16 v18, v10

    .line 323
    .end local v6    # "file":Ljava/io/File;
    .end local v10    # "type":I
    .restart local v16    # "file":Ljava/io/File;
    .restart local v18    # "type":I
    :goto_b
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, v16

    move/from16 v10, v18

    const/4 v8, 0x0

    const/4 v11, 0x1

    goto/16 :goto_3

    .line 308
    .end local v16    # "file":Ljava/io/File;
    .end local v18    # "type":I
    .restart local v6    # "file":Ljava/io/File;
    .restart local v10    # "type":I
    :cond_10
    move-object/from16 v16, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v16    # "file":Ljava/io/File;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "loadFeatures(): does not start with features tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "ret":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
    .end local p1    # "operator":Ljava/lang/String;
    .end local p2    # "country":Ljava/lang/String;
    throw v0
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 394
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    .restart local v4    # "ret":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
    .restart local p1    # "operator":Ljava/lang/String;
    .restart local p2    # "country":Ljava/lang/String;
    :catch_9
    move-exception v0

    goto :goto_c

    .line 391
    :catch_a
    move-exception v0

    goto :goto_d

    .line 398
    .end local v16    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    move-object v2, v0

    .end local v6    # "file":Ljava/io/File;
    .restart local v16    # "file":Ljava/io/File;
    goto :goto_10

    .line 394
    .end local v16    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_b
    move-exception v0

    move-object/from16 v16, v6

    .line 395
    .end local v6    # "file":Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "file":Ljava/io/File;
    :goto_c
    :try_start_13
    const-string v2, "loadFeatures(): Error loading item"

    invoke-direct {v1, v2, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_14
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    goto :goto_e

    .line 391
    .end local v16    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_c
    move-exception v0

    move-object/from16 v16, v6

    .line 392
    .end local v6    # "file":Ljava/io/File;
    .local v0, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "file":Ljava/io/File;
    :goto_d
    :try_start_15
    const-string v2, "loadFeatures(): Error parsing item"

    invoke-direct {v1, v2, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 399
    .end local v0    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    .line 402
    :goto_e
    goto :goto_f

    .line 400
    :catch_d
    move-exception v0

    .line 403
    nop

    .line 405
    :goto_f
    invoke-virtual {v4}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 406
    const/4 v2, 0x0

    return-object v2

    .line 409
    :cond_11
    return-object v4

    .line 398
    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 399
    :goto_10
    :try_start_17
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    .line 402
    goto :goto_11

    .line 400
    :catch_e
    move-exception v0

    .line 402
    :goto_11
    throw v2

    .line 293
    .end local v16    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_f
    move-exception v0

    move-object/from16 v16, v6

    .line 294
    .end local v6    # "file":Ljava/io/File;
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    .restart local v16    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFeatures(): No feature file, fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->log(Ljava/lang/String;)V

    .line 295
    const/4 v2, 0x0

    return-object v2
.end method
