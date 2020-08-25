.class public final Lcom/lge/lgdata/DataProfileInfo;
.super Ljava/lang/Object;
.source "DataProfileInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA] "

.field public static final PROFILE_ACG_ADMIN:I = 0x2

.field public static final PROFILE_ACG_DEFAULT:I = 0x1

.field public static final PROFILE_ACG_EMERGENCY:I = 0x4

.field public static final PROFILE_ACG_IMS:I = 0x5

.field public static final PROFILE_ACG_TETHERING:I = 0x3

.field private static PROFILE_ADMIN:I = 0x0

.field private static PROFILE_ATT_DEFAULT:I = 0x0

.field private static PROFILE_ATT_EMERGENCY:I = 0x0

.field private static PROFILE_ATT_IMS:I = 0x0

.field public static PROFILE_CANADA_DEFAULT:I = 0x0

.field public static PROFILE_CANADA_DUN:I = 0x0

.field public static PROFILE_CANADA_IMS:I = 0x0

.field public static PROFILE_CANADA_XCAP:I = 0x0

.field public static final PROFILE_DCM_DEFAULT:I

.field public static final PROFILE_DCM_EMERGENCY:I = 0x4

.field public static final PROFILE_DCM_IMS:I = 0x3

.field public static final PROFILE_DCM_INITIAL_ATTACH:I

.field private static PROFILE_DEFAULT:I = 0x0

.field private static PROFILE_DUN:I = 0x0

.field private static PROFILE_EMERGENCY:I = 0x0

.field private static PROFILE_FOTA:I = 0x0

.field private static PROFILE_IMS:I = 0x0

.field private static PROFILE_INITIAL_ATTACH:I = 0x0

.field public static final PROFILE_JP_DEFAULT:I = 0x1

.field public static final PROFILE_JP_EMERGENCY:I = 0x4

.field public static final PROFILE_JP_IMS:I = 0x3

.field public static final PROFILE_JP_INITIAL_ATTACH:I = 0x2

.field public static final PROFILE_KDDI_ADMIN:I = 0x5

.field public static final PROFILE_KDDI_DEFAULT:I = 0x1

.field public static final PROFILE_KDDI_DUN:I = 0x4

.field public static final PROFILE_KDDI_EMERGENCY:I = 0x7

.field public static final PROFILE_KDDI_IMS:I = 0x3

.field public static final PROFILE_KDDI_INITIAL_ATTACH:I = 0x2

.field public static final PROFILE_KDDI_XCAP:I = 0x6

.field public static final PROFILE_KR_DEFAULT:I = 0x3

.field public static final PROFILE_KR_EMERGENCY:I = 0x4

.field public static final PROFILE_KR_IMS:I = 0x2

.field public static final PROFILE_KR_INITIAL_ATTACH:I = 0x1

.field public static final PROFILE_KR_OTA:I = 0x5

.field public static final PROFILE_SB_DEFAULT:I = 0x1

.field public static final PROFILE_SB_EMERGENCY:I = 0x3

.field public static final PROFILE_SB_IMS:I = 0x2

.field public static PROFILE_SPCS_CINET:I = 0x0

.field private static PROFILE_SPCS_DEFAULT:I = 0x0

.field private static PROFILE_SPCS_DUN:I = 0x0

.field private static PROFILE_SPCS_FOTA:I = 0x0

.field private static PROFILE_SPCS_IMS:I = 0x0

.field public static final PROFILE_SPCS_INITIAL_ATTACH:I = 0x1

.field public static PROFILE_TMUS_CBS:I = 0x0

.field public static PROFILE_TMUS_DEFAULT:I = 0x0

.field public static PROFILE_TMUS_DUN:I = 0x0

.field public static PROFILE_TMUS_EMERGENCY:I = 0x0

.field public static PROFILE_TMUS_IMS:I = 0x0

.field private static PROFILE_USC_DEFAULT:I = 0x0

.field private static PROFILE_USC_EMERGENCY:I = 0x0

.field private static PROFILE_USC_IMS:I = 0x0

.field public static final PROFILE_VZWAPP:I = 0x4

.field public static final PROFILE_VZWDUN:I = 0x5

.field public static final PROFILE_VZW_ADMIN:I = 0x2

.field public static final PROFILE_VZW_DEFAULT:I = 0x3

.field public static final PROFILE_VZW_EMERGENCY:I = 0x6

.field public static final PROFILE_VZW_IMS:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "DataProfileInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 35
    sput v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    .line 36
    const/4 v1, 0x2

    sput v1, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_ADMIN:I

    .line 37
    const/4 v2, 0x3

    sput v2, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_IMS:I

    .line 38
    const/4 v3, 0x5

    sput v3, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    .line 39
    const/4 v4, 0x6

    sput v4, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    .line 40
    const/4 v4, 0x7

    sput v4, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DUN:I

    .line 59
    sput v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    .line 60
    sput v1, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    .line 61
    sput v2, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    .line 62
    const/4 v4, 0x4

    sput v4, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_IMS:I

    .line 63
    sput v3, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_CINET:I

    .line 66
    sput v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    .line 67
    sput v1, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    .line 68
    sput v2, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_DUN:I

    .line 69
    sput v4, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_EMERGENCY:I

    .line 70
    sput v3, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_CBS:I

    .line 73
    sput v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_CANADA_DEFAULT:I

    .line 74
    sput v1, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_CANADA_IMS:I

    .line 75
    sput v2, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_CANADA_DUN:I

    .line 76
    sput v4, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_CANADA_XCAP:I

    .line 87
    const-string/jumbo v3, "persist.product.lge.data.rcis_ver"

    const v4, 0x313e5

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lt v5, v4, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    sput v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DCM_DEFAULT:I

    .line 88
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    sput v3, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DCM_INITIAL_ATTACH:I

    .line 107
    sput v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    .line 108
    sput v1, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    .line 109
    sput v2, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    .line 112
    sput v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    .line 113
    sput v1, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    .line 114
    sput v2, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_USC_EMERGENCY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModemProfileID(Ljava/lang/String;I)I
    .locals 4
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "apnTypesBitmask"    # I

    .line 130
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "types":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/lge/lgdata/DataProfileInfo;->getModemProfileID(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, "profileId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataProfileInfo ID ==>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataProfileInfo"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v1
.end method

.method public static getModemProfileID(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "types"    # [Ljava/lang/String;

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 148
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    array-length v4, v1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 150
    const-string v4, " | "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v3    # "i":I
    :cond_1
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isVzwOperators()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 163
    const-string v3, "311480"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v5

    .line 165
    .local v3, "isVZWOperators":Z
    :goto_2
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isTmusOperators()Z

    move-result v6

    .line 171
    .local v6, "isTMUSOperators":Z
    nop

    .line 172
    const-string/jumbo v7, "ro.product.name"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "joan_nao_us"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 173
    const-string v7, "330120"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "OM"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    nop

    .line 175
    .local v4, "isOMOperators":Z
    :goto_3
    array-length v7, v1

    const/4 v8, 0x3

    if-eqz v7, :cond_64

    .line 177
    const-string v7, "*"

    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_64

    .line 178
    const-string/jumbo v9, "product.lge.data.support_mpdn"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_8

    .line 190
    :cond_6
    const-string v9, "fota"

    const/4 v10, 0x5

    const/4 v11, 0x2

    const-string v12, "dun"

    const-string v13, "ia"

    const/4 v14, -0x1

    const-string v15, "default"

    if-eqz v4, :cond_b

    .line 191
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 192
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v5

    .line 194
    :cond_7
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 195
    return v8

    .line 197
    :cond_8
    invoke-static {v1, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 198
    return v11

    .line 200
    :cond_9
    invoke-static {v1, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 201
    return v10

    .line 204
    :cond_a
    return v14

    .line 207
    :cond_b
    const-string v14, "admin"

    const/16 v16, 0x4

    const-string v10, "emergency"

    const-string v11, "ims"

    if-eqz v3, :cond_12

    .line 208
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 209
    return v8

    .line 211
    :cond_c
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 212
    return v5

    .line 214
    :cond_d
    invoke-static {v1, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 215
    const/4 v5, 0x2

    return v5

    .line 217
    :cond_e
    const-string/jumbo v5, "vzwapp"

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 218
    return v16

    .line 220
    :cond_f
    nop

    .line 221
    invoke-static {v1, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 222
    const/4 v5, 0x5

    return v5

    .line 224
    :cond_10
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 225
    const/4 v5, 0x6

    return v5

    .line 228
    :cond_11
    const/4 v5, -0x1

    return v5

    .line 231
    :cond_12
    sget-object v17, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_GET_MODEM_PROFILE_ID_SPRINT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual/range {v17 .. v17}, Lcom/lge/lgdata/LGDataRuntimeFeature;->isEnabled()Z

    move-result v8

    if-eq v8, v5, :cond_5e

    const-string v8, "SPR"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-static {v8}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto/16 :goto_7

    .line 253
    :cond_13
    if-eqz v6, :cond_19

    .line 254
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 255
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v5

    .line 257
    :cond_14
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 258
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    return v5

    .line 260
    :cond_15
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 261
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    return v5

    .line 263
    :cond_16
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 264
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_EMERGENCY:I

    return v5

    .line 266
    :cond_17
    const-string v5, "cbs"

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 267
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_TMUS_CBS:I

    return v5

    .line 270
    :cond_18
    const/4 v5, -0x1

    return v5

    .line 273
    :cond_19
    sget-object v8, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_GET_MODEM_PROFILE_ID_ATT:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v8}, Lcom/lge/lgdata/LGDataRuntimeFeature;->isEnabled()Z

    move-result v8

    if-ne v8, v5, :cond_1e

    .line 274
    const-string v5, "LPCP-2131@n@c@boot-telephony-common@DataProfileInfo.java@1"

    invoke-static {v5}, Lcom/lge/lgdata/LGDataRuntimeFeature;->patchCodeId(Ljava/lang/String;)V

    .line 275
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 276
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v5

    .line 278
    :cond_1a
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 279
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    return v5

    .line 281
    :cond_1b
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 282
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    return v5

    .line 284
    :cond_1c
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 285
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    return v5

    .line 288
    :cond_1d
    const/4 v5, -0x1

    return v5

    .line 292
    :cond_1e
    sget-object v8, Lcom/lge/lgdata/LGDataRuntimeFeature;->LGP_DATA_GET_MODEM_PROFILE_ID_ACG:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v8}, Lcom/lge/lgdata/LGDataRuntimeFeature;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_57

    const-string v8, "ACG"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    .line 293
    invoke-static {v8}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    goto/16 :goto_6

    .line 318
    :cond_1f
    const-string v8, "CA"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isCountry([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 319
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 320
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v5

    .line 322
    :cond_20
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 323
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_CANADA_DEFAULT:I

    return v5

    .line 325
    :cond_21
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 326
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_CANADA_IMS:I

    return v5

    .line 328
    :cond_22
    invoke-static {v1, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 329
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_CANADA_DUN:I

    return v5

    .line 331
    :cond_23
    const-string/jumbo v5, "xcap"

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 332
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_CANADA_XCAP:I

    return v5

    .line 335
    :cond_24
    const/4 v5, -0x1

    return v5

    .line 338
    :cond_25
    const-string v8, "JP"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/pcas/PCASInfo;->isConstCountry([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 339
    const-string v8, "DCM"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isJpSimOperator([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 340
    const-string v5, "DataProfileInfo"

    const-string v8, "DataProfileInfo DCM Operator"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 342
    const-string v5, "mms"

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 343
    const-string/jumbo v5, "supl"

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 344
    invoke-static {v1, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 345
    const-string v5, "hipri"

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 346
    invoke-static {v1, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 347
    const-string v5, "cbs"

    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_4

    .line 349
    :cond_26
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 350
    const/4 v5, 0x3

    return v5

    .line 351
    :cond_27
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 352
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DCM_INITIAL_ATTACH:I

    return v5

    .line 353
    :cond_28
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 354
    return v16

    .line 355
    :cond_29
    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 356
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DCM_DEFAULT:I

    return v5

    .line 358
    :cond_2a
    const/4 v5, -0x1

    return v5

    .line 348
    :cond_2b
    :goto_4
    sget v5, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DCM_DEFAULT:I

    return v5

    .line 360
    :cond_2c
    const-string v8, "KDDI"

    const-string v9, "JCM"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isJpSimOperator([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 362
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 363
    return v5

    .line 364
    :cond_2d
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 365
    const/4 v5, 0x3

    return v5

    .line 366
    :cond_2e
    invoke-static {v1, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 367
    return v16

    .line 368
    :cond_2f
    invoke-static {v1, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 369
    const/4 v5, 0x5

    return v5

    .line 370
    :cond_30
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 371
    const/4 v5, 0x2

    return v5

    .line 372
    :cond_31
    const-string/jumbo v8, "xcap"

    invoke-static {v1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 373
    const/4 v5, 0x6

    return v5

    .line 374
    :cond_32
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 375
    const/4 v5, 0x7

    return v5

    .line 376
    :cond_33
    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 377
    return v5

    .line 379
    :cond_34
    const/4 v5, -0x1

    return v5

    .line 381
    :cond_35
    const-string v8, "SB"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isJpSimOperator([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 383
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 384
    return v5

    .line 385
    :cond_36
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 386
    const/4 v5, 0x2

    return v5

    .line 387
    :cond_37
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 388
    const/4 v5, 0x3

    return v5

    .line 389
    :cond_38
    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 390
    return v5

    .line 392
    :cond_39
    const/4 v5, -0x1

    return v5

    .line 396
    :cond_3a
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 397
    return v5

    .line 398
    :cond_3b
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 399
    const/4 v5, 0x2

    return v5

    .line 400
    :cond_3c
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 401
    const/4 v5, 0x3

    return v5

    .line 402
    :cond_3d
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 403
    return v16

    .line 404
    :cond_3e
    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 405
    return v5

    .line 407
    :cond_3f
    const/4 v5, -0x1

    return v5

    .line 412
    :cond_40
    const-string v8, "LGU"

    const-string v5, "SKT"

    const-string v0, "KT"

    filled-new-array {v8, v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isKrSimOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 413
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 414
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_41
    const/4 v0, 0x1

    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 417
    return v0

    .line 419
    :cond_42
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 420
    const/4 v0, 0x2

    return v0

    .line 422
    :cond_43
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 423
    const/4 v0, 0x3

    return v0

    .line 425
    :cond_44
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 426
    return v16

    .line 428
    :cond_45
    const-string v0, "bip"

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 429
    const/4 v0, 0x5

    return v0

    .line 432
    :cond_46
    const/4 v0, -0x1

    return v0

    .line 435
    :cond_47
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v5, "OPEN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v5, "US"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 436
    :cond_48
    invoke-static {}, Lcom/lge/pcas/PCASInfo;->getConstOperator()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NAO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/lge/pcas/PCASInfo;->getConstCountry()Ljava/lang/String;

    move-result-object v0

    const-string v5, "US"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 438
    :cond_49
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 439
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v0

    .line 441
    :cond_4a
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 442
    invoke-static {v1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_5

    .line 445
    :cond_4b
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 446
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    return v0

    .line 448
    :cond_4c
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 449
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_USC_EMERGENCY:I

    return v0

    .line 452
    :cond_4d
    const/4 v0, -0x1

    return v0

    .line 443
    :cond_4e
    :goto_5
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    return v0

    .line 456
    :cond_4f
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 457
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v0

    .line 459
    :cond_50
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 460
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    return v0

    .line 462
    :cond_51
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 463
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_IMS:I

    return v0

    .line 465
    :cond_52
    invoke-static {v1, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 466
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    return v0

    .line 468
    :cond_53
    invoke-static {v1, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 469
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_ADMIN:I

    return v0

    .line 471
    :cond_54
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 472
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    return v0

    .line 474
    :cond_55
    invoke-static {v1, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 475
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DUN:I

    return v0

    .line 478
    :cond_56
    const/4 v0, -0x1

    return v0

    .line 294
    :cond_57
    :goto_6
    const-string v0, "LPCP-2351@n@c@boot-telephony-common@DataProfileInfo.java@1"

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeature;->patchCodeId(Ljava/lang/String;)V

    .line 295
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 296
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v0

    .line 298
    :cond_58
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 299
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_59
    invoke-static {v1, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 302
    const/4 v0, 0x2

    return v0

    .line 304
    :cond_5a
    invoke-static {v1, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 305
    const/4 v0, 0x3

    return v0

    .line 307
    :cond_5b
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 308
    const/4 v0, 0x5

    return v0

    .line 310
    :cond_5c
    invoke-static {v1, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 311
    return v16

    .line 314
    :cond_5d
    const/4 v0, -0x1

    return v0

    .line 233
    :cond_5e
    :goto_7
    const-string v0, "LPCP-2137@n@c@boot-telephony-common@DataProfileInfo.java@1"

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeature;->patchCodeId(Ljava/lang/String;)V

    .line 234
    invoke-static {v1, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 235
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v0

    .line 237
    :cond_5f
    invoke-static {v1, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 238
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    return v0

    .line 240
    :cond_60
    invoke-static {v1, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 241
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    return v0

    .line 243
    :cond_61
    invoke-static {v1, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 244
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    return v0

    .line 246
    :cond_62
    invoke-static {v1, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 247
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_SPCS_IMS:I

    return v0

    .line 250
    :cond_63
    const/4 v0, -0x1

    return v0

    .line 179
    :cond_64
    :goto_8
    if-eqz v3, :cond_65

    .line 180
    const/4 v0, 0x3

    return v0

    .line 182
    :cond_65
    const-string v0, "DCM"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 183
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_DCM_DEFAULT:I

    return v0

    .line 184
    :cond_66
    const-string v0, "SB"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 185
    const/4 v0, 0x1

    return v0

    .line 187
    :cond_67
    sget v0, Lcom/lge/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    return v0
.end method
