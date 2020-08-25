.class Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;
.super Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbaNafCommand"
.end annotation


# instance fields
.field private mNafId:[B

.field final synthetic this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;[BLandroid/os/Message;)V
    .locals 0
    .param p2, "nafId"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 1163
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    .line 1164
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;Landroid/os/Message;)V

    .line 1165
    iput-object p2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;->mNafId:[B

    .line 1166
    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1170
    if-eqz p2, :cond_0

    .line 1171
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->access$2100(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x4953494d

    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;->mNafId:[B

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    const/16 v4, 0x66

    iget-object v5, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$GbaNafCommand;->mOnComplete:Landroid/os/Message;

    .line 1174
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1173
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    .line 1176
    :goto_0
    return-void
.end method
