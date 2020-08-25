.class Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;
.super Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;
.source "LGImsUiccHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsUiccHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransparentRecordLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGImsUiccHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsUiccHandler;Z)V
    .locals 0
    .param p2, "resultTypeString"    # Z

    .line 670
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;->this$0:Lcom/android/internal/telephony/LGImsUiccHandler;

    .line 671
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/LGImsUiccHandler$RecordLoader;-><init>(Lcom/android/internal/telephony/LGImsUiccHandler;Z)V

    .line 672
    return-void
.end method


# virtual methods
.method public onLoadCompleted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 675
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGImsUiccHandler$TransparentRecordLoader;->setResult([B)V

    .line 676
    return-void
.end method
