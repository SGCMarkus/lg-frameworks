.class public abstract Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub;
.super Landroid/os/Binder;
.source "IImsMmTelFeatureEx.java"

# interfaces
.implements Lcom/android/ims/internal/IImsMmTelFeatureEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsMmTelFeatureEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsMmTelFeatureEx"

.field static final TRANSACTION_getEmergencyCallConfig:I = 0x1

.field static final TRANSACTION_getIncomingCallInfo:I = 0x3

.field static final TRANSACTION_isEmergencyCallAvailableOverWfc:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.ims.internal.IImsMmTelFeatureEx"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMmTelFeatureEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "com.android.ims.internal.IImsMmTelFeatureEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsMmTelFeatureEx;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsMmTelFeatureEx;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/ims/internal/IImsMmTelFeatureEx;
    .locals 1

    .line 269
    sget-object v0, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub$Proxy;->sDefaultImpl:Lcom/android/ims/internal/IImsMmTelFeatureEx;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 78
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    const-string v0, "getIncomingCallInfo"

    return-object v0

    .line 86
    :cond_1
    const-string v0, "isEmergencyCallAvailableOverWfc"

    return-object v0

    .line 82
    :cond_2
    const-string v0, "getEmergencyCallConfig"

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/ims/internal/IImsMmTelFeatureEx;)Z
    .locals 1
    .param p0, "impl"    # Lcom/android/ims/internal/IImsMmTelFeatureEx;

    .line 262
    sget-object v0, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub$Proxy;->sDefaultImpl:Lcom/android/ims/internal/IImsMmTelFeatureEx;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 263
    sput-object p0, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub$Proxy;->sDefaultImpl:Lcom/android/ims/internal/IImsMmTelFeatureEx;

    .line 264
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const-string v0, "com.android.ims.internal.IImsMmTelFeatureEx"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v2

    .line 137
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub;->getIncomingCallInfo()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 139
    .local v3, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v3, p3, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_0
    return v2

    .line 129
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub;->isEmergencyCallAvailableOverWfc()Z

    move-result v1

    .line 131
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v2

    .line 115
    .end local v1    # "_result":Z
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMmTelFeatureEx$Stub;->getEmergencyCallConfig()Lcom/android/ims/LGImsECallConfig;

    move-result-object v3

    .line 117
    .local v3, "_result":Lcom/android/ims/LGImsECallConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v3, :cond_5

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v3, p3, v2}, Lcom/android/ims/LGImsECallConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 123
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_1
    return v2
.end method
