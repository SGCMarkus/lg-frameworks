.class abstract Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;
.super Ljava/lang/Object;
.source "LGImsUiccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsUiccHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RecordLoader"
.end annotation


# instance fields
.field protected mRecordCount:I

.field protected mResult:Ljava/lang/Object;

.field protected mResultTypeString:Z

.field final synthetic this$0:Lcom/android/internal/telephony/LGImsUiccHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsUiccHandler;Z)V
    .locals 0
    .param p2, "resultTypeString"    # Z

    .line 636
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResultTypeString:Z

    .line 633
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mRecordCount:I

    .line 637
    iput-boolean p2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResultTypeString:Z

    .line 638
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/LGImsUiccHandler;ZI)V
    .locals 0
    .param p2, "resultTypeString"    # Z
    .param p3, "recordCount"    # I

    .line 640
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResultTypeString:Z

    .line 633
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mRecordCount:I

    .line 641
    iput-boolean p2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResultTypeString:Z

    .line 642
    iput p3, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mRecordCount:I

    .line 643
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract onLoadCompleted(Ljava/lang/Object;)V
.end method

.method public onLoadFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsUicc :: onLoadFailed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$400(Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method protected setResult([B)V
    .locals 1
    .param p1, "record"    # [B

    .line 656
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 661
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResultTypeString:Z

    if-eqz v0, :cond_1

    .line 662
    invoke-static {p1}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$900([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResult:Ljava/lang/Object;

    goto :goto_0

    .line 664
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$1000([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResult:Ljava/lang/Object;

    .line 666
    :goto_0
    return-void

    .line 657
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->mResult:Ljava/lang/Object;

    .line 658
    return-void
.end method
