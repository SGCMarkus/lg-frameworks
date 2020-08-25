.class public Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;
.super Ljava/lang/Object;
.source "LGDataRuntimeFeatureUtils.java"


# static fields
.field protected static final CARD_OPERATOR_PROP:Ljava/lang/String; = "product.lge.ril.card_operator"

.field private static sMultiSimConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-string/jumbo v0, "persist.radio.multisim.config"

    const-string/jumbo v1, "ss"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->sMultiSimConfig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountry(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 38
    invoke-static {p0}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getCountry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDataSubPhoneId()I
    .locals 2

    .line 130
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 132
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 135
    :cond_1
    return v0

    .line 137
    .end local v0    # "phoneId":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperator(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .line 30
    invoke-static {p0}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 3

    .line 146
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->sMultiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 147
    return v1

    .line 148
    :cond_0
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->sMultiSimConfig:Ljava/lang/String;

    const-string v2, "dsda"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    return v1

    .line 150
    :cond_1
    sget-object v0, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->sMultiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const/4 v0, 0x3

    return v0

    .line 153
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAttOperators()Z
    .locals 5

    .line 94
    const-string v0, "ATT"

    const-string v1, "CRK"

    const-string v2, "TRF_ATT"

    const-string v3, "TRF_CLR"

    const-string v4, "TRF_CLARO"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs isCountry(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "countries"    # [Ljava/lang/String;

    .line 79
    invoke-static {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getCountry(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "pcasCountry":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 82
    .local v4, "cn":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    const/4 v1, 0x1

    return v1

    .line 81
    .end local v4    # "cn":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return v2
.end method

.method public static varargs isCountry([Ljava/lang/String;)Z
    .locals 6
    .param p0, "countries"    # [Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "pcasCountry":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 70
    .local v4, "cn":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    const/4 v1, 0x1

    return v1

    .line 69
    .end local v4    # "cn":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_1
    return v2
.end method

.method public static isGlobalOperators()Z
    .locals 1

    .line 103
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getDefaultDataSubPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isGlobalOperators(I)Z

    move-result v0

    return v0
.end method

.method public static isGlobalOperators(I)Z
    .locals 5
    .param p0, "phoneId"    # I

    .line 107
    const-string v0, "US"

    const-string v1, "CA"

    const-string v2, "KR"

    const-string v3, "JP"

    const-string v4, "CN"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isCountry(I[Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs isJpSimOperator([Ljava/lang/String;)Z
    .locals 2
    .param p0, "operators"    # [Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "product.lge.ril.card_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "jpSimOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {p0}, Lcom/lge/pcas/PCASInfo;->isConstOperator([Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/lge/pcas/PCASInfo;->isJpSimOperator([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static varargs isKrSimOperator([Ljava/lang/String;)Z
    .locals 2
    .param p0, "operators"    # [Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "product.lge.ril.card_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "krSimOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {p0}, Lcom/lge/pcas/PCASInfo;->isConstOperator([Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/lge/pcas/PCASInfo;->isKrSimOperator([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isMultiSimEnabled()Z
    .locals 2

    .line 141
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static varargs isOperator(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "operators"    # [Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "pcasOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 58
    .local v4, "op":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    const/4 v1, 0x1

    return v1

    .line 57
    .end local v4    # "op":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return v2
.end method

.method public static varargs isOperator([Ljava/lang/String;)Z
    .locals 6
    .param p0, "operators"    # [Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "pcasOperator":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 46
    .local v4, "op":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    const/4 v1, 0x1

    return v1

    .line 45
    .end local v4    # "op":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_1
    return v2
.end method

.method public static isTmusOperators()Z
    .locals 4

    .line 98
    const-string v0, "TMO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "US"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isCountry([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MPCS"

    const-string v1, "TRF_TMO"

    const-string v2, "TRF_WFM"

    const-string v3, "TRF_SM"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0
.end method

.method public static isVzwOperators()Z
    .locals 5

    .line 90
    const-string v0, "VZW"

    const-string v1, "LRA"

    const-string v2, "CCT"

    const-string v3, "CHT"

    const-string v4, "TRF_VZW"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->isOperator([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
