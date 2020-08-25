.class Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;
.super Ljava/lang/Object;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommand"
.end annotation


# instance fields
.field protected mOnComplete:Landroid/os/Message;

.field final synthetic this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;Landroid/os/Message;)V
    .locals 0
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 1129
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput-object p2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->mOnComplete:Landroid/os/Message;

    .line 1131
    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->mOnComplete:Landroid/os/Message;

    invoke-static {v0, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1136
    return-void
.end method
