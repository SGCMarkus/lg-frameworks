.class Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$1;
.super Ljava/lang/Object;
.source "LGImsPhoneProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->requestImsRegControl(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

.field final synthetic val$controlType:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 1680
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$1;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    iput p2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$1;->val$controlType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1683
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$1;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    iget v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$1;->val$controlType:I

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 1684
    return-void
.end method
