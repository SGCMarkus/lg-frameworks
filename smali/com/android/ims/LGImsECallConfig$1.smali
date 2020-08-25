.class Lcom/android/ims/LGImsECallConfig$1;
.super Ljava/lang/Object;
.source "LGImsECallConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/LGImsECallConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/LGImsECallConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/LGImsECallConfig;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "supportedIPCAN":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, "controlledByVoLteSetting":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, "controlledByVoLteReg":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .local v3, "normalCallEndRequired":I
    new-instance v4, Lcom/android/ims/LGImsECallConfig;

    .line 100
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    .line 101
    :goto_0
    if-nez v2, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    .line 102
    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    invoke-direct {v4, v0, v7, v8, v5}, Lcom/android/ims/LGImsECallConfig;-><init>(IZZZ)V

    .line 99
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/ims/LGImsECallConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/LGImsECallConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/ims/LGImsECallConfig;
    .locals 1
    .param p1, "size"    # I

    .line 107
    new-array v0, p1, [Lcom/android/ims/LGImsECallConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/ims/LGImsECallConfig$1;->newArray(I)[Lcom/android/ims/LGImsECallConfig;

    move-result-object p1

    return-object p1
.end method
