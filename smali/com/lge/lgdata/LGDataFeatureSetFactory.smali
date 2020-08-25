.class public Lcom/lge/lgdata/LGDataFeatureSetFactory;
.super Ljava/lang/Object;
.source "LGDataFeatureSetFactory.java"


# static fields
.field protected static final BUILD_CHARACTERISTICS:Ljava/lang/String;

.field private static final DBG:Z = true

.field private static final LAOP_DEFAULT_OPERATOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LGDataFeatureSetFactory"


# instance fields
.field private mAcgFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$ACG_FeatureSet;

.field private mAospxFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;

.field private mAttFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;

.field private mBellFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$BELL_FeatureSet;

.field private mCanadaFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;

.field private mCctVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CCT_VZW_FeatureSet;

.field private mChtVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CHT_VZW_FeatureSet;

.field private mCrkFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CRK_FeatureSet;

.field private mDcmFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;

.field private mDtagFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$DTAG_FeatureSet;

.field private mGlobalFeatureCreated:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

.field private mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

.field private mJpFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;

.field private mKddiFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KDDI_FeatureSet;

.field private mKrFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;

.field private mKrOpenFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;

.field private mKtFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KT_FeatureSet;

.field private mLguFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$LGU_FeatureSet;

.field private mLraFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$LRA_FeatureSet;

.field private mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

.field private mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

.field private mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

.field private mOpenUSFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$OPEN_US_FeatureSet;

.field private mOrgFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$ORG_FeatureSet;

.field private mRgsFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$RGS_FeatureSet;

.field private mRmmFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$RMM_FeatureSet;

.field private mSbFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;

.field private mSktFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;

.field private mSprFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SPR_FeatureSet;

.field private mTelFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TEL_FeatureSet;

.field private mTlfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;

.field private mTlsFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TLS_FeatureSet;

.field private mTmusFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TMUS_FeatureSet;

.field private mTrfAttFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_ATT_FeatureSet;

.field private mTrfCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRFCOM_FeatureSet;

.field private mTrfTmusFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_TMUS_FeatureSet;

.field private mTrfVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_VZW_FeatureSet;

.field private mUscFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;

.field private mVdfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;

.field private mVtrFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VTR_FeatureSet;

.field private mVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/lge/os/PropertyUtils;->getInstance()Lcom/lge/os/PropertyUtils;

    move-result-object v0

    const/16 v1, 0xac6

    const-string v2, "OPEN"

    invoke-virtual {v0, v1, v2}, Lcom/lge/os/PropertyUtils;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->LAOP_DEFAULT_OPERATOR:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->BUILD_CHARACTERISTICS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    .line 84
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    .line 85
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    .line 86
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$TRFCOM_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$TRFCOM_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRFCOM_FeatureSet;

    .line 87
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$OPEN_US_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$OPEN_US_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOpenUSFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$OPEN_US_FeatureSet;

    .line 88
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$SPR_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$SPR_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mSprFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SPR_FeatureSet;

    .line 89
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mUscFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;

    .line 90
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$ACG_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$ACG_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mAcgFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$ACG_FeatureSet;

    .line 91
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;

    .line 92
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$CCT_VZW_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$CCT_VZW_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCctVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CCT_VZW_FeatureSet;

    .line 93
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$CHT_VZW_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$CHT_VZW_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mChtVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CHT_VZW_FeatureSet;

    .line 94
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$TRF_VZW_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$TRF_VZW_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_VZW_FeatureSet;

    .line 95
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$LRA_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$LRA_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mLraFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$LRA_FeatureSet;

    .line 96
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$TMUS_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$TMUS_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTmusFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TMUS_FeatureSet;

    .line 97
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$TRF_TMUS_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$TRF_TMUS_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfTmusFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_TMUS_FeatureSet;

    .line 98
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mAttFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;

    .line 99
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$CRK_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$CRK_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCrkFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CRK_FeatureSet;

    .line 100
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$TRF_ATT_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$TRF_ATT_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfAttFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_ATT_FeatureSet;

    .line 103
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCanadaFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;

    .line 104
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$RGS_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$RGS_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mRgsFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$RGS_FeatureSet;

    .line 105
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$BELL_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$BELL_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mBellFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$BELL_FeatureSet;

    .line 106
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$TLS_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$TLS_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTlsFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TLS_FeatureSet;

    .line 107
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$VTR_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$VTR_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVtrFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VTR_FeatureSet;

    .line 110
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKrFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;

    .line 111
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKrOpenFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;

    .line 112
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mSktFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;

    .line 113
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$KT_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$KT_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKtFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KT_FeatureSet;

    .line 114
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$LGU_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$LGU_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mLguFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$LGU_FeatureSet;

    .line 117
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mJpFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;

    .line 118
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mDcmFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;

    .line 119
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$KDDI_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$KDDI_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKddiFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KDDI_FeatureSet;

    .line 120
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mSbFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;

    .line 121
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$RMM_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$RMM_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mRmmFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$RMM_FeatureSet;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    .line 125
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    .line 126
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVdfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;

    .line 127
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOrgFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$ORG_FeatureSet;

    .line 128
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mDtagFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$DTAG_FeatureSet;

    .line 129
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTlfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;

    .line 130
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTelFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TEL_FeatureSet;

    .line 133
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;

    invoke-direct {v0}, Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mAospxFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureCreated:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected static getAOSPX()Ljava/lang/String;
    .locals 2

    .line 73
    const-string/jumbo v0, "ro.vendor.lge.product.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getCountry()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getDefaultDataSubPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getCountry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getCountry(I)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I

    .line 58
    const-string/jumbo v0, "persist.product.lge.data.operator.use"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 60
    .local v0, "isLaopTestable":Z
    if-eqz v0, :cond_1

    .line 62
    const-string v1, ""

    if-eqz p0, :cond_0

    .line 63
    const-string/jumbo v2, "persist.vendor.lge.sim2.country"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    const-string/jumbo v2, "persist.vendor.lge.sim.country"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/lge/pcas/PCASInfo;->getCountry(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getOperator()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getDefaultDataSubPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getOperator(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .line 37
    const-string/jumbo v0, "persist.product.lge.data.operator.use"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    .local v0, "isLaopTestable":Z
    if-eqz v0, :cond_1

    .line 41
    const/16 v1, 0xaaf

    .line 42
    .local v1, "propertyHalId":I
    if-eqz p0, :cond_0

    .line 43
    const/16 v1, 0xab4

    .line 46
    :cond_0
    invoke-static {}, Lcom/lge/os/PropertyUtils;->getInstance()Lcom/lge/os/PropertyUtils;

    move-result-object v2

    sget-object v3, Lcom/lge/lgdata/LGDataFeatureSetFactory;->LAOP_DEFAULT_OPERATOR:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/lge/os/PropertyUtils;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 49
    .end local v1    # "propertyHalId":I
    :cond_1
    invoke-static {p0}, Lcom/lge/pcas/PCASInfo;->getOperator(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized initGlobalFeatureSets()V
    .locals 4

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getPhoneCount()I

    move-result v0

    .line 143
    .local v0, "phontCount":I
    iget-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureCreated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    .line 144
    monitor-exit p0

    return-void

    .line 147
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initGlobalFeatureSets: initiate Global FeatureSet objects, phontCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->log(Ljava/lang/String;)V

    .line 149
    new-array v1, v0, [Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iput-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    .line 150
    new-array v1, v0, [Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    iput-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    .line 151
    new-array v1, v0, [Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;

    iput-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVdfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;

    .line 152
    new-array v1, v0, [Lcom/lge/lgdata/LGDataFeatureSets$ORG_FeatureSet;

    iput-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOrgFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$ORG_FeatureSet;

    .line 153
    new-array v1, v0, [Lcom/lge/lgdata/LGDataFeatureSets$DTAG_FeatureSet;

    iput-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mDtagFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$DTAG_FeatureSet;

    .line 154
    new-array v1, v0, [Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;

    iput-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTlfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;

    .line 155
    new-array v1, v0, [Lcom/lge/lgdata/LGDataFeatureSets$TEL_FeatureSet;

    iput-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTelFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TEL_FeatureSet;

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 159
    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    new-instance v3, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    invoke-direct {v3}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;-><init>()V

    aput-object v3, v2, v1

    .line 160
    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    new-instance v3, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    invoke-direct {v3}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;-><init>()V

    aput-object v3, v2, v1

    .line 161
    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVdfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;

    new-instance v3, Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;

    invoke-direct {v3}, Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;-><init>()V

    aput-object v3, v2, v1

    .line 162
    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOrgFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$ORG_FeatureSet;

    new-instance v3, Lcom/lge/lgdata/LGDataFeatureSets$ORG_FeatureSet;

    invoke-direct {v3}, Lcom/lge/lgdata/LGDataFeatureSets$ORG_FeatureSet;-><init>()V

    aput-object v3, v2, v1

    .line 163
    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mDtagFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$DTAG_FeatureSet;

    new-instance v3, Lcom/lge/lgdata/LGDataFeatureSets$DTAG_FeatureSet;

    invoke-direct {v3}, Lcom/lge/lgdata/LGDataFeatureSets$DTAG_FeatureSet;-><init>()V

    aput-object v3, v2, v1

    .line 164
    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTlfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;

    new-instance v3, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;

    invoke-direct {v3}, Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;-><init>()V

    aput-object v3, v2, v1

    .line 165
    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTelFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TEL_FeatureSet;

    new-instance v3, Lcom/lge/lgdata/LGDataFeatureSets$TEL_FeatureSet;

    invoke-direct {v3}, Lcom/lge/lgdata/LGDataFeatureSets$TEL_FeatureSet;-><init>()V

    aput-object v3, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/lge/lgdata/LGDataFeatureSetFactory;
    :cond_1
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "phontCount":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 328
    const-string v0, "LGDataFeatureSetFactory"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 337
    const-string v0, "LGDataFeatureSetFactory"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 333
    const-string v0, "LGDataFeatureSetFactory"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method


# virtual methods
.method public buildFeatureSet(I)Lcom/lge/lgdata/ILGDataFeatureSet;
    .locals 12
    .param p1, "phoneId"    # I

    .line 172
    invoke-static {p1}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "operator":Ljava/lang/String;
    invoke-static {p1}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getCountry(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "country":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildFeatureSet: operator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", country="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->log(Ljava/lang/String;)V

    .line 177
    const/4 v2, 0x0

    .line 179
    .local v2, "fs":Lcom/lge/lgdata/ILGDataFeatureSet;
    const-string v4, "OPEN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/pcas/PCASInfo;->isConstOperator([Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string v5, "KR"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/pcas/PCASInfo;->isConstCountry([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    .line 182
    .local v5, "isOpenKrBuild":Z
    :goto_0
    const-string v7, "SPR"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mSprFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SPR_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 184
    :cond_1
    const-string v7, "OM"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 186
    :cond_2
    const-string v7, "CCA"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "NAO"

    const-string v9, "US"

    if-eqz v7, :cond_5

    .line 187
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/pcas/PCASInfo;->isConstOperator([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/pcas/PCASInfo;->isConstOperator([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/pcas/PCASInfo;->isConstCountry([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTmusFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TMUS_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 190
    :cond_4
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mSprFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SPR_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 192
    :cond_5
    const-string v7, "USC"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 193
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mUscFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$USC_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 194
    :cond_6
    const-string v7, "ACG"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 195
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mAcgFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$ACG_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 196
    :cond_7
    const-string v7, "VZW"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 197
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 198
    :cond_8
    const-string v7, "CCT"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 199
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCctVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CCT_VZW_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 200
    :cond_9
    const-string v7, "LRA"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 201
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mLraFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$LRA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 202
    :cond_a
    const-string v7, "CHT"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 203
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mChtVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CHT_VZW_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 204
    :cond_b
    const-string v7, "TRF_VZW"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 205
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCDMAFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NA_CDMA_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VZW_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfVzwFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_VZW_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 206
    :cond_c
    const-string v7, "TMO"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "MPCS"

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2e

    :cond_e
    const-string v10, "TMUS"

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    goto/16 :goto_5

    .line 208
    :cond_f
    const-string v10, "ATT"

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 209
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mAttFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 210
    :cond_10
    const-string v11, "CRK"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 211
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mAttFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCrkFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$CRK_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 212
    :cond_11
    if-eqz v0, :cond_16

    const-string v11, "TRF"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 214
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "WFM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "SM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_2

    .line 217
    :cond_12
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "CLR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "CLARO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_1

    .line 221
    :cond_13
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRFCOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 218
    :cond_14
    :goto_1
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRFCOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mAttFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$ATT_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfAttFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_ATT_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 215
    :cond_15
    :goto_2
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRFCOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTmusFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TMUS_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTrfTmusFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TRF_TMUS_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 223
    :cond_16
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 224
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOpenUSFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$OPEN_US_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 225
    :cond_17
    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 226
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOpenUSFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$OPEN_US_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 228
    :cond_18
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "CA"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 229
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCanadaFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 230
    :cond_19
    const-string v4, "RGS"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 231
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCanadaFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mRgsFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$RGS_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 232
    :cond_1a
    const-string v4, "BELL"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 233
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCanadaFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mBellFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$BELL_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 234
    :cond_1b
    const-string v4, "TLS"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 235
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCanadaFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTlsFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TLS_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 236
    :cond_1c
    const-string v4, "VTR"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 237
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mCanadaFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$Canada_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVtrFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$VTR_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 240
    :cond_1d
    if-eqz v5, :cond_1e

    .line 241
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKrOpenFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KR_OPEN_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 242
    :cond_1e
    const-string v4, "SKT"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 243
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKrFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mSktFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SKT_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 244
    :cond_1f
    const-string v4, "KT"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 245
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKrFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKtFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KT_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 246
    :cond_20
    const-string v4, "LGU"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 247
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKrFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KR_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mLguFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$LGU_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 250
    :cond_21
    const-string v4, "DCM"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 251
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mJpFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mDcmFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$DCM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 252
    :cond_22
    const-string v4, "KDDI"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 253
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mJpFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKddiFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KDDI_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 254
    :cond_23
    const-string v4, "JCM"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 255
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mJpFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mKddiFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$KDDI_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 256
    :cond_24
    const-string v4, "SB"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 257
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mJpFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mSbFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$SB_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 258
    :cond_25
    const-string v4, "RMM"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 259
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mJpFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$JP_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mRmmFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$RMM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto/16 :goto_6

    .line 266
    :cond_26
    :try_start_0
    invoke-direct {p0}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->initGlobalFeatureSets()V

    .line 268
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureCreated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge p1, v4, :cond_2d

    .line 270
    const-string v4, "VDF"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 271
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    aget-object v4, v4, p1

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mVdfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$VDF_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    move-object v2, v4

    goto/16 :goto_4

    .line 272
    :cond_27
    const-string v4, "ORG"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 273
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    aget-object v4, v4, p1

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOrgFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$ORG_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    move-object v2, v4

    goto/16 :goto_4

    .line 274
    :cond_28
    const-string v4, "DTAG"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_3

    .line 276
    :cond_29
    const-string v4, "TLF"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 277
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    aget-object v4, v4, p1

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTlfFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TLF_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    move-object v2, v4

    goto/16 :goto_4

    .line 278
    :cond_2a
    const-string v4, "TEL"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 279
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    aget-object v4, v4, p1

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTelFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$TEL_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    move-object v2, v4

    goto :goto_4

    .line 281
    :cond_2b
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    aget-object v4, v4, p1

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    move-object v2, v4

    goto :goto_4

    .line 275
    :cond_2c
    :goto_3
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalOPCOM:[Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    aget-object v4, v4, p1

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mDtagFeatureSet:[Lcom/lge/lgdata/LGDataFeatureSets$DTAG_FeatureSet;

    aget-object v7, v7, p1

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    move-object v2, v4

    goto :goto_4

    .line 285
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid phoneId, phoneId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mGlobalFeatureCreated="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mGlobalFeatureCreated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", LGDataRuntimeFeatureUtils.getPhoneCount()="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/lgdata/LGDataRuntimeFeatureUtils;->getPhoneCount()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->logw(Ljava/lang/String;)V

    .line 286
    new-instance v4, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    invoke-direct {v4}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;-><init>()V

    new-instance v7, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    invoke-direct {v7}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;-><init>()V

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 292
    :goto_4
    goto :goto_6

    .line 289
    :catch_0
    move-exception v4

    .line 290
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "Failed to initiate Global FeatureSet"

    invoke-direct {p0, v7, v4}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 291
    new-instance v7, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    invoke-direct {v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;-><init>()V

    new-instance v8, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;

    invoke-direct {v8}, Lcom/lge/lgdata/LGDataFeatureSets$GLOBAL_FeatureSet;-><init>()V

    invoke-virtual {v7, v8}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    goto :goto_6

    .line 207
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2e
    :goto_5
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mOPCOM:Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mNaCOMFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$NACOM_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/LGDataFeatureSets$OPCOM_FeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mTmusFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$TMUS_FeatureSet;

    invoke-virtual {v4, v7}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    .line 296
    :goto_6
    invoke-static {}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->getAOSPX()Ljava/lang/String;

    move-result-object v4

    const-string v7, "aospx"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 297
    iget-object v4, p0, Lcom/lge/lgdata/LGDataFeatureSetFactory;->mAospxFeatureSet:Lcom/lge/lgdata/LGDataFeatureSets$APSPx_FeatureSet;

    invoke-virtual {v2, v4}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    .line 300
    :cond_2f
    if-eqz v2, :cond_32

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildFeatureSet: FeatureSet="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lge/lgdata/ILGDataFeatureSet;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->log(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v4, "persist.product.lge.data.rfm.smartupdate"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 304
    new-instance v4, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    invoke-direct {v4}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->loadFeatures(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v4

    .line 305
    .local v4, "xmlFeatureSet":Lcom/lge/lgdata/ILGDataFeatureSet;
    if-eqz v4, :cond_30

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildFeatureSet: adding SmartUpdate FeatureSet for operator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->log(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v2, v4}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    .line 311
    .end local v4    # "xmlFeatureSet":Lcom/lge/lgdata/ILGDataFeatureSet;
    :cond_30
    const-string/jumbo v3, "persist.product.lge.data.rfm.debug.pt"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {}, Lcom/lge/pcas/PCASInfo;->isUserBuild()Z

    move-result v3

    if-nez v3, :cond_31

    .line 313
    invoke-static {}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->getInstance()Lcom/lge/lgdata/LGDataFeaturePersistentTester;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/lgdata/LGDataFeaturePersistentTester;->getFeatureSet()Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v3

    .line 314
    .local v3, "persistentTesterFeatureSet":Lcom/lge/lgdata/ILGDataFeatureSet;
    if-eqz v3, :cond_31

    .line 315
    const-string v4, "buildFeatureSet: adding Persistent Test FeatureSet"

    invoke-direct {p0, v4}, Lcom/lge/lgdata/LGDataFeatureSetFactory;->log(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v2, v3}, Lcom/lge/lgdata/ILGDataFeatureSet;->add(Lcom/lge/lgdata/ILGDataFeatureSet;)Lcom/lge/lgdata/ILGDataFeatureSet;

    move-result-object v2

    .line 320
    .end local v3    # "persistentTesterFeatureSet":Lcom/lge/lgdata/ILGDataFeatureSet;
    :cond_31
    invoke-virtual {v2}, Lcom/lge/lgdata/ILGDataFeatureSet;->build()V

    .line 323
    :cond_32
    return-object v2
.end method
