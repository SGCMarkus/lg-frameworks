.class public final Lcom/android/ims/LGImsFeature;
.super Ljava/lang/Object;
.source "LGImsFeature.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.ims.provider.ims_feature"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FEATURE_CDMALESS:Ljava/lang/String; = "com.lge.ims.cdmaless"

.field public static final FEATURE_EAB:Ljava/lang/String; = "com.lge.ims.service.eab"

.field public static final FEATURE_HVOLTE:Ljava/lang/String; = "com.lge.ims.hvolte"

.field public static final FEATURE_JANSKY:Ljava/lang/String; = "com.lge.ims.jansky"

.field public static final FEATURE_MEDIA_CAMERA:Ljava/lang/String; = "com.lge.ims.media.camera"

.field public static final FEATURE_MEDIA_EVS:Ljava/lang/String; = "com.lge.ims.media.evs"

.field public static final FEATURE_MEDIA_EVS_WB:Ljava/lang/String; = "com.lge.ims.media.evs.wb"

.field public static final FEATURE_NO_SIM_CAPS:I

.field public static final FEATURE_RTT:Ljava/lang/String; = "com.lge.ims.rtt"

.field public static final FEATURE_SERVER_MMPF:Ljava/lang/String; = "com.lge.ims.mmpfservice"

.field public static final FEATURE_SERVER_SMS:Ljava/lang/String; = "com.lge.server.ims.sms"

.field public static final FEATURE_SOFTPHONE:Ljava/lang/String; = "com.lge.ims.softphone"

.field public static final FEATURE_VOLTE:Ljava/lang/String; = "com.lge.ims.volte"

.field public static final FEATURE_VOLTE_OPEN:Z

.field public static final FEATURE_VOWIFI:Ljava/lang/String; = "com.lge.ims.vowifi"

.field public static final FEATURE_VT:Ljava/lang/String; = "com.lge.ims.vt"

.field public static final FILE_XML:Ljava/lang/String; = "com.lge.ims.xml"

.field public static final FILE_XML_CDMALESS:Ljava/lang/String; = "com.lge.ims.cdmaless.xml"

.field public static final FILE_XML_HVOLTE:Ljava/lang/String; = "com.lge.ims.hvolte.xml"

.field public static final FILE_XML_JANSKY:Ljava/lang/String; = "com.lge.ims.jansky.xml"

.field public static final FILE_XML_SMS:Ljava/lang/String; = "com.lge.server.ims.sms.xml"

.field public static final KEY_ARG_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final LAOP:Z

.field public static final METHOD_HAS_FEATURE:Ljava/lang/String; = "hasFeature"

.field public static final METHOD_UPDATE_FEATURE:Ljava/lang/String; = "updateFeature"

.field public static final PATH_CONFIG_ETC:Ljava/lang/String;

.field public static final PATH_CONFIG_LEGACY:Ljava/lang/String;

.field public static final PATH_COTA:Ljava/lang/String; = "/data/shared/cust/config"

.field public static final PATH_CUPSS_DEFAULT:Ljava/lang/String;

.field public static final PATH_CUPSS_ROOTDIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    nop

    .line 54
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.product.lge.ims.no_sim_caps"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/ims/LGImsFeature;->FEATURE_NO_SIM_CAPS:I

    .line 55
    nop

    .line 56
    const-string/jumbo v1, "persist.product.lge.ims.volte_open"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/android/ims/LGImsFeature;->FEATURE_VOLTE_OPEN:Z

    .line 60
    const-string v1, "content://com.lge.ims.provider.ims_feature"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/ims/LGImsFeature;->CONTENT_URI:Landroid/net/Uri;

    .line 68
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/ims/LGImsFeature;->getDefaultCupssPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/ims/LGImsFeature;->PATH_CUPSS_DEFAULT:Ljava/lang/String;

    .line 69
    sget-object v1, Lcom/android/ims/LGImsFeature;->PATH_CUPSS_DEFAULT:Ljava/lang/String;

    const-string/jumbo v3, "ro.vendor.lge.capp_cupss.rootdir"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/ims/LGImsFeature;->PATH_CUPSS_ROOTDIR:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/ims/LGImsFeature;->PATH_CUPSS_ROOTDIR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/config"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/ims/LGImsFeature;->PATH_CONFIG_LEGACY:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/ims/LGImsFeature;->PATH_CUPSS_ROOTDIR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/etc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/ims/LGImsFeature;->PATH_CONFIG_ETC:Ljava/lang/String;

    .line 73
    nop

    .line 74
    const-string/jumbo v1, "ro.vendor.lge.laop"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    move v0, v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    sput-boolean v0, Lcom/android/ims/LGImsFeature;->LAOP:Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCupssConfigDir()Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/android/ims/LGImsFeature;->PATH_CONFIG_LEGACY:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultCupssPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "defValue"    # Ljava/lang/String;

    .line 108
    const-string v0, "/product/OP"

    .line 110
    .local v0, "defaultRootPath":Ljava/lang/String;
    invoke-static {}, Lcom/lge/sysprop/ExportedVendorProperties;->capp_cupss_op_dir()Ljava/util/Optional;

    move-result-object v1

    .line 111
    const-string v2, "/product/OP"

    if-eqz p0, :cond_0

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 110
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "cupssOP":Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    move-object v2, p0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public static getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 86
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/shared/cust/config"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/ims/LGImsFeature;->getCupssConfigDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x0

    return-object v1

    .line 97
    :cond_0
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
