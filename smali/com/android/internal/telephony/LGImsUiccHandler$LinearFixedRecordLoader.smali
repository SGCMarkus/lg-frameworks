.class Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
.super Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;
.source "LGImsUiccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsUiccHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearFixedRecordLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGImsUiccHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsUiccHandler;ZI)V
    .locals 0
    .param p2, "resultTypeString"    # Z
    .param p3, "recordCount"    # I

    .line 680
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    .line 681
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;ZI)V

    .line 682
    return-void
.end method


# virtual methods
.method public onLoadCompleted(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .line 685
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 687
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 692
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->mRecordCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 693
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->setResult([B)V

    goto :goto_1

    .line 694
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->mResultTypeString:Z

    if-eqz v1, :cond_3

    .line 695
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 697
    .local v1, "resultRecords":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 698
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$900([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v2    # "i":I
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->mResult:Ljava/lang/Object;

    .line 702
    .end local v1    # "resultRecords":[Ljava/lang/String;
    goto :goto_1

    .line 703
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->mResult:Ljava/lang/Object;

    .line 705
    :goto_1
    return-void

    .line 688
    :cond_4
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->mResult:Ljava/lang/Object;

    .line 689
    return-void
.end method
