.class public final Lcom/android/ims/ImsFeatureProvider;
.super Ljava/lang/Object;
.source "ImsFeatureProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCdmaLess(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 123
    const-string v0, "com.lge.ims.cdmaless"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasCdmaLessForPhone(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .line 127
    sget-boolean v0, Lcom/android/ims/LGImsFeature;->LAOP:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 128
    const-string v0, "com.lge.ims.cdmaless.xml"

    invoke-static {v0}, Lcom/android/ims/LGImsFeature;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 129
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 132
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 134
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "com.lge.ims.cdmaless"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static hasEab(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 61
    const-string v0, "com.lge.ims.service.eab"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 164
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeatureInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 165
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasFeature(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .line 172
    if-gtz p2, :cond_0

    .line 173
    invoke-static {p0, p1}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 176
    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    invoke-static {p0, p1, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeatureInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 177
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hasFeatureInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 219
    .local v1, "result":Landroid/os/Bundle;
    :try_start_0
    sget-object v2, Lcom/android/ims/LGImsFeature;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "hasFeature"

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsFeatureProvider;->log(Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x0

    goto :goto_1

    .line 221
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/ImsFeatureProvider;->log(Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x0

    .line 227
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_0
    nop

    .line 229
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    return v2
.end method

.method public static hasHVoLte(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 107
    const-string v0, "com.lge.ims.hvolte"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasHVoLteForPhone(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .line 111
    sget-boolean v0, Lcom/android/ims/LGImsFeature;->LAOP:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "com.lge.ims.hvolte.xml"

    invoke-static {v0}, Lcom/android/ims/LGImsFeature;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 116
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 118
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "com.lge.ims.hvolte"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static hasJansky(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 66
    const-string v0, "com.lge.ims.jansky"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasJanskyForPhone(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .line 70
    sget-boolean v0, Lcom/android/ims/LGImsFeature;->LAOP:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "com.lge.ims.jansky.xml"

    invoke-static {v0}, Lcom/android/ims/LGImsFeature;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 75
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 77
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "com.lge.ims.jansky"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static hasLgeFeatureIms()Z
    .locals 2

    .line 41
    invoke-static {}, Lcom/lge/config/Features2;->ims()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static hasMediaCamera(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # I

    .line 102
    const-string v0, "com.lge.ims.media.camera"

    invoke-static {p0, v0, p1}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static hasMediaEvs(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 92
    const-string v0, "com.lge.ims.media.evs"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMediaEvsWb(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 97
    const-string v0, "com.lge.ims.media.evs.wb"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasRtt(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 87
    const-string v0, "com.lge.ims.rtt"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasServerIms(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 139
    invoke-static {}, Lcom/android/ims/ImsFeatureProvider;->hasLgeFeatureIms()Z

    move-result v0

    return v0
.end method

.method public static hasServerMmpf(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 144
    const-string v0, "com.lge.ims.mmpfservice"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasServerSms(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 149
    const-string v0, "com.lge.server.ims.sms"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasServerSmsForPhone(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .line 153
    sget-boolean v0, Lcom/android/ims/LGImsFeature;->LAOP:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "com.lge.server.ims.sms.xml"

    invoke-static {v0}, Lcom/android/ims/LGImsFeature;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 158
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 160
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "com.lge.server.ims.sms"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static hasSoftphone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 82
    const-string v0, "com.lge.ims.softphone"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasVoLte(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 46
    const-string v0, "com.lge.ims.volte"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasVoWiFi(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 56
    const-string v0, "com.lge.ims.vowifi"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasVt(Landroid/content/Context;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 51
    const-string v0, "com.lge.ims.vt"

    invoke-static {p0, v0}, Lcom/android/ims/ImsFeatureProvider;->hasFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsFeatureProvider] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public static registerObserver(Landroid/content/Context;Landroid/database/ContentObserver;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 187
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 188
    return v0

    .line 192
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/ims/LGImsFeature;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    nop

    .line 198
    return v3

    .line 194
    :catchall_0
    move-exception v1

    .line 195
    .local v1, "t":Ljava/lang/Throwable;
    return v0
.end method

.method public static unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 202
    if-nez p0, :cond_0

    .line 203
    return-void

    .line 207
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    nop

    .line 212
    return-void

    .line 208
    :catchall_0
    move-exception v0

    .line 210
    .local v0, "t":Ljava/lang/Throwable;
    return-void
.end method
