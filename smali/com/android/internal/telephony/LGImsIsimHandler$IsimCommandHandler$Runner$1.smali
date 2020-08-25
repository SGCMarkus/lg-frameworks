.class Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner$1;
.super Landroid/os/Handler;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    .line 1031
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1034
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1035
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1039
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISIM operation completed :: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    monitor-enter v1

    .line 1041
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->access$1602(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;Z)Z

    .line 1043
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 1047
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;->access$1702(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner$1;->this$2:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$Runner;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1050
    monitor-exit v1

    .line 1051
    goto :goto_0

    .line 1050
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1057
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
