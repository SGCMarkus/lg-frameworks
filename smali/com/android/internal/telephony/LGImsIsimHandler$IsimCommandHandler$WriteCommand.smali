.class Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;
.super Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteCommand"
.end annotation


# instance fields
.field private mData:[B

.field private mEfId:I

.field final synthetic this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;I[BLandroid/os/Message;)V
    .locals 0
    .param p2, "efId"    # I
    .param p3, "data"    # [B
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 1183
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    .line 1184
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;-><init>(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;Landroid/os/Message;)V

    .line 1185
    iput p2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;->mEfId:I

    .line 1186
    iput-object p3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;->mData:[B

    .line 1187
    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1191
    if-eqz p2, :cond_0

    .line 1192
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$PendingCommand;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;->access$2100(Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$500(Lcom/android/internal/telephony/LGImsIsimHandler;I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 1196
    .local v0, "isimApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    .line 1197
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 1199
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_1

    .line 1200
    iget v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;->mEfId:I

    iget-object v3, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;->mData:[B

    iget-object v4, p0, Lcom/android/internal/telephony/LGImsIsimHandler$IsimCommandHandler$WriteCommand;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_0

    .line 1202
    :cond_1
    const-string v2, "No IccFileHandler"

    invoke-static {v2}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 1204
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :goto_0
    goto :goto_1

    .line 1205
    :cond_2
    const-string v1, "No IsimApplication"

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 1208
    .end local v0    # "isimApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_1
    return-void
.end method
