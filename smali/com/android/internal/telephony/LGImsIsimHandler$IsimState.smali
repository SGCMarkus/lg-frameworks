.class Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;
.super Landroid/os/Handler;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsimState"
.end annotation


# static fields
.field public static final EVENT_ICC_CHANGED:I = 0x15

.field public static final EVENT_ISIM_RECORDS_LOADED:I = 0xb

.field public static final EVENT_ISIM_REFRESH_COMPLETED:I = 0xd

.field public static final EVENT_ISIM_REFRESH_STARTED:I = 0xc

.field public static final EVENT_SIM_LOADED:I = 0x2

.field public static final EVENT_SIM_READY:I = 0x1

.field public static final EVENT_SIM_REMOVED:I = 0x3

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_LOADED:I = 0x1

.field public static final STATE_REFRESHING:I = 0x2


# instance fields
.field private mIccState:Ljava/lang/String;

.field private final mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

.field private mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mIsimAppDetectedAfterSimInserted:Z

.field private mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsimRecordsChanged:Z

.field private mOldIccState:Ljava/lang/String;

.field private final mPhoneId:I

.field private mSimLoaded:Z

.field private mState:I

.field final synthetic this$0:Lcom/android/internal/telephony/LGImsIsimHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler;I)V
    .locals 3
    .param p2, "phoneId"    # I

    .line 421
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 413
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 414
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimAppDetectedAfterSimInserted:Z

    .line 415
    iput-boolean v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mSimLoaded:Z

    .line 416
    iput-boolean v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecordsChanged:Z

    .line 417
    iput v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mState:I

    .line 418
    const-string v1, "NOT_READY"

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIccState:Ljava/lang/String;

    .line 419
    const-string v1, "ABSENT"

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mOldIccState:Ljava/lang/String;

    .line 422
    iput p2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mPhoneId:I

    .line 424
    new-instance v1, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$000(Lcom/android/internal/telephony/LGImsIsimHandler;I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-direct {v1, p1, v2, p0}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler;Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    .line 426
    invoke-static {p1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$100(Lcom/android/internal/telephony/LGImsIsimHandler;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    const/16 v1, 0x15

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    return-void
.end method

.method private broadcastIsimStateInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .line 546
    iget v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$300(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$400(Ljava/lang/String;II)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->notifyIsimState(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private getPrefix()Ljava/lang/String;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IMS-ISIM][Phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleIccChanged(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$500(Lcom/android/internal/telephony/LGImsIsimHandler;I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 554
    .local v0, "newIsimApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_2

    .line 555
    const-string v2, "[IMS-ISIM] SIM"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " :: Remove stale IsimApplicatoin"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 560
    iput-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 562
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->setIsimUiccRecords(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    .line 565
    :cond_0
    iput-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 568
    :cond_1
    if-eqz v0, :cond_2

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " :: New IsimApplication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 570
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 571
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 574
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->setIsimUiccRecords(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    .line 576
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setIsimAppDetectedAfterSimInserted(Z)V

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0xb

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleIsimRefreshStarted()V

    .line 587
    :cond_2
    return-void
.end method

.method private handleIsimRecordsLoaded()V
    .locals 5

    .line 590
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getState()I

    move-result v0

    .line 592
    .local v0, "state":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setState(I)V

    .line 594
    const-string v1, "LOADED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->broadcastIsimStateInternal(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 595
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 596
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setState(I)V

    .line 597
    const-string v1, "REFRESH_COMPLETED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->broadcastIsimStateInternal(Ljava/lang/String;)V

    goto :goto_1

    .line 600
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecordsChanged:Z

    const/16 v2, 0xd

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Implicit ISIM refresh started"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleIsimRefreshStarted()V

    .line 603
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 605
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 608
    .local v1, "isimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimLoaded()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-ne v3, v1, :cond_4

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Implicit ISIM refresh started - value changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleIsimRefreshStarted()V

    .line 614
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 619
    .end local v1    # "isimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecordsChanged:Z

    .line 620
    return-void
.end method

.method private handleIsimRefreshCompleted()V
    .locals 2

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ISIM refresh completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 626
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setState(I)V

    .line 627
    const-string v0, "REFRESH_COMPLETED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->broadcastIsimStateInternal(Ljava/lang/String;)V

    .line 629
    :cond_0
    return-void
.end method

.method private handleIsimRefreshStarted()V
    .locals 2

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ISIM refresh started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setState(I)V

    .line 636
    const-string v0, "REFRESH_STARTED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->broadcastIsimStateInternal(Ljava/lang/String;)V

    .line 638
    :cond_0
    return-void
.end method

.method private handleSimLoaded()V
    .locals 3

    .line 641
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isSimLoaded()Z

    move-result v0

    .line 643
    .local v0, "simAlreadyLoaded":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setSimLoaded(Z)V

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setIsimRecordsAndRegisterEvent()V

    .line 648
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->isIsimPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "no ISIM application"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 651
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setState(I)V

    .line 652
    const-string v1, "NOT_PRESENT"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->broadcastIsimStateInternal(Ljava/lang/String;)V

    .line 653
    return-void

    .line 655
    :cond_0
    if-eqz v0, :cond_1

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SIM is already loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 658
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setIsimRecordsAndRegisterEvent()V

    .line 660
    :cond_1
    return-void
.end method

.method private handleSimReady()V
    .locals 0

    .line 663
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setIsimRecordsAndRegisterEvent()V

    .line 664
    return-void
.end method

.method private handleSimRemoved()V
    .locals 2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SIM removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecordsChanged:Z

    .line 670
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setIsimAppDetectedAfterSimInserted(Z)V

    .line 671
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setSimLoaded(Z)V

    .line 672
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setState(I)V

    .line 673
    const-string v0, "NOT_READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->broadcastIsimStateInternal(Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method private setIsimAppDetectedAfterSimInserted(Z)V
    .locals 2
    .param p1, "isimAppDetected"    # Z

    .line 714
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimAppDetectedAfterSimInserted:Z

    if-eq v0, p1, :cond_0

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setIsimAppDetectedAfterSimInserted :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimAppDetectedAfterSimInserted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 717
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimAppDetectedAfterSimInserted:Z

    .line 719
    :cond_0
    return-void
.end method

.method private setIsimRecordsAndRegisterEvent()V
    .locals 5

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$500(Lcom/android/internal/telephony/LGImsIsimHandler;I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 680
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_0

    .line 681
    const-string v0, "[IMS-ISIM] No IsimApplication"

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 682
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 688
    .local v0, "isimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 689
    if-eq v1, v0, :cond_1

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "IsimRecord is changed"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 692
    iput-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 693
    iput-boolean v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecordsChanged:Z

    .line 695
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->setIsimUiccRecords(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    goto :goto_0

    .line 698
    :cond_1
    return-void

    .line 701
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "IsimRecord is initialized"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 704
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 706
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_3

    .line 707
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->setIsimUiccRecords(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    .line 708
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setIsimAppDetectedAfterSimInserted(Z)V

    .line 709
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0xb

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 711
    :cond_3
    return-void
.end method

.method private setSimLoaded(Z)V
    .locals 2
    .param p1, "loaded"    # Z

    .line 722
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mSimLoaded:Z

    if-eq v0, p1, :cond_0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setSimLoaded :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mSimLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 724
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mSimLoaded:Z

    .line 726
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 729
    iget v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mState:I

    if-eq v0, p1, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setState :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 731
    iput p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mState:I

    .line 733
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->setIsimUiccRecords(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    .line 437
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setSimLoaded(Z)V

    .line 438
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->setState(I)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$100(Lcom/android/internal/telephony/LGImsIsimHandler;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 441
    return-void
.end method

.method public getIccState()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIccState:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimInterface()Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mImsIsim:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    return-object v0
.end method

.method public getOldIccState()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mOldIccState:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mPhoneId:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleMessage - event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 447
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 469
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleIsimRefreshCompleted()V

    .line 470
    goto :goto_0

    .line 465
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleIsimRefreshStarted()V

    .line 466
    goto :goto_0

    .line 461
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleIsimRecordsLoaded()V

    .line 462
    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 475
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, "slotId":I
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 479
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 480
    .local v2, "index":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 483
    .end local v2    # "index":Ljava/lang/Integer;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleIccChanged(I)V

    .line 484
    .end local v1    # "slotId":I
    goto :goto_0

    .line 485
    :cond_2
    const-string v1, "[IMS-ISIM] Error: Invalid card index"

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 487
    goto :goto_0

    .line 457
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleSimRemoved()V

    .line 458
    goto :goto_0

    .line 453
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleSimLoaded()V

    .line 454
    goto :goto_0

    .line 449
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->handleSimReady()V

    .line 450
    nop

    .line 493
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initializeState()V
    .locals 1

    .line 508
    const-string v0, "NOT_READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->broadcastIsimStateInternal(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public isIsimAppDetectedAfterSimInserted()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimAppDetectedAfterSimInserted:Z

    return v0
.end method

.method public isIsimLoaded()Z
    .locals 2

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isIsimPresent()Z
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimLoaded()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mSimLoaded:Z

    return v0
.end method

.method public setIccState(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIccState:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS-ISIM] IccState (SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIccState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIccState:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mOldIccState:Ljava/lang/String;

    .line 540
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimState;->mIccState:Ljava/lang/String;

    .line 542
    :cond_0
    return-void
.end method
