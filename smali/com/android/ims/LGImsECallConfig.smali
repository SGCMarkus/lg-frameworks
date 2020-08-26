.class public Lcom/android/ims/LGImsECallConfig;
.super Ljava/lang/Object;
.source "LGImsECallConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/LGImsECallConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final IPCAN_ALL:I = 0x3

.field public static final IPCAN_LTE:I = 0x1

.field public static final IPCAN_NONE:I = 0x0

.field public static final IPCAN_WIFI:I = 0x2


# instance fields
.field private final mControlledByVoLteReg:Z

.field private final mControlledByVoLteSetting:Z

.field private final mNormalCallEndRequired:Z

.field private final mSupportedIPCAN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/android/ims/LGImsECallConfig$1;

    invoke-direct {v0}, Lcom/android/ims/LGImsECallConfig$1;-><init>()V

    sput-object v0, Lcom/android/ims/LGImsECallConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 0
    .param p1, "supportedIPCAN"    # I
    .param p2, "controlledByVoLteSetting"    # Z
    .param p3, "controlledByVoLteReg"    # Z
    .param p4, "normalCallEndRequired"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/ims/LGImsECallConfig;->mSupportedIPCAN:I

    .line 32
    iput-boolean p2, p0, Lcom/android/ims/LGImsECallConfig;->mControlledByVoLteSetting:Z

    .line 33
    iput-boolean p3, p0, Lcom/android/ims/LGImsECallConfig;->mControlledByVoLteReg:Z

    .line 34
    iput-boolean p4, p0, Lcom/android/ims/LGImsECallConfig;->mNormalCallEndRequired:Z

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getIpcanForECall()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/android/ims/LGImsECallConfig;->mSupportedIPCAN:I

    return v0
.end method

.method public isECallControlledByVoLteReg()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/android/ims/LGImsECallConfig;->mControlledByVoLteReg:Z

    return v0
.end method

.method public isECallControlledByVoLteSetting()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/android/ims/LGImsECallConfig;->mControlledByVoLteSetting:Z

    return v0
.end method

.method public isECallSupportedInLte()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/android/ims/LGImsECallConfig;->mSupportedIPCAN:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isECallSupportedInWifi()Z
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/ims/LGImsECallConfig;->mSupportedIPCAN:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImsCallEndRequiredForECall()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/android/ims/LGImsECallConfig;->mNormalCallEndRequired:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "{ ImsECallConfig: supportedIPCAN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget v1, p0, Lcom/android/ims/LGImsECallConfig;->mSupportedIPCAN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, ", controlledByVoLteSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-boolean v1, p0, Lcom/android/ims/LGImsECallConfig;->mControlledByVoLteSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, ", controlledByVoLteReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-boolean v1, p0, Lcom/android/ims/LGImsECallConfig;->mControlledByVoLteReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, ", normalCallEndRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-boolean v1, p0, Lcom/android/ims/LGImsECallConfig;->mNormalCallEndRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const v1, 0
    const v2, 1

    .line 85
    iget v0, p0, Lcom/android/ims/LGImsECallConfig;->mSupportedIPCAN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean v0, p0, Lcom/android/ims/LGImsECallConfig;->mControlledByVoLteSetting:Z

    if-eqz v0, :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    goto :goto_0
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :goto_0

    .line 87
    iget-boolean v0, p0, Lcom/android/ims/LGImsECallConfig;->mControlledByVoLteReg:Z

    if-eqz v0, :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    goto :goto_1
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :goto_1

    .line 88
    iget-boolean v0, p0, Lcom/android/ims/LGImsECallConfig;->mNormalCallEndRequired:Z

    if-eqz v0, :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    goto :goto_2
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V
    :goto_2

    .line 89
    return-void
.end method
