.class public final Lcom/lge/os/PropertyUtils;
.super Ljava/lang/Object;
.source "PropertyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/os/PropertyUtils$PROP_CODE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PropertyUtils"

.field private static mPropertyService:Lcom/lge/os/IPropertyService;

.field private static final mSyspropTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/lge/os/PropertyUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/os/PropertyUtils;->sInstance:Lcom/lge/os/PropertyUtils;

    .line 23
    sput-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/os/PropertyUtils;->mSyspropTable:Ljava/util/HashMap;

    .line 207
    sget-object v0, Lcom/lge/os/PropertyUtils;->mSyspropTable:Ljava/util/HashMap;

    const/16 v1, 0xace

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sbp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/lge/os/PropertyUtils;->mSyspropTable:Ljava/util/HashMap;

    const/16 v1, 0xab2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sim_profile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/lge/os/PropertyUtils;->mSyspropTable:Ljava/util/HashMap;

    const/16 v1, 0x963

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "suffix"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    :try_start_0
    invoke-direct {p0}, Lcom/lge/os/PropertyUtils;->getPropertyService()Lcom/lge/os/IPropertyService;

    move-result-object v0

    sput-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    nop

    .line 246
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can not get IProperty service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lcom/lge/os/PropertyUtils;
    .locals 2

    .line 230
    sget-object v0, Lcom/lge/os/PropertyUtils;->sInstance:Lcom/lge/os/PropertyUtils;

    if-nez v0, :cond_1

    .line 231
    const-class v0, Lcom/lge/os/PropertyUtils;

    monitor-enter v0

    .line 232
    :try_start_0
    sget-object v1, Lcom/lge/os/PropertyUtils;->sInstance:Lcom/lge/os/PropertyUtils;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Lcom/lge/os/PropertyUtils;

    invoke-direct {v1}, Lcom/lge/os/PropertyUtils;-><init>()V

    sput-object v1, Lcom/lge/os/PropertyUtils;->sInstance:Lcom/lge/os/PropertyUtils;

    .line 235
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 237
    :cond_1
    :goto_0
    sget-object v0, Lcom/lge/os/PropertyUtils;->sInstance:Lcom/lge/os/PropertyUtils;

    return-object v0
.end method

.method private getPropertyService()Lcom/lge/os/IPropertyService;
    .locals 1

    .line 249
    nop

    .line 250
    const-string v0, "lge_property"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/lge/os/IPropertyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/os/IPropertyService;

    move-result-object v0

    return-object v0
.end method

.method private static getSyspropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 214
    const-string v0, "method name must not be null."

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    :try_start_0
    const-string v0, "com.lge.sysprop.ExportedVendorProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 217
    .local v0, "c":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 218
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Ljava/util/Optional;

    invoke-virtual {v3, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 220
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p1
.end method


# virtual methods
.method public get(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # I
    .param p2, "def"    # Ljava/lang/String;

    .line 258
    const-string v0, "def must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    const-string v1, "PropertyUtils"

    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/lge/os/PropertyUtils;->getPropertyService()Lcom/lge/os/IPropertyService;

    move-result-object v0

    sput-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    .line 263
    sget-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PropertyService not ready, get: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object p2

    .line 270
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/os/PropertyUtils;->mSyspropTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    sget-object v0, Lcom/lge/os/PropertyUtils;->mSyspropTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/lge/os/PropertyUtils;->getSyspropValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 273
    :cond_1
    sget-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    invoke-interface {v0, p1, p2}, Lcom/lge/os/IPropertyService;->getVendorProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found LG vendor property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    return-object p2
.end method

.method public getBoolean(IZ)Z
    .locals 4
    .param p1, "key"    # I
    .param p2, "def"    # Z

    .line 311
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/os/PropertyUtils;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PropertyUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return p2
.end method

.method public getInt(II)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "def"    # I

    .line 285
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/os/PropertyUtils;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PropertyUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return p2
.end method

.method public getLong(IJ)J
    .locals 4
    .param p1, "key"    # I
    .param p2, "def"    # J

    .line 298
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/os/PropertyUtils;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PropertyUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-wide p2
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "key"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 324
    const-string/jumbo v0, "val must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    const-string v1, "PropertyUtils"

    if-nez v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/lge/os/PropertyUtils;->getPropertyService()Lcom/lge/os/IPropertyService;

    move-result-object v0

    sput-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    .line 329
    sget-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PropertyService not ready, set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 336
    :cond_0
    :try_start_0
    sget-object v0, Lcom/lge/os/PropertyUtils;->mPropertyService:Lcom/lge/os/IPropertyService;

    invoke-interface {v0, p1, p2}, Lcom/lge/os/IPropertyService;->setVendorProperty(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not set LG vendor property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
