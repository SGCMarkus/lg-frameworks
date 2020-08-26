.class Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
.super Ljava/lang/Object;
.source "LGImsPhoneProxy.java"

# interfaces
.implements Lcom/lge/internal/telephony/ILGImsNetworkInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsPhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsPhoneIF"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;
    }
.end annotation


# instance fields
.field private mAcBarringForEmergency:Ljava/lang/String;

.field private mCI:Lcom/android/internal/telephony/CommandsInterface;

.field private mCallback:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

.field private mEhrpdInfo:[Ljava/lang/String;

.field private mEmcBs:Ljava/lang/String;

.field private mHDVoiceSetting:I

.field private mHandler:Landroid/os/Handler;

.field private mIMSResponse:Ljava/lang/String;

.field private mImsConfig:[I

.field private mImsEmergencySupport:Ljava/lang/String;

.field private mImsPrefState:I

.field private mImsRegIndicator:I

.field private final mLock:Ljava/lang/Object;

.field private mLteCellInfo:[Ljava/lang/String;

.field private final mNetworkInfoCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPLMN2:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneIFEnable:Z

.field private mPhoneId:I

.field private mSsacInfo:[I

.field private mSysMode:I

.field private mUpdatedImsConfig:I

.field private mVoPS:Ljava/lang/String;

.field private mWcdmaVoPS:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/LGImsPhoneProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsPhoneProxy;ILcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p2, "phoneId"    # I
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "CI"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 788
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->this$0:Lcom/android/internal/telephony/LGImsPhoneProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLock:Ljava/lang/Object;

    .line 750
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 752
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    .line 754
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCallback:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    .line 756
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    .line 758
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneIFEnable:Z

    .line 759
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsRegIndicator:I

    .line 762
    iput v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsPrefState:I

    .line 763
    iput v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSysMode:I

    .line 766
    const/4 v1, 0x5

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSsacInfo:[I

    .line 769
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHDVoiceSetting:I

    .line 770
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mIMSResponse:Ljava/lang/String;

    .line 772
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mNetworkInfoCallbacks:Landroid/os/RemoteCallbackList;

    .line 775
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLteCellInfo:[Ljava/lang/String;

    .line 776
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEhrpdInfo:[Ljava/lang/String;

    .line 777
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPLMN2:Ljava/lang/String;

    .line 778
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mVoPS:Ljava/lang/String;

    .line 779
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mWcdmaVoPS:Ljava/lang/String;

    .line 780
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEmcBs:Ljava/lang/String;

    .line 781
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsEmergencySupport:Ljava/lang/String;

    .line 782
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mAcBarringForEmergency:Ljava/lang/String;

    .line 785
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    .line 786
    iput p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mUpdatedImsConfig:I

    .line 789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImsPhoneIF :: phoneId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LGIMS_IPP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iput p2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    .line 792
    iput-object p3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 793
    iput-object p4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    .line 794
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 748
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->stopPhoneIF()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 748
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyPhoneStateChanged(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 748
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->invokePhoneStateChanged(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 748
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->cacheImsPrefState(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Landroid/os/AsyncResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 748
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->cacheSsacInfo(Landroid/os/AsyncResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 748
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->handleSsacSyncUp()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 748
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->handleInitialNetworkInfoSyncUp()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # Z

    .line 748
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setImsConfig(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 748
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->clearImsNetworkInfo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 748
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->hasCallback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 748
    iget v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSysMode:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # I

    .line 748
    iput p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSysMode:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 748
    iget v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsPrefState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # I

    .line 748
    iput p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsPrefState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSsacInfo:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # [I

    .line 748
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->invokeLteStateChanged([I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p1, "x1"    # [B

    .line 748
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->callControlModifiedResponse([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheImsPrefState(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1929
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1931
    .local v0, "ret":[I
    if-nez v0, :cond_0

    .line 1932
    return-void

    .line 1935
    :cond_0
    array-length v1, v0

    .line 1937
    .local v1, "ret_length":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v3, 0x0

    aget v4, v0, v3

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 1938
    aget v3, v0, v3

    iput v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSysMode:I

    .line 1939
    aget v2, v0, v2

    iput v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsPrefState:I

    .line 1941
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheImsPrefState :: sys mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSysMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , pref state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsPrefState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGIMS_IPP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_1
    return-void
.end method

.method private cacheSsacInfo(Landroid/os/AsyncResult;)Z
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1959
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1961
    .local v0, "ret":[I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1962
    return v1

    .line 1965
    :cond_0
    array-length v2, v0

    .line 1967
    .local v2, "ret_length":I
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGIMS_IPP"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_1
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 1972
    return v1

    .line 1975
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSsacInfo:[I

    const/16 v5, 0x13

    aput v5, v4, v1

    .line 1976
    aget v1, v0, v1

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 1977
    aget v1, v0, v5

    const/4 v6, 0x2

    aput v1, v4, v6

    .line 1978
    aget v1, v0, v6

    aput v1, v4, v3

    .line 1979
    const/4 v1, 0x4

    aget v3, v0, v3

    aput v3, v4, v1

    .line 1981
    return v5
.end method

.method private callControlModifiedResponse([B)Ljava/lang/String;
    .locals 14
    .param p1, "response"    # [B

    .line 2246
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-byte v2, p1, v0

    if-eqz v2, :cond_9

    aget-byte v0, p1, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->this$0:Lcom/android/internal/telephony/LGImsPhoneProxy;

    aget-byte v3, p1, v2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy;->sizeOfBerTlvLen(B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    .local v0, "fieldSize":I
    const-string v3, "LGIMS_IPP"

    if-nez v0, :cond_1

    .line 2253
    :try_start_1
    const-string v2, "invalid len for cc response"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    return-object v1

    .line 2258
    :cond_1
    add-int/lit8 v4, v0, 0x1

    .line 2261
    .local v4, "offset":I
    add-int/lit8 v5, v4, -0x1

    aget-byte v5, p1, v5

    .line 2264
    .local v5, "ccLen":I
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "offset":I
    .local v6, "offset":I
    aget-byte v4, p1, v4

    .line 2265
    .local v4, "tag":B
    const/4 v7, 0x6

    if-eq v4, v7, :cond_3

    const/16 v7, -0x7a

    if-ne v4, v7, :cond_2

    goto :goto_0

    .line 2304
    .end local v0    # "fieldSize":I
    .end local v4    # "tag":B
    .end local v5    # "ccLen":I
    .end local v6    # "offset":I
    :cond_2
    nop

    .line 2305
    return-object v1

    .line 2266
    .restart local v0    # "fieldSize":I
    .restart local v4    # "tag":B
    .restart local v5    # "ccLen":I
    .restart local v6    # "offset":I
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->this$0:Lcom/android/internal/telephony/LGImsPhoneProxy;

    aget-byte v8, p1, v6

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/LGImsPhoneProxy;->sizeOfBerTlvLen(B)I

    move-result v7

    move v0, v7

    .line 2268
    if-nez v0, :cond_4

    .line 2269
    const-string v2, "invalid len for address tag tlv"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    return-object v1

    .line 2274
    :cond_4
    add-int/2addr v6, v0

    .line 2275
    add-int/lit8 v3, v6, -0x1

    aget-byte v3, p1, v3

    sub-int/2addr v3, v2

    .line 2276
    .local v3, "bcdLen":I
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "offset":I
    .local v2, "offset":I
    aget-byte v6, p1, v6

    .line 2279
    .local v6, "tonNpi":B
    and-int/lit16 v7, v6, 0x80

    const/16 v8, 0x80

    if-eq v7, v8, :cond_5

    .line 2280
    return-object v1

    .line 2284
    :cond_5
    const-string v7, "0123456789ABCDEF"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 2285
    .local v7, "hexMap":[C
    const-string v8, ""

    .line 2286
    .local v8, "address":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_8

    .line 2288
    add-int v10, v2, v9

    .line 2291
    .local v10, "idx":I
    aget-byte v11, p1, v10

    const/16 v12, 0xf

    and-int/2addr v11, v12

    if-eq v11, v12, :cond_6

    .line 2292
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v13, p1, v10

    and-int/2addr v12, v13

    aget-char v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 2295
    :cond_6
    aget-byte v11, p1, v10

    const/16 v12, 0xf0

    and-int/2addr v11, v12

    if-eq v11, v12, :cond_7

    .line 2296
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v13, p1, v10

    and-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x4

    aget-char v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v11

    .line 2286
    .end local v10    # "idx":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2299
    .end local v9    # "i":I
    :cond_8
    return-object v8

    .line 2247
    .end local v0    # "fieldSize":I
    .end local v2    # "offset":I
    .end local v3    # "bcdLen":I
    .end local v4    # "tag":B
    .end local v5    # "ccLen":I
    .end local v6    # "tonNpi":B
    .end local v7    # "hexMap":[C
    .end local v8    # "address":Ljava/lang/String;
    :cond_9
    :goto_2
    return-object v1

    .line 2302
    :catch_0
    move-exception v0

    .line 2303
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-object v1
.end method

.method private clearImsConfig()V
    .locals 4

    .line 2384
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 2385
    const/4 v2, 0x1

    aput v1, v0, v2

    .line 2386
    const/4 v3, 0x2

    aput v1, v0, v3

    .line 2387
    const/4 v3, 0x3

    aput v1, v0, v3

    .line 2388
    const/4 v1, 0x4

    aput v2, v0, v1

    .line 2389
    const/4 v1, 0x5

    aput v2, v0, v1

    .line 2390
    return-void
.end method

.method private clearImsNetworkInfo()V
    .locals 4

    .line 2038
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    const/4 v1, 0x5

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLteCellInfo:[Ljava/lang/String;

    .line 2040
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEhrpdInfo:[Ljava/lang/String;

    .line 2041
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPLMN2:Ljava/lang/String;

    .line 2044
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mVoPS:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2045
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mVoPS:Ljava/lang/String;

    .line 2046
    const/16 v1, 0x65

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2049
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mWcdmaVoPS:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2050
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mWcdmaVoPS:Ljava/lang/String;

    .line 2051
    const/16 v1, 0x66

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2054
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEmcBs:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2055
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEmcBs:Ljava/lang/String;

    .line 2056
    const/16 v1, 0x67

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2059
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsEmergencySupport:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2060
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsEmergencySupport:Ljava/lang/String;

    .line 2061
    const/16 v1, 0x68

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2064
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mAcBarringForEmergency:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2065
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mAcBarringForEmergency:Ljava/lang/String;

    .line 2066
    const/16 v1, 0x69

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2068
    :cond_4
    monitor-exit v0

    .line 2069
    return-void

    .line 2068
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUsimApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .line 2363
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2364
    return-object v1

    .line 2367
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    .line 2369
    .local v0, "profile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private handleInitialNetworkInfoSyncUp()V
    .locals 5

    .line 2087
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    const-string v0, "LGIMS_IPP"

    const-string v1, "handleInitialNetworkInfoSyncUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2092
    const/16 v1, 0x65

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isVoPSSupported()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2093
    const/16 v1, 0x66

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isWcdmaVoPSSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2094
    const/16 v1, 0x67

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isEmcBSSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2095
    const/16 v1, 0x68

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isImsEmergencySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2096
    const/16 v1, 0x69

    .line 2097
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isAcBarringForEmegency()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    .line 2096
    :goto_4
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V

    .line 2098
    monitor-exit v0

    .line 2099
    return-void

    .line 2098
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRemoteException()V
    .locals 3

    .line 2309
    const-string v0, "LGIMS_IPP"

    const-string v1, "RemoteException :: Maybe Ims died"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCallback:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    .line 2313
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$500()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2314
    return-void
.end method

.method private handleSsacSyncUp()V
    .locals 3

    .line 2072
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSsacInfo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v1, "LGIMS_IPP"

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 2074
    const-string v0, "ssac is not updated"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    return-void

    .line 2078
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->hasCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2079
    const-string v0, "Callback is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    return-void

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSsacInfo:[I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->invokeLteStateChanged([I)V

    .line 2084
    return-void
.end method

.method private hasCallback()Z
    .locals 1

    .line 2317
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCallback:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initImsConfig()V
    .locals 4

    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2375
    aput v2, v0, v1

    .line 2376
    const/4 v3, 0x2

    aput v2, v0, v3

    .line 2377
    const/4 v3, 0x3

    aput v2, v0, v3

    .line 2378
    const/4 v2, 0x4

    aput v1, v0, v2

    .line 2379
    const/4 v2, 0x5

    aput v1, v0, v2

    .line 2380
    return-void
.end method

.method private invokeLteStateChanged([I)V
    .locals 2
    .param p1, "param"    # [I

    .line 2322
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCallback:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;->onLteStateChanged([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2329
    goto :goto_0

    .line 2323
    :catchall_0
    move-exception v0

    .line 2324
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2326
    instance-of v1, v0, Landroid/os/RemoteException;

    if-eqz v1, :cond_0

    .line 2327
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->handleRemoteException()V

    .line 2330
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private invokePhoneStateChanged(IIILjava/lang/String;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "paramEx"    # Ljava/lang/String;

    .line 2335
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCallback:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2343
    goto :goto_0

    .line 2337
    :catchall_0
    move-exception v0

    .line 2338
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2340
    instance-of v1, v0, Landroid/os/RemoteException;

    if-eqz v1, :cond_0

    .line 2341
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->handleRemoteException()V

    .line 2344
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private isAcBarringForEmegency()Z
    .locals 2

    .line 1998
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mAcBarringForEmergency:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEHRPD(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 1985
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEmcBSSupported()Z
    .locals 2

    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEmcBs:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isImsEmergencySupported()Z
    .locals 2

    .line 2006
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsEmergencySupport:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLTE(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 1989
    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNetworkInfoValidAsBoolType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 2010
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2011
    return v0

    .line 2014
    :cond_0
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2018
    :cond_1
    return v0

    .line 2015
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isNetworkInfoValidAsString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2022
    if-eqz p1, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2026
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2023
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOperatorVZW()Z
    .locals 2

    .line 2347
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRegisterDataChangedRequired()Z
    .locals 2

    .line 2351
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;->COUNTRY:Ljava/lang/String;

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2352
    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;->OPERATOR:Ljava/lang/String;

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;->OPERATOR:Ljava/lang/String;

    .line 2353
    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/LGImsPhoneProxy$CA_TARGET;->OPERATOR:Ljava/lang/String;

    .line 2354
    const-string v1, "MPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2355
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2359
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isVoPSSupported()Z
    .locals 2

    .line 2030
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mVoPS:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWCDMA(I)Z
    .locals 1
    .param p1, "rat"    # I

    .line 1994
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWcdmaVoPSSupported()Z
    .locals 2

    .line 2034
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mWcdmaVoPS:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$notifyCellInfo$0(I[Ljava/lang/String;Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V
    .locals 3
    .param p0, "networkType"    # I
    .param p1, "recentCellInfo"    # [Ljava/lang/String;
    .param p2, "c"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    .line 2111
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;->onCellInfo(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2114
    goto :goto_0

    .line 2112
    :catch_0
    move-exception v0

    .line 2113
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " :: onCellInfo() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGIMS_IPP"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$notifyNetworkInfoNotificationEnabled$1(ZLcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V
    .locals 3
    .param p0, "enabled"    # Z
    .param p1, "c"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    .line 2125
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;->onNotificationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    goto :goto_0

    .line 2126
    :catch_0
    move-exception v0

    .line 2127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " :: onNotificationEnabled() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGIMS_IPP"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private notifyCellInfo(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "cellInfo"    # [Ljava/lang/String;

    .line 2102
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mNetworkInfoCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    return-void

    .line 2106
    :cond_0
    if-eqz p2, :cond_1

    .line 2107
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2109
    .local v0, "recentCellInfo":[Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mNetworkInfoCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$NRX2CF9AJMG03YBY-yMvOygBt8k;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$NRX2CF9AJMG03YBY-yMvOygBt8k;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 2116
    return-void
.end method

.method private notifyLteState(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 2133
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->hasCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2134
    const-string v0, "LGIMS_IPP"

    const-string v1, "Callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    return-void

    .line 2138
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2140
    .local v0, "data":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2141
    const/4 v2, 0x1

    aput p2, v0, v2

    .line 2142
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 2144
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->invokeLteStateChanged([I)V

    .line 2145
    return-void
.end method

.method private notifyNetworkInfoNotificationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mNetworkInfoCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2120
    return-void

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mNetworkInfoCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$fmLhxR-OW_2yu6Z9A2cewkK8Z3s;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/-$$Lambda$LGImsPhoneProxy$ImsPhoneIF$fmLhxR-OW_2yu6Z9A2cewkK8Z3s;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 2130
    return-void
.end method

.method private notifyPhoneStateChanged(IIILjava/lang/String;)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "paramEx"    # Ljava/lang/String;

    .line 2149
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->hasCallback()Z

    move-result v0

    const-string v1, "LGIMS_IPP"

    if-nez v0, :cond_0

    .line 2150
    const-string v0, "Callback is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    return-void

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2155
    const-string v0, "Handler is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    return-void

    .line 2159
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$2;-><init>(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2165
    return-void
.end method

.method private setBalItem(II)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "data"    # I

    .line 1873
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    const-string v1, "LGIMS_IPP"

    if-eqz v0, :cond_0

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBalItem :: item ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), data ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1878
    const-string v0, "Handler is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return-void

    .line 1882
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_2

    .line 1883
    const-string v0, "CommandsInterface is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    return-void

    .line 1887
    :cond_2
    const/4 v0, -0x1

    .line 1891
    .local v0, "index":I
    const/16 v2, 0xb

    if-eq p1, v2, :cond_4

    const/16 v2, 0xd

    if-eq p1, v2, :cond_3

    .line 1901
    const-string v2, "additional dependency for SetBal is required."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1897
    :cond_3
    const v0, 0x60039

    .line 1898
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setImsRegStatusToModemForMTK(III)V

    .line 1899
    goto :goto_0

    .line 1893
    :cond_4
    const v0, 0x6002d

    .line 1894
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setImsCallStatusToModemForMTK(I)V

    .line 1895
    nop

    .line 1906
    :goto_0
    const/16 v2, 0xc

    if-ne p1, v2, :cond_5

    .line 1907
    const/16 v0, 0x1e

    .line 1910
    :cond_5
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 1911
    return-void

    .line 1914
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_7

    .line 1915
    return-void

    .line 1918
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mtk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1919
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1920
    const-string v2, "mtk chip vendor - ignore set modem item"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_8
    return-void

    .line 1925
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/internal/telephony/Phone;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 1926
    return-void
.end method

.method private setEhrpdInfo([Ljava/lang/String;)V
    .locals 4
    .param p1, "networkInfo"    # [Ljava/lang/String;

    .line 2168
    const/16 v0, 0xc

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    aget-object v2, p1, v1

    .line 2169
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2173
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEhrpdInfo:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, p1, v0

    aput-object v0, v2, v3

    .line 2174
    const/4 v0, 0x1

    aget-object v1, p1, v1

    aput-object v1, v2, v0

    .line 2175
    return-void

    .line 2170
    :cond_1
    :goto_0
    return-void
.end method

.method private setImsConfig(Z)V
    .locals 7
    .param p1, "enforce"    # Z

    .line 2393
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    .line 2394
    return-void

    .line 2397
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mUpdatedImsConfig:I

    .line 2398
    .local v0, "imsConfig":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mUpdatedImsConfig:I

    .line 2400
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    .line 2401
    aget v3, v3, v2

    if-ne v3, v5, :cond_1

    .line 2402
    iget v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mUpdatedImsConfig:I

    shl-int v4, v5, v2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mUpdatedImsConfig:I

    .line 2400
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2406
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsConfig :: old ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), new ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mUpdatedImsConfig:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LGIMS_IPP"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setImsConfig :: volteEnable ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    aget v1, v6, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), vilteEnable ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    aget v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), vowifiEnable ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    const/4 v5, 0x2

    aget v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), viwifiEnable ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), smsEnable ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    const/4 v5, 0x4

    aget v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), eimsEnable ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    const/4 v5, 0x5

    aget v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_3
    if-nez p1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mUpdatedImsConfig:I

    if-ne v0, v1, :cond_4

    .line 2417
    return-void

    .line 2420
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setImsCfg([ILandroid/os/Message;)V

    .line 2421
    return-void
.end method

.method private setLteCellInfo([Ljava/lang/String;)V
    .locals 7
    .param p1, "networkInfo"    # [Ljava/lang/String;

    .line 2178
    const/4 v0, 0x5

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    aget-object v2, p1, v1

    .line 2179
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    aget-object v3, p1, v2

    .line 2180
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    aget-object v4, p1, v3

    .line 2181
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    aget-object v5, p1, v4

    .line 2182
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 2187
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLteCellInfo:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, p1, v0

    aput-object v0, v5, v6

    .line 2188
    const/4 v0, 0x1

    aget-object v1, p1, v1

    aput-object v1, v5, v0

    .line 2189
    const/4 v0, 0x2

    aget-object v1, p1, v2

    aput-object v1, v5, v0

    .line 2190
    const/4 v0, 0x3

    aget-object v1, p1, v3

    aput-object v1, v5, v0

    .line 2191
    const/4 v0, 0x4

    aget-object v1, p1, v4

    aput-object v1, v5, v0

    .line 2192
    return-void

    .line 2184
    :cond_1
    :goto_0
    return-void
.end method

.method private setLtePLMN2(Ljava/lang/String;)V
    .locals 1
    .param p1, "plmn2"    # Ljava/lang/String;

    .line 2195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2196
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPLMN2:Ljava/lang/String;

    goto :goto_0

    .line 2198
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPLMN2:Ljava/lang/String;

    .line 2200
    :goto_0
    return-void
.end method

.method private stopPhoneIF()V
    .locals 6

    .line 903
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$500()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    if-nez v0, :cond_0

    .line 904
    const-string v0, "ImsPhoneIF is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void

    .line 908
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneIFEnable:Z

    if-nez v0, :cond_1

    .line 909
    return-void

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_3

    .line 913
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterSsacState(Landroid/os/Handler;)V

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterLteState(Landroid/os/Handler;)V

    .line 916
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$600()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$700()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterImsPreference(Landroid/os/Handler;)V

    .line 921
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 922
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 924
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    :goto_0
    if-eqz v0, :cond_5

    .line 925
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeImsNetworkInfoListener(Lcom/lge/internal/telephony/ILGImsNetworkInfoListener;)V

    .line 928
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->clearImsNetworkInfo()V

    .line 930
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$400()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/ims/LGImsFeature;->FEATURE_VOLTE_OPEN:Z

    if-eqz v3, :cond_6

    .line 931
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->clearImsConfig()V

    .line 932
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setImsConfig(Z)V

    .line 935
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mtk"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v3, :cond_7

    .line 936
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemBootComplete(Landroid/os/Handler;)V

    .line 939
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isRegisterDataChangedRequired()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 940
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v3

    .line 942
    .local v3, "des":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    if-eqz v3, :cond_8

    .line 943
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->unregisterForDataEnabledChanged(Landroid/os/Handler;)V

    .line 947
    .end local v3    # "des":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    :cond_8
    iput-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCallback:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPhoneIF :: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneIFEnable:Z

    .line 952
    return-void
.end method

.method private updateLteNetworkInfo([Ljava/lang/String;)V
    .locals 4
    .param p1, "networkInfo"    # [Ljava/lang/String;

    .line 2203
    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsBoolType(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_0

    .line 2204
    aget-object v0, p1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 2205
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mVoPS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2206
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mVoPS:Ljava/lang/String;

    .line 2207
    const/16 v1, 0x65

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isVoPSSupported()Z

    move-result v3

    const v4, true
    if-eq v3, v4, :cond_10
    const v5, 0
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    goto :goto_10
    :cond_10
    const v5, 1
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    :goto_10

    .line 2210
    :cond_1
    const/4 v1, 0x2

    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsBoolType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2211
    aget-object v1, p1, v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    move-object v0, v1

    .line 2212
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEmcBs:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2213
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEmcBs:Ljava/lang/String;

    .line 2214
    const/16 v1, 0x67

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isEmcBSSupported()Z

    move-result v3

    const v4, true
    if-eq v3, v4, :cond_11
    const v5, 0
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    goto :goto_11
    :cond_11
    const v5, 1
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    :goto_11

    .line 2217
    :cond_3
    const/4 v1, 0x3

    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsBoolType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2218
    aget-object v1, p1, v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    move-object v0, v1

    .line 2219
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsEmergencySupport:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2220
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsEmergencySupport:Ljava/lang/String;

    .line 2221
    const/16 v1, 0x68

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isImsEmergencySupported()Z

    move-result v3

    const v4, true
    if-eq v3, v4, :cond_12
    const v5, 0
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    goto :goto_12
    :cond_12
    const v5, 1
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    :goto_12

    .line 2224
    :cond_5
    const/4 v1, 0x4

    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsBoolType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2225
    aget-object v2, p1, v1

    goto :goto_3

    :cond_6
    nop

    :goto_3
    move-object v0, v2

    .line 2226
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mAcBarringForEmergency:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2227
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mAcBarringForEmergency:Ljava/lang/String;

    .line 2228
    const/16 v1, 0x69

    .line 2229
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isAcBarringForEmegency()Z

    move-result v2

    .line 2228
    const v4, true
    if-eq v3, v4, :cond_13
    const v5, 0
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    goto :goto_13
    :cond_13
    const v5, 1
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    :goto_13

    .line 2231
    :cond_7
    return-void
.end method

.method private updateWcdmaNetworkInfo([Ljava/lang/String;)V
    .locals 3
    .param p1, "networkInfo"    # [Ljava/lang/String;

    .line 2234
    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsBoolType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2235
    aget-object v0, p1, v0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 2237
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mWcdmaVoPS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2238
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mWcdmaVoPS:Ljava/lang/String;

    .line 2239
    const/16 v1, 0x66

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isWcdmaVoPSSupported()Z

    move-result v2

    const v3, true
    if-eq v2, v3, :cond_2
    const v4, 0
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    goto :goto_1
    :cond_2
    const v4, 1
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyLteState(II)V
    :goto_1

    .line 2241
    :cond_1
    return-void
.end method


# virtual methods
.method public addNetworkInfoCallback(Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    .line 1865
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mNetworkInfoCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1866
    return-void
.end method

.method public deInit()V
    .locals 2

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deInit :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->stopPhoneIF()V

    .line 844
    return-void
.end method

.method public getCI()Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHdVoiceSetting()I
    .locals 1

    .line 1657
    iget v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHDVoiceSetting:I

    return v0
.end method

.method public getImsRegIndicator()I
    .locals 1

    .line 1653
    iget v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsRegIndicator:I

    return v0
.end method

.method public getImsResponse()Ljava/lang/String;
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mIMSResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1645
    iget v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    return v0
.end method

.method public getSysInfo(IILjava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "item"    # I
    .param p2, "param"    # I
    .param p3, "paramEx"    # Ljava/lang/String;

    .line 955
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSysInfo ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    const/16 v0, 0xe

    const/16 v1, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2a

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq p1, v4, :cond_25

    const/4 v0, 0x2

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1c

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_18

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_16

    const/16 v1, 0x22

    if-eq p1, v1, :cond_14

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_12

    const/16 v1, 0x65

    if-eq p1, v1, :cond_11

    const/4 v6, 0x7

    if-eq p1, v6, :cond_b

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    .line 1194
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown item ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_1
    return-object v5

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_3

    .line 1080
    return-object v5

    .line 1083
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    .line 1085
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 1087
    return-object v1

    .line 1043
    .end local v1    # "result":[Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_5

    .line 1044
    return-object v5

    .line 1047
    :cond_5
    const/4 v1, 0x0

    .line 1053
    .restart local v1    # "result":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1054
    if-ne p2, v2, :cond_6

    .line 1055
    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    move-object v1, v0

    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEmcBs:Ljava/lang/String;

    aput-object v0, v1, v3

    goto :goto_0

    .line 1067
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1057
    :cond_6
    if-ne p2, v0, :cond_7

    .line 1058
    new-array v0, v2, [Ljava/lang/String;

    move-object v1, v0

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mVoPS:Ljava/lang/String;

    aput-object v0, v1, v3

    goto :goto_0

    .line 1060
    :cond_7
    if-ne p2, v4, :cond_8

    .line 1061
    new-array v0, v2, [Ljava/lang/String;

    move-object v1, v0

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPLMN2:Ljava/lang/String;

    aput-object v0, v1, v3

    goto :goto_0

    .line 1063
    :cond_8
    const/4 v0, 0x4

    if-ne p2, v0, :cond_9

    .line 1064
    new-array v0, v2, [Ljava/lang/String;

    move-object v1, v0

    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsEmergencySupport:Ljava/lang/String;

    aput-object v0, v1, v3

    .line 1067
    :cond_9
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    if-eqz v1, :cond_a

    .line 1070
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE network feature :: param("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), result("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LGIMS_IPP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_a
    return-object v1

    .line 1067
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1006
    .end local v1    # "result":[Ljava/lang/String;
    :cond_b
    new-array v0, v2, [Ljava/lang/String;

    .line 1008
    .local v0, "result":[Ljava/lang/String;
    const-string v2, "FAILURE"

    aput-object v2, v0, v3

    .line 1010
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_c

    .line 1011
    return-object v0

    .line 1014
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_d

    .line 1015
    return-object v0

    .line 1018
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1019
    const-string p3, "linear_fixed"

    .line 1022
    :cond_e
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    .line 1024
    .local v2, "iccFH":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v2, :cond_10

    .line 1025
    const-string v4, "linear_fixed"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0xffff

    if-eqz v4, :cond_f

    .line 1027
    and-int v4, p2, v5

    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    .line 1029
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1028
    invoke-virtual {v5, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1027
    invoke-virtual {v2, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1030
    const-string v1, "SUCCESS"

    aput-object v1, v0, v3

    goto :goto_2

    .line 1031
    :cond_f
    const-string v1, "transparent"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1032
    and-int v1, p2, v5

    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    .line 1034
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1033
    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1032
    invoke-virtual {v2, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1035
    const-string v1, "SUCCESS"

    aput-object v1, v0, v3

    .line 1039
    :cond_10
    :goto_2
    return-object v0

    .line 1129
    .end local v0    # "result":[Ljava/lang/String;
    .end local v2    # "iccFH":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_11
    new-array v0, v0, [Ljava/lang/String;

    .line 1131
    .restart local v0    # "result":[Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSysMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1132
    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsPrefState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1134
    return-object v0

    .line 1183
    .end local v0    # "result":[Ljava/lang/String;
    :cond_12
    new-array v0, v2, [Ljava/lang/String;

    .line 1184
    .restart local v0    # "result":[Ljava/lang/String;
    const-string v1, "false"

    aput-object v1, v0, v3

    .line 1186
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1187
    const-string v1, "true"

    aput-object v1, v0, v3

    .line 1190
    :cond_13
    return-object v0

    .line 1161
    .end local v0    # "result":[Ljava/lang/String;
    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->this$0:Lcom/android/internal/telephony/LGImsPhoneProxy;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/LGImsPhoneProxy;->fetchFDNList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1162
    .local v0, "fdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1163
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1164
    .restart local v1    # "result":[Ljava/lang/String;
    return-object v1

    .line 1166
    .end local v1    # "result":[Ljava/lang/String;
    :cond_15
    return-object v5

    .line 1149
    .end local v0    # "fdnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_16
    new-array v0, v2, [Ljava/lang/String;

    .line 1150
    .local v0, "result":[Ljava/lang/String;
    const-string v1, "FALSE"

    aput-object v1, v0, v3

    .line 1152
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getUsimApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1154
    .local v1, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1155
    const-string v2, "TRUE"

    aput-object v2, v0, v3

    .line 1158
    :cond_17
    return-object v0

    .line 1137
    .end local v0    # "result":[Ljava/lang/String;
    .end local v1    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_18
    new-array v0, v2, [Ljava/lang/String;

    .line 1138
    .restart local v0    # "result":[Ljava/lang/String;
    const-string v1, "FALSE"

    aput-object v1, v0, v3

    .line 1140
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->getUsimApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1142
    .restart local v1    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1143
    const-string v2, "TRUE"

    aput-object v2, v0, v3

    .line 1146
    :cond_19
    return-object v0

    .line 1171
    .end local v0    # "result":[Ljava/lang/String;
    .end local v1    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1a
    new-array v0, v2, [Ljava/lang/String;

    .line 1173
    .restart local v0    # "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->this$0:Lcom/android/internal/telephony/LGImsPhoneProxy;

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$900(Lcom/android/internal/telephony/LGImsPhoneProxy;)Lcom/android/internal/telephony/LGImsIsimHandler;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1174
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->this$0:Lcom/android/internal/telephony/LGImsPhoneProxy;

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$900(Lcom/android/internal/telephony/LGImsPhoneProxy;)Lcom/android/internal/telephony/LGImsIsimHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler;->getIsimState(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_3

    .line 1176
    :cond_1b
    const-string v1, "NOT_PRESENT"

    aput-object v1, v0, v3

    .line 1179
    :goto_3
    return-object v0

    .line 1116
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_1d

    .line 1117
    return-object v5

    .line 1119
    :cond_1d
    new-array v1, v2, [Ljava/lang/String;

    .line 1120
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 1122
    .local v0, "nrsrp":I
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nrsrp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LGIMS_IPP"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_1e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1126
    return-object v1

    .line 1090
    .end local v0    # "nrsrp":I
    .end local v1    # "result":[Ljava/lang/String;
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_20

    .line 1091
    return-object v5

    .line 1094
    :cond_20
    new-array v4, v2, [Ljava/lang/String;

    .line 1096
    .local v4, "result":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1098
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_21

    .line 1099
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_21

    .line 1100
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    goto :goto_4

    .line 1102
    :cond_21
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_22

    .line 1103
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    goto :goto_4

    .line 1104
    :cond_22
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_23

    .line 1105
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    goto :goto_4

    .line 1106
    :cond_23
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_24

    .line 1107
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    goto :goto_4

    .line 1109
    :cond_24
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 1113
    :goto_4
    return-object v4

    .line 987
    .end local v1    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    .end local v4    # "result":[Ljava/lang/String;
    :cond_25
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_26

    .line 988
    return-object v5

    .line 991
    :cond_26
    const/4 v1, 0x0

    .line 993
    .local v1, "cellInfo":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 994
    const/16 v2, 0xd

    if-eq p2, v2, :cond_28

    const/16 v2, 0x13

    if-ne p2, v2, :cond_27

    goto :goto_5

    .line 997
    :cond_27
    if-ne p2, v0, :cond_29

    .line 998
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEhrpdInfo:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEhrpdInfo:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .end local v1    # "cellInfo":[Ljava/lang/String;
    .local v0, "cellInfo":[Ljava/lang/String;
    goto :goto_6

    .line 996
    .end local v0    # "cellInfo":[Ljava/lang/String;
    .restart local v1    # "cellInfo":[Ljava/lang/String;
    :cond_28
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLteCellInfo:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLteCellInfo:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 1000
    :cond_29
    :goto_6
    monitor-exit v4

    .line 1002
    return-object v1

    .line 1000
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 961
    .end local v1    # "cellInfo":[Ljava/lang/String;
    :cond_2a
    new-array v2, v2, [Ljava/lang/String;

    .line 963
    .local v2, "result":[Ljava/lang/String;
    const-string v4, "FAILURE"

    aput-object v4, v2, v3

    .line 965
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2e

    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_2b

    goto :goto_8

    .line 969
    :cond_2b
    if-eq p2, v0, :cond_2d

    if-eq p2, v1, :cond_2c

    .line 979
    return-object v2

    .line 975
    :cond_2c
    const v0, 0xd0062

    const/16 v1, 0x72

    .line 976
    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 975
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/Phone;->getModemIntegerItem(ILandroid/os/Message;)V

    .line 977
    goto :goto_7

    .line 971
    :cond_2d
    const v0, 0x6003e

    const/16 v1, 0x71

    .line 972
    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 971
    invoke-virtual {v4, v0, v1}, Lcom/android/internal/telephony/Phone;->getModemStringItem(ILandroid/os/Message;)V

    .line 973
    nop

    .line 982
    :goto_7
    const-string v0, "SUCCESS"

    aput-object v0, v2, v3

    .line 983
    return-object v2

    .line 966
    :cond_2e
    :goto_8
    return-object v2
.end method

.method public handleImsNetworkInfo()Z
    .locals 9

    .line 1689
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1690
    return v1

    .line 1693
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleImsNetworkInfo ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LGIMS_IPP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIMSNetworkInfo()[Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, "networkInfo":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1700
    return v1

    .line 1703
    :cond_2
    array-length v2, v0

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    .line 1704
    return v1

    .line 1707
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v2

    const/16 v4, 0xd

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 1708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleImsNetworkInfo :: rat = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , vops = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , emc_bs = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , ims_emc_support = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , ac_barring_for_emergency = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , mcc = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , mnc = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , plmn1 = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x7

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , plmn2 = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , cell id = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , tac = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , cell type = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xb

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , sector id = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    aget-object v7, v0, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , subnet mask = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "LGIMS_IPP"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_4
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isNetworkInfoValidAsString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    aget-object v2, v0, v1

    .line 1720
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 1725
    :cond_5
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1727
    .local v2, "rat":I
    iget-object v7, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isLTE(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1729
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setLteCellInfo([Ljava/lang/String;)V

    .line 1730
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLteCellInfo:[Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyCellInfo(I[Ljava/lang/String;)V

    .line 1731
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->updateLteNetworkInfo([Ljava/lang/String;)V

    .line 1732
    aget-object v3, v0, v5

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setLtePLMN2(Ljava/lang/String;)V

    goto :goto_0

    .line 1733
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isEHRPD(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1734
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setEhrpdInfo([Ljava/lang/String;)V

    .line 1735
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEhrpdInfo:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyCellInfo(I[Ljava/lang/String;)V

    goto :goto_0

    .line 1736
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isWCDMA(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1737
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyCellInfo(I[Ljava/lang/String;)V

    .line 1738
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->updateWcdmaNetworkInfo([Ljava/lang/String;)V

    .line 1746
    :goto_0
    monitor-exit v7

    .line 1753
    .end local v2    # "rat":I
    nop

    .line 1755
    return v6

    .line 1740
    .restart local v2    # "rat":I
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1741
    const-string v3, "LGIMS_IPP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleImsNetworkInfo :: rat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_9
    monitor-exit v7

    return v1

    .line 1746
    :catchall_0
    move-exception v3

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "networkInfo":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1747
    .end local v2    # "rat":I
    .restart local v0    # "networkInfo":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    :catch_0
    move-exception v2

    .line 1748
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1749
    const-string v3, "LGIMS_IPP"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1752
    :cond_a
    return v1

    .line 1721
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_1
    return v1
.end method

.method public init()V
    .locals 3

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;-><init>(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Lcom/android/internal/telephony/LGImsPhoneProxy$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mSsacInfo:[I

    const/4 v2, 0x0

    aput v2, v0, v2

    .line 826
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->startPhoneIF()V

    .line 828
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mtk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$400()Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhones::Registering for RIL_MODEM_BOOT_COMPLETEDe "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setImsEnabledForMTK(I)V

    .line 836
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    const-string v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$500()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 839
    return-void
.end method

.method public isNetworkInfoNotificationEnabled()Z
    .locals 1

    .line 1843
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUnsolResponseEnabled()Z

    move-result v0

    return v0
.end method

.method public onImsNetworkInfoChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 798
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 800
    .local v0, "phoneId":I
    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    if-eq v1, v0, :cond_0

    .line 801
    return-void

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->handleImsNetworkInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 805
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyCellInfo(I[Ljava/lang/String;)V

    .line 807
    :cond_1
    return-void
.end method

.method public onUnsolResponseFilterChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsolResponseFilter :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->notifyNetworkInfoNotificationEnabled(Z)V

    .line 815
    return-void
.end method

.method public removeNetworkInfoCallback(Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;

    .line 1869
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mNetworkInfoCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1870
    return-void
.end method

.method public requestCellInfo(ILcom/android/internal/telephony/ILGImsNetworkInfoCallback;Z)[Ljava/lang/String;
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;
    .param p3, "enforceUpdate"    # Z

    .line 1848
    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUnsolResponseEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1849
    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1852
    :cond_0
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mEhrpdInfo:[Ljava/lang/String;

    return-object v0

    .line 1856
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$1100()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1851
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mLteCellInfo:[Ljava/lang/String;

    return-object v0

    .line 1859
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->addNetworkInfoCallback(Lcom/android/internal/telephony/ILGImsNetworkInfoCallback;)V

    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->queryInfoForIms()V

    .line 1861
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestImsRegControl(I)V
    .locals 2
    .param p1, "controlType"    # I

    .line 1670
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const-string v1, "LGIMS_IPP"

    if-nez v0, :cond_0

    .line 1671
    const-string v0, "Handler is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void

    .line 1675
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->hasCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1676
    const-string v0, "Callback is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return-void

    .line 1680
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$1;-><init>(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1686
    return-void
.end method

.method public sendEnvelopeMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "userinfo"    # Ljava/lang/String;

    .line 1814
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEnvelopeMessage :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_1

    .line 1819
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    .line 1820
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1819
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 1822
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallback :: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCallback:Lcom/android/internal/telephony/ILGImsPhoneProxyCallback;

    .line 1634
    return-void
.end method

.method public setImsCallStatusToModemForMTK(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1825
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1826
    return-void

    .line 1829
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isOperatorVZW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1830
    return-void

    .line 1833
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsCallStatusToModemForMTK :: Rejecting MT CSFB during IMS Call, state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setVoLteCall(ILandroid/os/Message;)V

    .line 1840
    return-void
.end method

.method public setImsEnabledForMTK(I)V
    .locals 4
    .param p1, "enable"    # I

    .line 1803
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsEnabledForMTK :: ImsEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_2

    .line 1808
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    .line 1809
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1808
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setIMSEnabled(ZLandroid/os/Message;)V

    .line 1811
    :cond_2
    return-void
.end method

.method public setImsRegStatusToModemForMTK(III)V
    .locals 3
    .param p1, "regState"    # I
    .param p2, "regType"    # I
    .param p3, "reason"    # I

    .line 1773
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mtk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "LGIMS_IPP"

    if-nez v0, :cond_1

    .line 1774
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    const-string v0, "Not MTK chipset"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_0
    return-void

    .line 1780
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsRegStatusToModemForMTK :: regState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", regType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_2
    if-nez p1, :cond_3

    .line 1787
    return-void

    .line 1790
    :cond_3
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_4

    .line 1791
    const/4 p1, 0x0

    .line 1800
    :cond_4
    return-void
.end method

.method public setSysInfo(IIILjava/lang/String;)V
    .locals 19
    .param p1, "item"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "paramEx"    # Ljava/lang/String;

    .line 1204
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v3, "LGIMS_IPP"

    if-nez v0, :cond_1

    .line 1205
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone is null : item = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_0
    return-void

    .line 1211
    :cond_1
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_3

    .line 1212
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommandsInterface is null : item = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_2
    return-void

    .line 1218
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSysInfo ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_4
    const-string v0, "]"

    const/4 v4, 0x0

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 1563
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1487
    :sswitch_0
    const/4 v0, 0x0

    .line 1488
    .local v0, "bRegi":Z
    if-ne v9, v8, :cond_5

    move v6, v8

    :cond_5
    move v0, v6

    .line 1489
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set IMS Registration state on Internet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_6
    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/Phone;->setRegistrationStateServiceOfIms(Z)V

    .line 1494
    goto/16 :goto_4

    .line 1541
    .end local v0    # "bRegi":Z
    :sswitch_1
    iget-object v4, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v4, :cond_7

    .line 1542
    return-void

    .line 1545
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not attempt to IMS Registration because of 403/404. sys mode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], error cause ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    goto/16 :goto_4

    .line 1529
    :sswitch_2
    iget-object v4, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v4, :cond_8

    .line 1530
    return-void

    .line 1533
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS Initial Registration is triggered. sys mode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    goto/16 :goto_4

    .line 1344
    :sswitch_3
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mtk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1345
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1346
    const-string v0, "mtk chip vendor - ignore setImsStatus"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_9
    return-void

    .line 1351
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsStatus :: type ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), state ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), reason ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), slot_id ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1330
    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update volte call state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_b
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Lcom/android/internal/telephony/CommandsInterface;->setVoLteCall(ILandroid/os/Message;)V

    .line 1342
    goto/16 :goto_4

    .line 1314
    :sswitch_5
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update voice domain state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_c
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6b

    .line 1325
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1324
    invoke-interface {v0, v9, v3}, Lcom/android/internal/telephony/CommandsInterface;->setVoiceDomainPref(ILandroid/os/Message;)V

    .line 1327
    goto/16 :goto_4

    .line 1280
    :sswitch_6
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update ims reg state :: sys mode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_d
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 1288
    .local v12, "type":[I
    aput v6, v12, v6

    .line 1289
    aput v8, v12, v8

    .line 1293
    new-array v13, v0, [I

    .line 1295
    .local v13, "regState":[I
    if-nez v10, :cond_e

    .line 1296
    aput v6, v13, v6

    .line 1297
    aput v6, v13, v8

    goto :goto_0

    .line 1298
    :cond_e
    if-ne v10, v8, :cond_f

    .line 1300
    aput v8, v13, v6

    .line 1301
    aput v8, v13, v8

    goto :goto_0

    .line 1302
    :cond_f
    if-ne v10, v0, :cond_10

    .line 1304
    aput v6, v13, v6

    .line 1305
    aput v8, v13, v8

    .line 1308
    :cond_10
    :goto_0
    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x2

    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    .line 1309
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1308
    move/from16 v4, p2

    move-object v6, v12

    move-object v7, v13

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setImsRegistrationForHVoLTE(II[I[ILandroid/os/Message;)V

    .line 1311
    .end local v12    # "type":[I
    .end local v13    # "regState":[I
    goto/16 :goto_4

    .line 1478
    :sswitch_7
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1479
    const-string v0, "clearImsNetwokInfo() called due to receive LTE detached"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_11
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    .line 1482
    const/16 v3, 0x9d

    invoke-static {v0, v3, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 1443
    :sswitch_8
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYS_INFO_TRM : service type = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_12
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Lcom/android/internal/telephony/CommandsInterface;->setLteProc(ILandroid/os/Message;)V

    .line 1448
    goto/16 :goto_4

    .line 1436
    :sswitch_9
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYS_INFO_SCM_MODE : mode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , type = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_13
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v10, v9, v3}, Lcom/android/internal/telephony/CommandsInterface;->setScmMode(IILandroid/os/Message;)V

    .line 1441
    goto/16 :goto_4

    .line 1497
    :sswitch_a
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYS_INFO_MSIM_IMS_CALL_STATE Param 1: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Param 2: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_14
    const/4 v12, 0x1

    .line 1504
    .local v12, "rilCallEnd":I
    const/16 v13, 0x100

    .line 1507
    .local v13, "rilSysWIFI":I
    const/16 v14, 0x8

    .line 1508
    .local v14, "sysLTE":I
    const/4 v15, 0x6

    .line 1509
    .local v15, "sysWIFI":I
    const/16 v16, 0x0

    .line 1510
    .local v16, "callEnd":I
    const/16 v17, 0x1

    .line 1512
    .local v17, "callStart":I
    move/from16 v4, p2

    .line 1513
    .local v4, "callType":I
    const/4 v8, 0x0

    .line 1515
    .local v8, "slotId":I
    and-int v0, v10, v12

    if-eqz v0, :cond_15

    move/from16 v5, v16

    goto :goto_1

    :cond_15
    move/from16 v5, v17

    .line 1516
    .local v5, "callState":I
    :goto_1
    and-int v0, v10, v13

    if-eqz v0, :cond_16

    move v6, v15

    goto :goto_2

    :cond_16
    move v6, v14

    .line 1519
    .local v6, "sysMode":I
    :goto_2
    :try_start_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    .end local v8    # "slotId":I
    .local v0, "slotId":I
    goto :goto_3

    .line 1520
    .end local v0    # "slotId":I
    .restart local v8    # "slotId":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 1521
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "Exception while getting slotId"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/4 v3, 0x0

    move v0, v3

    .line 1525
    .end local v8    # "slotId":I
    .local v0, "slotId":I
    :goto_3
    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move v7, v0

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setImsCallStateForTuneAway(IIIILandroid/os/Message;)V

    .line 1526
    goto/16 :goto_4

    .line 1553
    .end local v0    # "slotId":I
    .end local v4    # "callType":I
    .end local v5    # "callState":I
    .end local v6    # "sysMode":I
    .end local v12    # "rilCallEnd":I
    .end local v13    # "rilSysWIFI":I
    .end local v14    # "sysLTE":I
    .end local v15    # "sysWIFI":I
    .end local v16    # "callEnd":I
    .end local v17    # "callStart":I
    :sswitch_b
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send NSRsecurecall info : callstate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", UEType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remoteNumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1474
    :sswitch_c
    invoke-virtual {v1, v9, v11}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->sendEnvelopeMessage(ILjava/lang/String;)V

    .line 1475
    goto/16 :goto_4

    .line 1466
    :sswitch_d
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update E-call state = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_17
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v9}, Lcom/android/internal/telephony/CommandsInterface;->sendE911CallState(I)V

    .line 1471
    goto/16 :goto_4

    .line 1456
    :sswitch_e
    if-ne v9, v8, :cond_18

    move v6, v8

    :cond_18
    move v0, v6

    .line 1458
    .local v0, "enable":Z
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataFlush ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_19
    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setImsDataFlushEnabled(ZLandroid/os/Message;)V

    .line 1463
    goto/16 :goto_4

    .line 1450
    .end local v0    # "enable":Z
    :sswitch_f
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1451
    const-string v0, "set ims boot completed sync up"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_1a
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x98

    invoke-static {v0, v3, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1454
    goto/16 :goto_4

    .line 1433
    :sswitch_10
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v9, v10, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendIMSCallState(IILandroid/os/Message;)V

    .line 1434
    goto/16 :goto_4

    .line 1388
    :sswitch_11
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1389
    const-string v0, "exit e911 mode"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_1b
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->exitVolteE911EmergencyMode(Landroid/os/Message;)V

    .line 1394
    goto/16 :goto_4

    .line 1423
    :sswitch_12
    if-ne v9, v8, :cond_1c

    move v6, v8

    :cond_1c
    move v0, v6

    .line 1425
    .restart local v0    # "enable":Z
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Peer SIM suspend="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_1d
    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPeerSimSuspend(ZLandroid/os/Message;)V

    .line 1431
    .end local v0    # "enable":Z
    goto/16 :goto_4

    .line 1401
    :sswitch_13
    if-eqz v9, :cond_20

    if-eq v9, v8, :cond_1e

    .line 1417
    goto/16 :goto_4

    .line 1410
    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KT MQI - IMS Response "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_1f
    iput-object v11, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mIMSResponse:Ljava/lang/String;

    .line 1414
    goto/16 :goto_4

    .line 1403
    :cond_20
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KT MQI - VoLTE Setting "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_21
    iput v10, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHDVoiceSetting:I

    .line 1407
    goto/16 :goto_4

    .line 1397
    :sswitch_14
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->this$0:Lcom/android/internal/telephony/LGImsPhoneProxy;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/LGImsPhoneProxy;->setPhoneId(I)V

    .line 1398
    goto/16 :goto_4

    .line 1361
    :sswitch_15
    iput v9, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsRegIndicator:I

    .line 1362
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS Reg Indicator : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsRegIndicator:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1369
    :sswitch_16
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CFU :: state="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", target="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_22
    if-nez v11, :cond_23

    .line 1374
    return-void

    .line 1377
    :cond_23
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1378
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    :cond_24
    move-object v3, v4

    .line 1380
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_26

    .line 1381
    if-ne v9, v8, :cond_25

    move v6, v8

    :cond_25
    invoke-virtual {v3, v8, v6, v11}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1384
    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v3    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_26
    goto/16 :goto_4

    .line 1229
    :sswitch_17
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REG STATE FOR MODEM = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_27
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v9, v3}, Lcom/android/internal/telephony/CommandsInterface;->setImsRegistration(ILandroid/os/Message;)V

    .line 1234
    goto/16 :goto_4

    .line 1268
    :sswitch_18
    if-nez v11, :cond_28

    .line 1269
    return-void

    .line 1272
    :cond_28
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS Status for UICC = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , IMS Status code = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_29
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v11, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1277
    goto :goto_4

    .line 1262
    :sswitch_19
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1263
    const-string v0, "SYS_INFO_SET_E911_TELEPHONY is deprecated since android 6.0"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1254
    :sswitch_1a
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency Call State = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , Emergency Call mode = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_2a
    iget-object v0, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, v1, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v9, v10, v3}, Lcom/android/internal/telephony/CommandsInterface;->setEmergency(IILandroid/os/Message;)V

    .line 1260
    goto :goto_4

    .line 1244
    :sswitch_1b
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS REG is DONE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1240
    :sswitch_1c
    goto :goto_4

    .line 1225
    :sswitch_1d
    invoke-direct {v1, v9, v10}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setBalItem(II)V

    .line 1568
    :cond_2b
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1d
        0x5 -> :sswitch_1c
        0xb -> :sswitch_1b
        0xd -> :sswitch_1a
        0xe -> :sswitch_19
        0x10 -> :sswitch_18
        0x12 -> :sswitch_17
        0x14 -> :sswitch_16
        0x16 -> :sswitch_15
        0x18 -> :sswitch_14
        0x1a -> :sswitch_13
        0x1b -> :sswitch_12
        0x1d -> :sswitch_11
        0x1f -> :sswitch_10
        0x20 -> :sswitch_f
        0x21 -> :sswitch_e
        0x23 -> :sswitch_d
        0x24 -> :sswitch_c
        0x25 -> :sswitch_b
        0x26 -> :sswitch_a
        0x2a -> :sswitch_9
        0x2b -> :sswitch_8
        0x2c -> :sswitch_7
        0x64 -> :sswitch_6
        0x66 -> :sswitch_5
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0x6a -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setSysInfoEx(I[I[Ljava/lang/String;)V
    .locals 24
    .param p1, "item"    # I
    .param p2, "param"    # [I
    .param p3, "paramEx"    # [Ljava/lang/String;

    .line 1571
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v4, "LGIMS_IPP"

    if-nez v3, :cond_0

    .line 1572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone is null : item = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void

    .line 1576
    :cond_0
    iget-object v3, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v3, :cond_1

    .line 1577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandsInterface is null : item = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    return-void

    .line 1581
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSysInfoEx ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_2
    const/16 v3, 0x28

    const-string v5, ")"

    const-string v6, "), slot id ("

    const-string v7, "), reason ("

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x5

    if-ne v1, v3, :cond_5

    .line 1586
    if-eqz v2, :cond_4

    array-length v3, v2

    if-le v3, v13, :cond_4

    .line 1587
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SYS_INFO_REGISTRATION :: state ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v2, v12

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "), services ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v2, v11

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "), detail state ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v2, v10

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "), system mode ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v2, v9

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v13

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_3
    iget-object v14, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    aget v15, v2, v12

    aget v16, v2, v11

    aget v17, v2, v10

    aget v18, v2, v9

    aget v19, v2, v8

    aget v20, v2, v13

    iget-object v3, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x78

    .line 1595
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1594
    invoke-interface/range {v14 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->setImsRegistrationStatus(IIIIIILandroid/os/Message;)V

    .line 1598
    :cond_4
    return-void

    .line 1601
    :cond_5
    const/16 v3, 0x29

    if-ne v1, v3, :cond_8

    .line 1602
    if-eqz v2, :cond_7

    array-length v3, v2

    const/4 v14, 0x6

    if-le v3, v14, :cond_7

    .line 1603
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SYS_INFO_CALL :: whole state ("

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v2, v12

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "), call id ("

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v2, v11

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "), state ("

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v2, v10

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v9

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), type ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v13

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_6
    iget-object v15, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    aget v16, v2, v12

    aget v17, v2, v11

    aget v18, v2, v10

    aget v19, v2, v9

    aget v20, v2, v8

    aget v21, v2, v13

    aget v22, v2, v14

    iget-object v3, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x79

    .line 1611
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1610
    invoke-interface/range {v15 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->setImsCallStatus(IIIIIIILandroid/os/Message;)V

    .line 1614
    :cond_7
    return-void

    .line 1617
    :cond_8
    const/16 v3, 0x2e

    if-ne v1, v3, :cond_b

    .line 1618
    if-eqz v2, :cond_a

    array-length v3, v2

    iget-object v4, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    array-length v4, v4

    if-lt v3, v4, :cond_a

    .line 1619
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mImsConfig:[I

    array-length v5, v4

    if-ge v3, v5, :cond_9

    .line 1620
    aget v5, v2, v3

    aput v5, v4, v3

    .line 1619
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1623
    .end local v3    # "i":I
    :cond_9
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setImsConfig(Z)V

    .line 1626
    :cond_a
    return-void

    .line 1628
    :cond_b
    return-void
.end method

.method public startPhoneIF()V
    .locals 7

    .line 847
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$500()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LGIMS_IPP"

    if-nez v0, :cond_0

    .line 848
    const-string v0, "No context"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void

    .line 852
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneIFEnable:Z

    if-eqz v0, :cond_1

    .line 853
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 857
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6f

    invoke-interface {v0, v3, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerSsacState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x70

    invoke-interface {v0, v3, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerLteState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 860
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$600()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$700()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6e

    invoke-interface {v0, v3, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerImsPreference(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 865
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_4

    .line 866
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 867
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 868
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->addImsNetworkInfoListener(Lcom/lge/internal/telephony/ILGImsNetworkInfoListener;)V

    .line 869
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x76

    invoke-static {v4, v5, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 872
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$400()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 873
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->initImsConfig()V

    .line 874
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setImsConfig(Z)V

    .line 877
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->isRegisterDataChangedRequired()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 878
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v3

    .line 880
    .local v3, "des":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    if-eqz v3, :cond_7

    .line 881
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9e

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->registerForDataEnabledChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 885
    .end local v3    # "des":Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mtk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    .line 886
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_9

    .line 887
    invoke-static {}, Lcom/lge/sysprop/ExportedVendorProperties;->ims_dualvolte()Ljava/util/Optional;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 886
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 888
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhone:Lcom/android/internal/telephony/Phone;

    const v3, 0xd0072

    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    .line 889
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 888
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setModemIntegerItem(IILandroid/os/Message;)V

    goto :goto_1

    .line 892
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mCI:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v3, :cond_9

    .line 893
    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x74

    invoke-interface {v3, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemBootComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 897
    :cond_9
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPhoneIF :: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->mPhoneIFEnable:Z

    .line 900
    return-void
.end method
