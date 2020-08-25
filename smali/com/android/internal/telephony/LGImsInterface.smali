.class public Lcom/android/internal/telephony/LGImsInterface;
.super Ljava/lang/Object;
.source "LGImsInterface.java"


# static fields
.field public static final REQUEST_DEREGISTER:I = 0x3

.field public static final REQUEST_REGISTER:I = 0x1

.field public static final REQUEST_REREGISTER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHdVoiceSetting()I
    .locals 2

    .line 11
    invoke-static {}, Lcom/android/ims/ImsFeatureProvider;->hasLgeFeatureIms()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 12
    return v1

    .line 15
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getInstance()Lcom/android/internal/telephony/LGImsPhoneProxy;

    move-result-object v0

    .line 17
    .local v0, "ipp":Lcom/android/internal/telephony/LGImsPhoneProxy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getHdVoiceSetting()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static getImsResponse()Ljava/lang/String;
    .locals 2

    .line 21
    invoke-static {}, Lcom/android/ims/ImsFeatureProvider;->hasLgeFeatureIms()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 22
    return-object v1

    .line 25
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getInstance()Lcom/android/internal/telephony/LGImsPhoneProxy;

    move-result-object v0

    .line 27
    .local v0, "ipp":Lcom/android/internal/telephony/LGImsPhoneProxy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getImsResponse()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static requestImsRegistration(I)V
    .locals 1
    .param p0, "requestType"    # I

    .line 41
    invoke-static {}, Lcom/android/ims/ImsFeatureProvider;->hasLgeFeatureIms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->getInstance()Lcom/android/internal/telephony/LGImsPhoneProxy;

    move-result-object v0

    .line 47
    .local v0, "ipp":Lcom/android/internal/telephony/LGImsPhoneProxy;
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LGImsPhoneProxy;->requestImsRegistration(I)V

    .line 50
    :cond_1
    return-void
.end method
