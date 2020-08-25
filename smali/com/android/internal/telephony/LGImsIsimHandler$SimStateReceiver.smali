.class Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGImsIsimHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsIsimHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGImsIsimHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LGImsIsimHandler;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 746
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IMS-ISIM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$600(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " received"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 753
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "iccState":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 756
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMS-ISIM] iccState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$200(Ljava/lang/String;)V

    .line 758
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-static {v2, v1, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$700(Lcom/android/internal/telephony/LGImsIsimHandler;ILjava/lang/String;)V

    .line 760
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$800(Lcom/android/internal/telephony/LGImsIsimHandler;I)V

    goto :goto_0

    .line 762
    :cond_0
    const-string v2, "LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$900(Lcom/android/internal/telephony/LGImsIsimHandler;I)V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$1000(Lcom/android/internal/telephony/LGImsIsimHandler;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 765
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$1100(Lcom/android/internal/telephony/LGImsIsimHandler;I)V

    goto :goto_0

    .line 769
    .end local v0    # "iccState":Ljava/lang/String;
    .end local v1    # "phoneId":I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.intent.isim_refresh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 770
    const-string v0, "slot"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 771
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsIsimHandler$SimStateReceiver;->this$0:Lcom/android/internal/telephony/LGImsIsimHandler;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/LGImsIsimHandler;->access$1200(Lcom/android/internal/telephony/LGImsIsimHandler;I)V

    goto :goto_1

    .line 769
    .end local v0    # "slotId":I
    :cond_3
    :goto_0
    nop

    .line 773
    :goto_1
    return-void
.end method
