.class Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;
.super Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbaBootstrapCommand"
.end annotation


# instance fields
.field private mAutn:[B

.field private mRand:[B

.field final synthetic this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[B[BLandroid/os/Message;)V
    .locals 0
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 1143
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    .line 1144
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;Landroid/os/Message;)V

    .line 1145
    iput-object p2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;->mRand:[B

    .line 1146
    iput-object p3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;->mAutn:[B

    .line 1147
    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1151
    if-eqz p2, :cond_0

    .line 1152
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->access$2100(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x4953494d

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;->mRand:[B

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;->mAutn:[B

    iget-object v4, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    const/16 v5, 0x65

    iget-object v6, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaBootstrapCommand;->mOnComplete:Landroid/os/Message;

    .line 1155
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1154
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    .line 1157
    :goto_0
    return-void
.end method
