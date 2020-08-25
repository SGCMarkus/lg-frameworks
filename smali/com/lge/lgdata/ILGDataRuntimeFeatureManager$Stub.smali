.class public abstract Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;
.super Landroid/os/Binder;
.source "ILGDataRuntimeFeatureManager.java"

# interfaces
.implements Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.lgdata.ILGDataRuntimeFeatureManager"

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_registerObserver:I = 0x4

.field static final TRANSACTION_reloadFeatures:I = 0x3

.field static final TRANSACTION_setDefaultDataPhoneId:I = 0x6

.field static final TRANSACTION_setEnable:I = 0x2

.field static final TRANSACTION_unregisterObserver:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;
    .locals 1

    .line 355
    sget-object v0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->sDefaultImpl:Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_0
    const-string/jumbo v0, "setDefaultDataPhoneId"

    return-object v0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "unregisterObserver"

    return-object v0

    .line 82
    :pswitch_2
    const-string/jumbo v0, "registerObserver"

    return-object v0

    .line 78
    :pswitch_3
    const-string/jumbo v0, "reloadFeatures"

    return-object v0

    .line 74
    :pswitch_4
    const-string/jumbo v0, "setEnable"

    return-object v0

    .line 70
    :pswitch_5
    const-string v0, "isEnabled"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;)Z
    .locals 1
    .param p0, "impl"    # Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    .line 348
    sget-object v0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->sDefaultImpl:Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 349
    sput-object p0, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub$Proxy;->sDefaultImpl:Lcom/lge/lgdata/ILGDataRuntimeFeatureManager;

    .line 350
    const/4 v0, 0x1

    return v0

    .line 352
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const-string v0, "com.lge.lgdata.ILGDataRuntimeFeatureManager"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->setDefaultDataPhoneId(I)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    return v2

    .line 170
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;

    move-result-object v1

    .line 173
    .local v1, "_arg0":Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
    invoke-virtual {p0, v1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->unregisterObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    return v2

    .line 161
    .end local v1    # "_arg0":Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;

    move-result-object v1

    .line 164
    .restart local v1    # "_arg0":Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
    invoke-virtual {p0, v1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->registerObserver(Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    return v2

    .line 150
    .end local v1    # "_arg0":Lcom/lge/lgdata/ILGDataRuntimeFeatureObserver;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 155
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->reloadFeatures(IZ)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    return v2

    .line 132
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    sget-object v4, Lcom/lge/lgdata/LGDataRuntimeFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/lgdata/LGDataRuntimeFeature;

    .local v4, "_arg1":Lcom/lge/lgdata/LGDataRuntimeFeature;
    goto :goto_0

    .line 140
    .end local v4    # "_arg1":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :cond_1
    const/4 v4, 0x0

    .line 143
    .restart local v4    # "_arg1":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 144
    .local v1, "_arg2":Z
    :cond_2
    invoke-virtual {p0, v3, v4, v1}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->setEnable(ILcom/lge/lgdata/LGDataRuntimeFeature;Z)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v2

    .line 115
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    sget-object v3, Lcom/lge/lgdata/LGDataRuntimeFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/lgdata/LGDataRuntimeFeature;

    .local v3, "_arg1":Lcom/lge/lgdata/LGDataRuntimeFeature;
    goto :goto_1

    .line 123
    .end local v3    # "_arg1":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :cond_3
    const/4 v3, 0x0

    .line 125
    .restart local v3    # "_arg1":Lcom/lge/lgdata/LGDataRuntimeFeature;
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/lge/lgdata/ILGDataRuntimeFeatureManager$Stub;->isEnabled(ILcom/lge/lgdata/LGDataRuntimeFeature;)Z

    move-result v4

    .line 126
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return v2

    .line 110
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lcom/lge/lgdata/LGDataRuntimeFeature;
    .end local v4    # "_result":Z
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
