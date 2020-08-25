.class Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner$1;
.super Landroid/os/Handler;
.source "LGImsUiccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    .line 354
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    const-string v0, "ImsUicc :: LOAD_ICC_RECORD_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsUiccHandler;->access$400(Ljava/lang/String;)V

    .line 361
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 362
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;

    .line 364
    .local v1, "loader":Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;->access$702(Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;Z)Z

    .line 367
    if-eqz v1, :cond_2

    .line 368
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->onLoadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;->onLoadCompleted(Ljava/lang/Object;)V

    .line 375
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsUiccHandler$LGImsUicc$Runner;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 376
    monitor-exit v2

    .line 377
    nop

    .line 383
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "loader":Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;
    :goto_1
    return-void

    .line 376
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "loader":Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
