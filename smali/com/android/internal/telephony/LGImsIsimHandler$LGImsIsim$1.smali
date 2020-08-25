.class Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim$1;
.super Ljava/lang/Object;
.source "LGImsIsimHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->setCallback(Lcom/android/internal/telephony/ILGImsIsimCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    .line 853
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim$1;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim$1;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->getState()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "state":Ljava/lang/String;
    const-string v1, "NOT_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim$1;->this$1:Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;->access$1400(Lcom/android/internal/telephony/LGImsIsimHandler$LGImsIsim;Ljava/lang/String;)V

    .line 861
    :cond_0
    return-void
.end method
