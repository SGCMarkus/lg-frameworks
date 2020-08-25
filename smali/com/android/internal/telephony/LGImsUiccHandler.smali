.class public Lcom/android/internal/telephony/LGImsUiccHandler;
.super Ljava/lang/Object;
.source "LGImsUiccHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;,
        Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;,
        Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;,
        Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;,
        Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final EF_ECC:I = 0x6fb7

.field public static final EF_PSISMSC:I = 0x6fe5

.field public static final EF_SMSP:I = 0x6f42

.field public static final EF_UST:I = 0x6f38

.field private static final FILE_RECORDS:[Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

.field private static final HEX_CHARS:[C

.field private static final TAG:Ljava/lang/String; = "LGImsUicc"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private final mUiccs:[Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/internal/telephony/LGImsUiccHandler;->DBG:Z

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/LGImsUiccHandler;->HEX_CHARS:[C

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    const/16 v4, 0x6f38

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;-><init>(I)V

    aput-object v3, v0, v2

    new-instance v2, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    const/16 v3, 0x6f42

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    const/16 v3, 0x6fb7

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    const/16 v3, 0x6fe5

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;-><init>(I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/LGImsUiccHandler;->FILE_RECORDS:[Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/internal/telephony/LGImsUiccHandler;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 57
    array-length v0, p2

    new-array v0, v0, [Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler;->mUiccs:[Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler;->mUiccs:[Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    new-instance v2, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    aget-object v3, p2, v0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;Lcom/android/internal/telephony/Phone;)V

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$1000([B)[B
    .locals 1
    .param p0, "x0"    # [B

    .line 27
    invoke-static {p0}, Lcom/android/internal/telephony/LGImsUiccHandler;->decodeDataToBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BII)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/LGImsUiccHandler;->bytesToHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/android/internal/telephony/LGImsUiccHandler;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 27
    invoke-static {p0}, Lcom/android/internal/telephony/LGImsUiccHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(II)Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 27
    invoke-static {p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler;->getFileRecord(II)Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .line 27
    invoke-static {p0}, Lcom/android/internal/telephony/LGImsUiccHandler;->decodeDataToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToHexString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 86
    if-eqz p0, :cond_3

    array-length v0, p0

    if-le v0, p1, :cond_3

    if-ltz p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 91
    array-length v0, p0

    sub-int p2, v0, p1

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 99
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 101
    .local v2, "b":I
    sget-object v3, Lcom/android/internal/telephony/LGImsUiccHandler;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    aget-byte v3, p0, v1

    and-int/lit8 v2, v3, 0xf

    .line 105
    sget-object v3, Lcom/android/internal/telephony/LGImsUiccHandler;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    .end local v0    # "ret":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static decodeDataToBytes([B)[B
    .locals 5
    .param p0, "record"    # [B

    .line 112
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 114
    .local v0, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    sget-boolean v1, Lcom/android/internal/telephony/LGImsUiccHandler;->DBG:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "Not TLV object. Use raw bytes."

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsUiccHandler;->log(Ljava/lang/String;)V

    .line 119
    :cond_0
    array-length v1, p0

    new-array v1, v1, [B

    .line 122
    .local v1, "result":[B
    :try_start_0
    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    nop

    .line 129
    return-object v1

    .line 123
    :catchall_0
    move-exception v2

    .line 124
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeDataToBytes :: record="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v3}, Lcom/android/internal/telephony/LGImsUiccHandler;->log(Ljava/lang/String;)V

    .line 126
    const/4 v3, 0x0

    return-object v3

    .line 132
    .end local v1    # "result":[B
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    return-object v1
.end method

.method private static decodeDataToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "record"    # [B

    .line 136
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 138
    .local v0, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    sget-boolean v1, Lcom/android/internal/telephony/LGImsUiccHandler;->DBG:Z

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "Not TLV object. Use hex string."

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsUiccHandler;->log(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static getFileRecord(II)Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    .locals 5
    .param p0, "fileId"    # I
    .param p1, "defaultType"    # I

    .line 76
    sget-object v0, Lcom/android/internal/telephony/LGImsUiccHandler;->FILE_RECORDS:[Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 77
    .local v3, "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    invoke-static {v3}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->access$000(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 78
    return-object v3

    .line 76
    .end local v3    # "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;-><init>(II)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 150
    const-string v0, "LGImsUicc"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 65
    return-void
.end method

.method public getUiccInterface(I)Lcom/android/internal/telephony/ILGImsUicc;
    .locals 2
    .param p1, "phoneId"    # I

    .line 68
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler;->mUiccs:[Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 69
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
