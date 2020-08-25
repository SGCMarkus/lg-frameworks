.class Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
.super Ljava/lang/Object;
.source "LGImsUiccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsUiccHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileRecord"
.end annotation


# static fields
.field static final TYPE_LINEAR_FIXED:I = 0x2

.field static final TYPE_TRANSPARENT:I = 0x1


# instance fields
.field private mAppFamily:I

.field private mId:I

.field private mPath:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mId:I

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getEfType(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mType:I

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mAppFamily:I

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getEfPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mPath:Ljava/lang/String;

    .line 565
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mId:I

    .line 569
    iput p2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mType:I

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mAppFamily:I

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getEfPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mPath:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "path"    # Ljava/lang/String;

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mId:I

    .line 576
    iput p2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mType:I

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mAppFamily:I

    .line 578
    iput-object p3, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mPath:Ljava/lang/String;

    .line 579
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    .line 551
    iget v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    .line 551
    iget v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mType:I

    return v0
.end method


# virtual methods
.method public getAppFamily()I
    .locals 1

    .line 582
    iget v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mAppFamily:I

    return v0
.end method

.method public getAppFamily(I)I
    .locals 2
    .param p1, "efId"    # I

    .line 598
    const/16 v0, 0x6f38

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6fb7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6fe5

    if-eq p1, v0, :cond_0

    .line 606
    return v1

    .line 604
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 602
    :cond_1
    return v1
.end method

.method public getEfPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efId"    # I

    .line 620
    const/16 v0, 0x6f42

    const-string v1, "3F007FFF"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6fb7

    if-eq p1, v0, :cond_0

    .line 626
    const/4 v0, 0x0

    return-object v0

    .line 624
    :cond_0
    return-object v1

    .line 622
    :cond_1
    return-object v1
.end method

.method public getEfType(I)I
    .locals 1
    .param p1, "efId"    # I

    .line 611
    const/16 v0, 0x6f38

    if-eq p1, v0, :cond_0

    .line 615
    const/4 v0, 0x2

    return v0

    .line 613
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getId()I
    .locals 1

    .line 586
    iget v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mId:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->mType:I

    return v0
.end method
