.class Lcom/lge/lgdata/LGDataRuntimeFeature$1;
.super Ljava/lang/Object;
.source "LGDataRuntimeFeature.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataRuntimeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/lge/lgdata/LGDataRuntimeFeature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/lgdata/LGDataRuntimeFeature;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 2451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/lgdata/LGDataRuntimeFeature;->valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataRuntimeFeature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2448
    invoke-virtual {p0, p1}, Lcom/lge/lgdata/LGDataRuntimeFeature$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/lgdata/LGDataRuntimeFeature;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/lge/lgdata/LGDataRuntimeFeature;
    .locals 1
    .param p1, "size"    # I

    .line 2456
    new-array v0, p1, [Lcom/lge/lgdata/LGDataRuntimeFeature;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2448
    invoke-virtual {p0, p1}, Lcom/lge/lgdata/LGDataRuntimeFeature$1;->newArray(I)[Lcom/lge/lgdata/LGDataRuntimeFeature;

    move-result-object p1

    return-object p1
.end method
