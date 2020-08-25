.class final Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;
.super Lcom/android/internal/telephony/ILGImsIsim$Stub;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LGImsIsim"
.end annotation


# instance fields
.field private mCallback:Lcom/android/internal/telephony/ILGImsIsimCallback;

.field private final mCommandHandler:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

.field private final mHandler:Landroid/os/Handler;

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mState:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/LGImsIsimHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler;Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 1
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 801
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/ILGImsIsim$Stub;-><init>()V

    .line 799
    const-string v0, "NOT_READY"

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mState:Ljava/lang/String;

    .line 802
    iput-object p2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 803
    iput-object p3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mHandler:Landroid/os/Handler;

    .line 804
    new-instance v0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mCommandHandler:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    .line 805
    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;
    .param p1, "x1"    # Ljava/lang/String;

    .line 792
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->notifyIsimStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method private notifyIsimStateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .line 920
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mCallback:Lcom/android/internal/telephony/ILGImsIsimCallback;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mCallback:Lcom/android/internal/telephony/ILGImsIsimCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ILGImsIsimCallback;->onIsimStateChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_0
    goto :goto_0

    .line 923
    :catchall_0
    move-exception v0

    .line 924
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 926
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public getBTid()Ljava/lang/String;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimBtid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 828
    :cond_0
    const/4 v0, 0x0

    .line 827
    :goto_0
    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 810
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mCommandHandler:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->getGbaBootstrapAuthentication([B[B)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 816
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getImpu()[Ljava/lang/String;
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 822
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getIst()Ljava/lang/String;
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 834
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimIst()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimKeyLifetime()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNafExternalKey([B)[B
    .locals 1
    .param p1, "nafId"    # [B

    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mCommandHandler:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->getGbaNafAuthentication([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPcscfAddress()[Ljava/lang/String;
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 840
    .local v0, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getRand()[B
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimRand()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public isGbaSupported()Z
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->isGbaSupported()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyIsimState(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mState:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mState:Ljava/lang/String;

    .line 910
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->notifyIsimStateChanged(Ljava/lang/String;)V

    .line 912
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/internal/telephony/ILGImsIsimCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/telephony/ILGImsIsimCallback;

    .line 850
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mCallback:Lcom/android/internal/telephony/ILGImsIsimCallback;

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mCallback:Lcom/android/internal/telephony/ILGImsIsimCallback;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim$1;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    :cond_0
    return-void
.end method

.method public setGbaBootstrappingParameters([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->setIsimRand([B)V

    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->setIsimBtid(Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->setIsimKeyLifetime(Ljava/lang/String;)V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mCommandHandler:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->setGbaBootstrappingParameters([BLjava/lang/String;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method public setIsimUiccRecords(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0
    .param p1, "isimUiccRecords"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 915
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 916
    return-void
.end method
