.class Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
.super Ljava/lang/Thread;
.source "LGImsUiccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runner"
.end annotation


# static fields
.field private static final EVENT_LOAD_ICC_RECORD_DONE:I = 0x65


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 346
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mDone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;Lcom/android/internal/telephony/LGImsUiccHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;
    .param p2, "x1"    # Lcom/android/internal/telephony/LGImsUiccHandler$1;

    .line 343
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
    .param p1, "x1"    # Z

    .line 343
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mDone:Z

    return p1
.end method

.method private checkAndStart()V
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->start()V

    .line 522
    :cond_0
    return-void
.end method

.method private getFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2
    .param p1, "family"    # I

    .line 513
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    .line 514
    invoke-static {v1}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->access$800(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 513
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 515
    .local v0, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private waitHandler()V
    .locals 2

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 528
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_1
    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 533
    :cond_0
    return-void
.end method

.method private waitResult()V
    .locals 2

    .line 537
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mDone:Z

    if-nez v0, :cond_0

    .line 539
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_1
    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 546
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mDone:Z

    .line 547
    return-void
.end method


# virtual methods
.method public declared-synchronized loadLinearFixed(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)Ljava/lang/String;
    .locals 6
    .param p1, "record"    # Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    monitor-enter p0

    .line 393
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->checkAndStart()V

    .line 394
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitHandler()V

    .line 396
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->getFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .local v0, "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 399
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 402
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    iget-object v2, v2, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;ZI)V

    .line 404
    .local v1, "loader":Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    .line 405
    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 404
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 407
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitResult()V

    .line 409
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 392
    .end local v0    # "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "loader":Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
    .end local p1    # "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadLinearFixedAll(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)[Ljava/lang/String;
    .locals 6
    .param p1, "record"    # Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    monitor-enter p0

    .line 413
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->checkAndStart()V

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitHandler()V

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->getFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    .local v0, "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 419
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 422
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    iget-object v2, v2, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;ZI)V

    .line 424
    .local v1, "loader":Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    .line 425
    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 424
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 427
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitResult()V

    .line 429
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 412
    .end local v0    # "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "loader":Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
    .end local p1    # "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadLinearFixedAllAsBytes(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)Ljava/util/List;
    .locals 6
    .param p1, "record"    # Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->checkAndStart()V

    .line 434
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitHandler()V

    .line 436
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->getFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    .local v0, "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 439
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 442
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    iget-object v2, v2, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;ZI)V

    .line 444
    .local v1, "loader":Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    .line 445
    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 444
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 447
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitResult()V

    .line 449
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 432
    .end local v0    # "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "loader":Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
    .end local p1    # "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadLinearFixedAsBytes(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)[B
    .locals 6
    .param p1, "record"    # Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    monitor-enter p0

    .line 453
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->checkAndStart()V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitHandler()V

    .line 456
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->getFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    .local v0, "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 459
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 462
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    iget-object v2, v2, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;ZI)V

    .line 464
    .local v1, "loader":Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    .line 465
    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 464
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 467
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitResult()V

    .line 469
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 452
    .end local v0    # "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "loader":Lcom/android/internal/telephony/LGImsUiccHandler$LinearFixedRecordLoader;
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
    .end local p1    # "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadTransparent(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)[B
    .locals 5
    .param p1, "record"    # Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    monitor-enter p0

    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->checkAndStart()V

    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitHandler()V

    .line 476
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->getFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .local v0, "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 479
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 482
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    iget-object v2, v2, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;Z)V

    .line 484
    .local v1, "loader":Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    .line 485
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 484
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 487
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitResult()V

    .line 489
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 472
    .end local v0    # "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "loader":Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
    .end local p1    # "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadTransparentAsString(Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;)Ljava/lang/String;
    .locals 5
    .param p1, "record"    # Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;

    monitor-enter p0

    .line 493
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->checkAndStart()V

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitHandler()V

    .line 496
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getAppFamily()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->getFileHandler(I)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    .local v0, "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_0

    .line 499
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 502
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->this$1:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;

    iget-object v2, v2, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;Z)V

    .line 504
    .local v1, "loader":Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;
    invoke-virtual {p1}, Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    .line 505
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 504
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 507
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->waitResult()V

    .line 509
    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 492
    .end local v0    # "ifh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "loader":Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;
    .end local p0    # "this":Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;
    .end local p1    # "record":Lcom/android/internal/telephony/LGImsUiccHandler$FileRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 351
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 353
    monitor-enter p0

    .line 354
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner$1;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->mHandler:Landroid/os/Handler;

    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 387
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 390
    return-void

    .line 387
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
